#include<stdio.h>

typedef unsigned long (*compute_t)(unsigned long);

unsigned long collatz_even(unsigned long n) {
  return n / 2;
}

unsigned long collatz_odd(unsigned long n) {
  return 3 * n + 1;
}

int main() {
  compute_t collatz_functions[2];
  collatz_functions[0] = collatz_even;
  collatz_functions[1] = collatz_odd;

  unsigned long x = 0;
  printf("enter a positive integer: \n");
  int scanned = scanf("%lu", &x);

  if(scanned != 1) {
    exit(1);
  }

  unsigned long n = x;
  unsigned long count = 0;
  while(n != 1) {
    n = collatz_functions[n%2](n);
    ++count;
  }
  printf("it took %lu applications of collatz to reach 1 from %ld\n", count, x);

  return 0;
}
