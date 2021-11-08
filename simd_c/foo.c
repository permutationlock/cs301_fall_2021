#include<math.h>

void foo(double* a, double* b, unsigned int n) {
  for(int i = 0; i < n; ++i) {
    a[i] += exp(b[i]);
  }
}
