#include <algorithm>
#include <execution>
#include <cstdio>

void std_execution(long(*f)(long), long* results, long size) {
  for(long i = 0; i < size; ++i) {
    results[i] = i;
  }
  std::for_each(
      std::execution::par,
      &results[0],
      &results[size],
      [=](long i) {
        results[i] = f(i+1);
      }
    );
}
