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

int main() {
  char a = 0b1010;
  char b = 0b0011;

  printf("basic bitwise operations: \n");
  printf("a = ");
  print_bits(a, 8);
  printf("b = ");
  print_bits(b, 8);

  printf("a << 1 = ");
  print_bits(a << 1, 8);

  printf("a >> 1 = ");
  print_bits(a >> 1, 8);
  
  printf("a & b = ");
  print_bits(a & b, 8);

  printf("a | b = ");
  print_bits(a | b, 8);

  printf("a ^ b = ");
  print_bits(a ^ b, 8);

  printf("~a = ");
  print_bits(~a, 8);

  return 0;
}
