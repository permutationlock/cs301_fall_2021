#include <algorithm>
#include <execution>

void collatz_std_execution(long* collatz_numbers, long size) {
  std::for_each(
      std::execution::par,
      collatz_numbers,
      collatz_numbers + size,
      [=](long i) {
        collatz_numbers[i] = 10;
      }
    );
}

int main() {
  long arr[10];
  collatz_std_execution(arr, 10);
}
