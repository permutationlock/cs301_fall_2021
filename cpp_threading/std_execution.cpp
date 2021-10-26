#include <algorithm>
#include <execution>
#include <cstdio>

void std_execution(long(*f)(long), long* collatz_numbers, long size) {
  for(long i = 0; i < size; ++i) {
    collatz_numbers[i] = i;
  }
  std::for_each(
      std::execution::par,
      &collatz_numbers[0],
      &collatz_numbers[size],
      [=](long i) {
        collatz_numbers[i] = f(i+1);
      }
    );
}
