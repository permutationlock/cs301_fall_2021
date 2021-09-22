#include<stdio.h>

extern long count_a(const char*);

int main() {
  const char* s = "aha this is a great string";
  printf("assembly found %ld a's in \"%s\"\n", count_a(s), s);
  return 0;
}
