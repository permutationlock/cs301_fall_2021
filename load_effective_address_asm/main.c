#include<stdio.h>

extern long* get_address_of_power(long);

int main() {
  long index = 3;
  long* address = get_address_of_power(index);
  long value = *address;
  printf("the address of element %ld is %p, its value is %ld\n", index, address, value);
  return 0;
}
