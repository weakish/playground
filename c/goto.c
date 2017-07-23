#include <stdio.h>

void goto_in_function(int n) {
  if (n < 0) {
    goto error;
  }

  printf("%d\n", n % 2);
  return;

  error:
    printf("Must be non-negative.\n");
}

int main(void) {
  goto_in_function(4);
  goto_in_function(-4);
  return 0;
}
