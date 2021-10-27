#include <thread>
#include <chrono>
#include <cmath>

long sqrt_count(long n) {
  std::this_thread::sleep_for(std::chrono::nanoseconds(n));
  return n*3;
}
