#include<stdio.h>

void foo(float* a, float* b, unsigned int n) {
  for(int i = 0; i < n; ++i) {
    a[i] += b[i];
  }
}
