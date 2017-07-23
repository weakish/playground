#include <stdio.h>

int main(void) {
  char c = 'c';
  register int i = 1;
  char *ptr_to_c = &c;
  // int *ptr_to_i = &i;
  printf("%c\n", *ptr_to_c);
  // printf("%d\n", *ptr_to_i);
}
