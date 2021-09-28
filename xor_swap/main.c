#include<stdio.h>

int main() {
  int a = 0xdead;
  int b = 0xf00d;

  printf("xor in-place swap: \n");
  printf("a = %x, b = %x\n", a, b);

  a = a ^ b;

  printf("first we assign a := a ^ b\n");
  printf("a = %x, b = %x\n", a, b);

  b = a ^ b;

  printf("next we assign b := a ^ b\n");
  printf("a = %x, b = %x\n", a, b);

  a = a ^ b;

  printf("finally we assign a := a ^ b\n");
  printf("a = %x, b = %x\n", a, b);

  printf("and the values have swapped!\n");

  return 0;
}
