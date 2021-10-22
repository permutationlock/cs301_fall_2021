
void foo(int* a, int* b, unsigned int n) {
  for(int i = 0; i < n; ++i) {
    a[i] += b[i];
  }
}
