#include<math.h>

enum { n = 1024 };
float y[n] = { 0.0, 0.2, 0.4, 0.7, 0.8, 0.9, 1.1, 1.2 };
float z[n] = { 4.3, 3.7, 2.8, 2.0, 0.8, 0.7, 0.4, 0.2 };
float height[n];

float* foo(void) {
  float theta = 30 * M_PI / 180.0;
  float s = sin(theta), c = cos(theta);

  for(int i = 0; i < n; ++i) {
    height[i] = 0.7 - s*z[i] - c*y[i];
  }

  return height;
}
