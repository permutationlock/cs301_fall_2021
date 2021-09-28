#include<stdio.h>

void print_data(int* data, unsigned int size) {
  printf("data = { ");
  for(unsigned int i = 0; i < size; ++i) {
    if(i < size - 1) {
      printf("0x%x, ", data[i]);
    } else {
      printf("0x%x", data[i]);
    }
  }
  printf(" }\n");
}

int main() {
  enum { DATA_SIZE = 6 };
  int data[DATA_SIZE] = { 0xf00d, 0xdead, 0xbad1, 0xbad2, 0xdecaf, 0xcafe };

  printf("suppose we have a collection of data (all the same size, in our case: ints):\n");
  print_data(data, DATA_SIZE);

  int backup = 0;
  for(unsigned int i = 0; i < DATA_SIZE; ++i) {
    backup = backup ^ data[i];
  }

  printf("XORing all the values together we can compute the backup:\n");
  printf("backup = 0x%x\n", backup);

  data[3] = 0;

  printf("suppose that exactly one of the values is lost:\n");
  print_data(data, DATA_SIZE);

  int recover = backup;
  for(unsigned int i = 0; i < DATA_SIZE; ++i) {
    recover = recover ^ data[i];
  }
  data[3] = recover;
 
  printf("if we XOR all the remaining data with the backup, we retrieve the value:\n");
  print_data(data, DATA_SIZE);

  return 0;
}
