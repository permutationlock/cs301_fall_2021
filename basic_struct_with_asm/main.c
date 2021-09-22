#include<stdio.h>

struct coord {
  int x;
  int y;
};

extern int get_x(struct coord*);
extern int get_y(struct coord*);

int main() {
  struct coord s;
  s.x = 131;
  s.y = -3;
  printf("the x value is: %d\nthe y value is: %d\n", get_x(&s), get_y(&s));
  return 0;
}
