#include <thread>
#include <vector>

static void do_work(long(*f)(long), long* collatz_numbers, long start, long stop) {
  for(long i = start; i < stop; ++i) {
    collatz_numbers[i] = f(i+1);
  }
}

void std_thread(long(*f)(long), long* collatz_numbers, long size, long nthreads) {
  std::vector<std::thread> threads;
  long interval = size / nthreads;

  for(std::size_t i = 0; i < nthreads - 1; ++i) {
    threads.push_back(
        std::thread(
          do_work, f, collatz_numbers, i * interval, (i+1) * interval
        )
      );
  }

  do_work(f, collatz_numbers, (nthreads - 1) * interval, size);

  for(std::size_t i = 0; i < nthreads - 1; ++i) {
    threads[i].join();
  }
}
