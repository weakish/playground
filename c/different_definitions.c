#include "different_definitions_included.c"

int foo(char c) {
  return c;
}

int foo(char c);

/* int foo(char *s); */

int main(void) {
  foo('c');
}
