#include<stdio.h>

extern long foo(int*, int*, int);

int main() {
  int a[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
  int b[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
  foo(a, b, 8);
  
  for(unsigned int i = 0; i < 8; ++i) {
    printf("%d ", a[i]);
  }

  printf("\n");
  return 0;
}
