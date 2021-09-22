#include<stdio.h>

extern long foo();

long bar() {
  return 189231;
}

int main() {
  printf("assembly returned: %ld\n", foo(bar));
  return 0;
}
