#include<stdio.h>

extern long foo();

int main() {
  float a[8] = { 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0 };
  float b[8] = { 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0 };
  foo(a, b, 8);
  
  for(unsigned int i = 0; i < 8; ++i) {
    printf("%f ", a[i]);
  }

  printf("\n");
  return 0;
}
