#include <algorithm>
#include <execution>

long collatz_count(long);

void collatz_std_execution(long* collatz_numbers, long size) {
  std::for_each(
      std::execution::par,
      collatz_numbers,
      collatz_numbers + size,
      [=](long i) {
        collatz_numbers[i] = collatz_count(i+1);
      }
    );
}
