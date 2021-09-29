#include<stdlib.h>
#include<math.h>
#include<stdio.h>

void print_bits(long n, unsigned int length) {
  for(int i = length - 1; i >= 0; --i) {
    int bit_mask = 1 << i;
    if((bit_mask & n) == 0) {
      printf("0");
    } else {
      printf("1");
    }

    if(i % 4 == 0) {
      printf(" ");
    }
  }
  printf("\n");
}

struct float_breakdown_t {
  unsigned int fraction:23;
  unsigned int exp:8;
  unsigned int sign:1;
};

union float_t {
  float number;
  struct float_breakdown_t breakdown;
};

void print_float_dissection(float f) {
  union float_t fd;
  fd.number = f;
  printf("%.2f has the following breakdown:\n", fd.number);
  printf("sign: ");
  print_bits(fd.breakdown.sign, 1);
  printf("exp: (%d) ", fd.breakdown.exp - 127);
  print_bits(fd.breakdown.exp, 8);
  printf("fraction: ");
  print_bits(fd.breakdown.fraction, 23);
  printf("\n");
}

int main() {
  print_float_dissection(1.0);
  print_float_dissection(8.0);
  print_float_dissection(3.0);
  print_float_dissection(1.0/2.0);
  print_float_dissection(0.1);
  print_float_dissection(0.0);

  print_float_dissection(1.0/0.0);
  print_float_dissection(log(0.0));
  print_float_dissection(sqrt(-1));
  return 0;
}
