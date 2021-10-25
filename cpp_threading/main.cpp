#include<iostream>
#include<chrono>
#include<vector>
#include<algorithm>

typedef long (*timeable_fn)(void);

void collatz_std_thread(long*, long, long);
void collatz_openmp(long*, long);

long get_time_ns() {
  auto now = std::chrono::system_clock::now();
  auto now_us = std::chrono::time_point_cast<std::chrono::nanoseconds>(now);
  auto value = now_us.time_since_epoch();
  return value.count();
}

double time_function_onepass(timeable_fn fn) {
  unsigned int i,count=1;
  double timePer=0;
  for (count=1;count!=0;count*=2) {
    double start, end, elapsed;
    start=get_time_ns();
    for (i=0;i<count;i++) fn();
    end=get_time_ns();
    elapsed=end-start;
    timePer=elapsed/count;
    if (elapsed>1000000) /* Took more than 1 millisecond */
      return timePer;
  }

  return timePer;
}

double time_function(timeable_fn fn) {
  enum { ntimes=3 };
  double times[ntimes];
  for (int t=0;t<ntimes;t++)
    times[t]=time_function_onepass(fn);
  std::sort(&times[0],&times[ntimes]);
  return times[ntimes/2]; // == median of the runs
}

int empty_func() {
  return 0;
}

const long size = 1000000;
long collatz_numbers[1000000];

long time_collatz_one_thread() {
  collatz_std_thread(collatz_numbers, size, 1);
  return 0;
}

long time_collatz_four_threads() {
  collatz_std_thread(collatz_numbers, size, 4);
  return 0;
}

long time_collatz_openmp() {
  collatz_openmp(collatz_numbers, size);
  return 0;
}

int main() {
  std::cout << time_function(time_collatz_one_thread) << "\n";
  std::cout << time_function(time_collatz_four_threads) << "\n";
  std::cout << time_function(time_collatz_openmp) << "\n";
}
