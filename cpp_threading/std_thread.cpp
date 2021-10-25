#include <thread>
#include <vector>

long collatz_count(long);

void do_work(long* collatz_numbers, long start, long stop) {
  for(long i = start; i < stop; ++i) {
    collatz_numbers[i] = collatz_count(i+1);
  }
}

void collatz_std_thread(long* collatz_numbers, long size, long nthreads) {
  std::vector<std::thread> threads;
  long interval = size / nthreads;

  for(std::size_t i = 0; i < nthreads - 1; ++i) {
    threads.push_back(
        std::thread(
          do_work, collatz_numbers, i * interval, (i+1) * interval
        )
      );
  }

  do_work(collatz_numbers, (nthreads - 1) * interval, size);

  for(std::size_t i = 0; i < nthreads - 1; ++i) {
    threads[i].join();
  }
}
