long collatz_count(long);

void collatz_openmp(long* collatz_numbers, long size) {
  #pragma omp parallel for
  for(long i = 0; i < size; ++i) {
    collatz_numbers[i] = collatz_count(i+1);
  }
}
