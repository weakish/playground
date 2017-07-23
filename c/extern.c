#include <stdio.h>

int j = 0;
int arr[] = {1, 2, 3};

void testFunc2() {
  extern int arr[];
  printf("%d\n", j);
}

int main() {
  testFunc2();
  return 0;
}
