#include <stdio.h>

int main(int argc, char *argv[]) {
  printf("%s\n", argv[0]);
  printf("%p\n", argv[argc]);
  return argc;
}
