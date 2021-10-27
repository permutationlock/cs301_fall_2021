# C++ multithreading

Here we compare the performance of computing the first N collatz numbers
using several different styles of execution:

 - sequential execution, no concurrency or parallelism;
 - using four std::threads to split the computation among up to four cores if available;
 - using OpenMP to parallelize a for loop (will split up to run on number of cores available);
 - using std::execution::par to parallelize the std::for\_each algorithm (will split up to run on number of cores available);
 - using a shared std::queue of work, guarded by a std::mutex, with worker threads pulling jobs from the queue.
