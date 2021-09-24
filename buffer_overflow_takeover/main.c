#include<stdio.h>
#include<stdlib.h>

extern long count_a(const char*);

// foo is a harmless function that sums up an array with some user input
long foo() {
  long arr[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
  long x = 0, y = 0;
  printf("I have an array: [1, 2, 3, 4, 5, 6, 7, 8]\n");
  printf("enter which number to replace:\n");
  scanf("%ld", &x);
  printf("enter what to replace it with:\n");
  scanf("%ld", &y);
  arr[x] = y;
  long acc = 0;
  printf("x: %ld, y: %ld, acc: %ld\n", x, y, acc);
  //for(int i = 0; i < 8; ++i) {
  // acc += arr[i];
  //}
  //return acc;
  return 0;
}

// something we definitely don't want to execute
void evilfunc() {
  puts("ahahahah");
  exit(1);
  return;
}

int main() {
  long ptr = (long) evilfunc;
  printf("the address of evilfunc is: %ld\n", ptr);
  printf("the stack in foo looks like:\n\tarr:\t1\n\t\t2\n\t\t3\n\t\t4\n\t\t5\n\t\t6\n\t\t7\n\t\t8\n\t\t?\n\t\t?\n\t\t?\n\treturn:\tmain\n");
  printf("if you access the 11th element of the array it writes to the return address!\n");
  printf("try writing the address of evilfunc and see what happens\n");
  foo();
  return 0;
}
