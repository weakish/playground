#include <stdlib.h>

int main() {
  int *my_ptr = malloc(sizeof(*my_ptr) * 20);

  int xx;
  for (xx = 0; xx < 20; xx++) {
    *(my_ptr + xx) = 20 - xx; /* my_ptr[xx] = 20-xx */
  } /* Initialize memory to 20, 19, 18, 17... 2, 1 (as ints) */

    return 0;
}
