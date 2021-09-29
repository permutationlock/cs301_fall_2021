#include<stdlib.h>
#include<stddef.h>
#include<stdio.h>


// breaking down an html color code with bitshifts and masks

void bitshift_mask_color(unsigned int color) {
  unsigned int red = (color & (0xFF << 16)) >> 16;
  unsigned int green = (color & (0xFF << 8)) >> 8;
  unsigned int blue = color & 0xFF;
  printf("the red, green, blue breakdown of the color is 0x%x, 0x%x, 0x%x\n", red, green, blue);
}


// using a struct with bitfields to store an html color code

struct color_breakdown_t {
  unsigned int blue:8;
  unsigned int green:8;
  unsigned int red:8;
};

void bitfield_struct_color(unsigned int color) {
  struct color_breakdown_t c;
  *((unsigned int*)&c) = color;
  printf("the red, green, blue breakdown of the color is 0x%x, 0x%x, 0x%x\n", c.red, c.green, c.blue);
}


// using a c union to show that both representations are the same

union color_t {
  int code;
  struct color_breakdown_t rgb;
};

void union_color(unsigned int color) {
  union color_t c;
  c.code = color;
  printf("the red, green, blue breakdown of the color is 0x%x, 0x%x, 0x%x\n", c.rgb.red, c.rgb.green, c.rgb.blue);
}

int main() {
  unsigned int html_color = 0x80c43a;
  printf("reading an html color with bitshifts and bit masks:\n");
  bitshift_mask_color(html_color);
  printf("\nreading an html color with struct bitfields:\n");
  bitfield_struct_color(html_color);
  printf("\nusing a union to make the bitfield version nicer to read:\n");
  union_color(html_color);
  return 0;
}
