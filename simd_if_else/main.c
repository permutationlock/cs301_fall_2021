#include<stdio.h>

extern float* foo();

int main() {
  float* f = foo();
  for(unsigned int i = 0; i < 4; ++i) {
    printf("%f ", *(f+i));
  }
  printf("\n");
  return 0;
}
