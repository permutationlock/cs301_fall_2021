#include<stdio.h>

extern int foo(int);

int main() {
  printf("please enter an index between 0 and 7: \n");

  int x = 0;
  scanf("%d", &x);

  if(x < 0 || x > 7) {
    printf("index out of bounds :(\n");
  } else {
    printf("the int at index %d is: %d\n", x, foo(x));
  }

  return 0;
}
