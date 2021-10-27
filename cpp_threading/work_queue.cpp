#include <thread>
#include <vector>
#include <utility>
#include <queue>
#include <mutex>

static void do_work(
    long(*f)(long),
    long* results,
    std::queue<std::pair<long,long> >* work,
    std::mutex* lock
  )
{
  while(1) {
    std::pair<long,long> interval;
    {
      std::lock_guard<std::mutex> guard(*lock);
      if(!work->empty()) {
        interval = work->front();
        work->pop();
      } else {
        return;
      }
    }

    for(long x = interval.first; x < interval.second; ++x) {
      results[x] = f(x+1);
    }
  }
}

void work_queue(
    long(*f)(long),
    long* results,
    long size,
    long interval
  )
{
  const std::size_t nthreads = 4;
  std::vector<std::thread> threads;
  std::queue<std::pair<long,long> > work;
  std::mutex lock;

  for(long i = 0; i < size / interval; ++i) {
    work.emplace(i*interval, (i+1)*interval);
  }

  for(std::size_t i = 0; i < nthreads - 1; ++i) {
    threads.push_back(
        std::thread(
          do_work, f, results, &work, &lock
        )
      );
  }

  do_work(f, results, &work, &lock);

  for(std::size_t i = 0; i < nthreads - 1; ++i) {
    threads[i].join();
  }
}
