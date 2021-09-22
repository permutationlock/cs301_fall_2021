#include<stdlib.h>
#include<stdio.h>

struct coord {
  int x;
  int y;
};

extern struct coord* construct_coord(int, int);

int main() {
  struct coord* p = construct_coord(7, 3);
  printf("the x value is: %d\nthe y value is: %d\n", p->x, p->y);
  free(p);
  return 0;
}
