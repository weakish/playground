#include <stdio.h>

static int n; /* defaults to 0 */
int m; /* defaults to 0 */

int f(void) {
  int foo = 1;
  foo += 1;

  static bar = 1;
  bar +=1;

  printf("foo %d\n", foo);
  printf("static bar %d\n", bar);
}

int main(int param) {
  auto int au; /* defaults to 0 in gcc/clang, but this is not defined by standard. */
  printf("%d\n", n);
  printf("%d\n", m);
  printf("%d\n", au);
  printf("%d\n", param); /* defaults to 1, but this is not defined by standard. */

  static int s_in_f;
  printf("%d\n", s_in_f);

  puts("call f");
  f(); /* foo: 2, bar: 2 */
  puts("call f again");
  f(); /* foo: 2, bar: 3 */
  return 0;
}
