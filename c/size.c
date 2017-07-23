#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main() {
  printf("char %zu\n", sizeof(char));
  printf("int %zu\n", sizeof(int));
  printf("short %zu\n", sizeof(short));
  printf("long %zu\n", sizeof(long));
  printf("long long%zu\n", sizeof(long long));
  printf("float %zu\n", sizeof(float));
  printf("double %zu\n", sizeof(double));

  char c;
  int i;
  short s;
  long l;
  long long ll;
  float f;
  double d;

  printf("char %zu\n", sizeof c);
  printf("int %zu\n", sizeof i );
  printf("short %zu\n", sizeof s);
  printf("long %zu\n", sizeof l);
  printf("long long%zu\n", sizeof ll);
  printf("float %zu\n", sizeof f);
  printf("double %zu\n", sizeof d);
}
