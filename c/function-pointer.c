#include <stdio.h>

int main() {
int add_two_ints(int x1, int x2)
{
  return x1 + x2;
}


/* This won't work. C does not support first class functions.

int f(int add_two_ints(int x1, int x2)) {
  add_two_ints(1, 2);
}


And this:

int return_a_function() {
  return add_two_ints;
}

*/



int (*with_two_ints)(int, int);

int one_and_one(int (*with_two_ints)(int, int)) {
  return with_two_ints(1, 1);
}



int multiply_two_ints(int x1, int x2)
{
  return x1 * x2;
}


int result = one_and_one(multiply_two_ints);
printf("%d\n", result);
}



