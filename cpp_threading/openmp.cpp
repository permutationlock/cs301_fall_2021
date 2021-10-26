void openmp(long(*f)(long), long* collatz_numbers, long size) {
  #pragma omp parallel for
  for(long i = 0; i < size; ++i) {
    collatz_numbers[i] = f(i+1);
  }
}
