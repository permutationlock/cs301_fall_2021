#include<stdio.h>

extern float ret_float();
extern float add_floats(float, float);
extern int compare_floats(float, float);

int main() {
  printf("here we return a float: %.4f\n", ret_float());
  float f1 = 1.234, f2 = 8.674;
  printf("here we add %.4f + %.4f: %.4f\n", f1, f2, add_floats(f1, f2));
  printf("here we compare %.4f < %.4f: %d\n", f1, f2, compare_floats(f1, f2));
  return 0;
}
