#include<cstdio>

extern "C" long foo();

int main() {
  printf("assembly returned: %ld\n", foo());
  return 0;
}
