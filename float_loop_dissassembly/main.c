#include<stdio.h>
#include<time.h>

extern float* foo();

// Main simply times the function foo
int main() {
  int nruns = 1;
  int msec = 0;
  while(msec < 1000) {
    nruns *= 2;

    clock_t start = clock(), diff;
    for(int i = 0; i < nruns; ++i) {
      float* a = foo();
    }
    diff = clock() - start;

    msec = diff * 1000 / (CLOCKS_PER_SEC);
  }
  printf("Time taken %.2f nanoseconds", ((double)msec * 1000 * 1000) / nruns);

  printf("\n");
  return 0;
}
