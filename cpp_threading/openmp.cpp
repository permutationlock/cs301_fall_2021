void openmp(long(*f)(long), long* results, long size) {
  #pragma omp parallel for
  for(long i = 0; i < size; ++i) {
    results[i] = f(i+1);
  }
}
