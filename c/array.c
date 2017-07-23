#include <stdio.h>


int main() {

  static int arr[20];
  printf("%d\n", arr[0]);
  printf("%d\n", arr[1]);
  printf("%d\n", arr[2]);
  printf("%d\n", arr[19]);
  printf("%d\n", arr[20]);
  printf("%d\n", arr[21]);
  printf("%d\n", arr[30]);

  int arr_a[] = {1, 2, 3};
  int arr_b[] = {4, 5, 6};
  int *ptr_arr_a = arr_a;
  int *ptr_arr_b = arr_b;
  printf("%d\n", *ptr_arr_a - *ptr_arr_b);
}
