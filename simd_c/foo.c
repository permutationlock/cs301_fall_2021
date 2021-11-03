#include<math.h>

void foo(float* a, float* b, unsigned int n) {
  for(int i = 0; i < n; ++i) {
    a[i] = pow(b[i], 2.0) + i;
  }
}
