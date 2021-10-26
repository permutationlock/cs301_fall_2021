#include<iostream>
#include<chrono>
#include<vector>
#include<algorithm>
#include<functional>

typedef std::function<long(void)> timeable_fn;

long collatz_count(long);
long sqrt_count(long);

void std_thread(long(*)(long), long*, long, long);
void openmp(long(*)(long), long*, long);
void std_execution(long(*)(long), long*, long);
void work_queue(long(*)(long), long*, long, long);

long get_time_ns() {
  auto now = std::chrono::system_clock::now();
  auto now_us = std::chrono::time_point_cast<std::chrono::nanoseconds>(now);
  auto value = now_us.time_since_epoch();
  return value.count();
}

double time_function_onepass(const timeable_fn & fn) {
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

double time_function(const timeable_fn & fn) {
  enum { ntimes=7 };
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

void clear_array() {
  for(std::size_t i = 0; i < size; ++i) {
    collatz_numbers[i] = 0;
  }
}

long check_correctness(long(*f)(long)) {
  long sum = 0;
  for(std::size_t i = 0; i < size; ++i) {
    if(collatz_numbers[i] == f(i+1)) {
      ++sum;
    }
  }
  
  return sum;
}

long time_one_thread_collatz() {
  std_thread(collatz_count, collatz_numbers, size, 1);
  return 0;
}

long time_one_thread(long(*f)(long)) {
  std_thread(f, collatz_numbers, size, 1);
  return 0;
}

long time_four_threads(long(*f)(long)) {
  std_thread(f, collatz_numbers, size, 4);
  return 0;
}

long time_openmp(long(*f)(long)) {
  openmp(f, collatz_numbers, size);
  return 0;
}

long time_std_execution(long(*f)(long)) {
  std_execution(f, collatz_numbers, size);
  return 0;
}

long time_work_queue_ten(long(*f)(long)) {
  work_queue(f, collatz_numbers, size, 10);
  return 0;
}

long time_work_queue_hundred(long(*f)(long)) {
  work_queue(f, collatz_numbers, size, 100);
  return 0;
}

long time_work_queue_thousand(long(*f)(long)) {
  work_queue(f, collatz_numbers, size, 1000);
  return 0;
}

void thread_experiment(
    long(*f)(long),
    const std::vector<std::string>& test_names,
    const std::vector<long(*)(long(*)(long))>& test_functions
  )
{
  for(std::size_t i = 0; i < test_names.size(); ++i) {
    clear_array();
    std::cout << test_names[i] << " -> " << time_function(std::bind(test_functions[i], f)) / 1000000.0 << "ms\n";
    std::cout << "    correct: " << check_correctness(f) << "\n";
  }
}

int main() {
  std::vector<std::string> test_names;
  std::vector<long(*)(long(*)(long))> test_functions;
  
  test_names.push_back("one thread");
  test_functions.push_back(time_one_thread);
  test_names.push_back("four threads");
  test_functions.push_back(time_four_threads);
  test_names.push_back("OpenMP");
  test_functions.push_back(time_openmp);
  test_names.push_back("std::execution");
  test_functions.push_back(time_std_execution);
  test_names.push_back("work_queue 10-at-a-time");
  test_functions.push_back(time_work_queue_ten);
  test_names.push_back("work_queue 100-at-a-time");
  test_functions.push_back(time_work_queue_hundred);
  test_names.push_back("work_queue 1000-at-a-time");
  test_functions.push_back(time_work_queue_thousand);

  std::cout << "Collatz count:\n";
  thread_experiment(collatz_count, test_names, test_functions);
  std::cout << "\n";
  std::cout << "Sqrt count:\n";
  thread_experiment(sqrt_count, test_names, test_functions);
}
