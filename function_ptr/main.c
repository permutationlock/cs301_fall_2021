#include<stdio.h>

extern long call_func(long(*)(void));

long bar() {
  return 189231;
}

int main() {
  printf("assembly returned: %ld\n", call_func(bar));
  return 0;
}
