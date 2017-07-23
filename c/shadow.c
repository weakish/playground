#include <stdio.h>

int o = 1;

int other_function(void);

int main(void) {
  extern int o;
  o += 1;

  printf("o in main: %d\n", o);
  int o_other = other_function();
  printf("o in other function: %d\n", o_other);
  printf("o in main again: %d\n", o);
}

int other_function(void) {
  o = 3;
  return o;
}
