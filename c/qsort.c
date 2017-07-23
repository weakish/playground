#include <stdio.h>


/* swap: interchange v[i] and v[j] */
void swap(int v[], int i, int j)
{
  int temp;
  temp = v[i];
  v[i] = v[j];
  v[j] = temp;
}

/* qsort: sort v[left]...v[right] into increasing order */
void qsort(int v[], int left, int right) {
  int i, last;
  void swap(int v[], int i, int j);
  if (left >= right) /* do nothing if array contains */
    return; /* fewer than two elements */
  swap(v, left, (left + right)/2); /* move partition elem */
  last = left; /* to v[0] */
  for (i = left + 1; i <= right; i++) /* partition */
    if (v[i] < v[left])
      swap(v, ++last, i);
  swap(v, left, last); /* restore partition elem */
  qsort(v, left, last-1);
  qsort(v, last+1, right);
}

/* First run:
{4, 8, 3, 7, 5, 11, 34, 2}
{7, 8, 3, 4, 5, 11, 34, 2}
{7, 3, 8, 4, 5, 11, 34, 2}
{7, 3, 4, 8, 5, 11, 34, 2}
{7, 3, 4, 5, 8, 11, 34, 2}
{7, 3, 4, 5, 2, 11, 34, 8}
{2, 3, 4, 5, 7, 11, 34, 8}
*/

int main(void) {
  int v[] = {4, 8, 3, 7, 5, 11, 34, 2};
  int sv[8];
  qsort(v, 0, 7);
  int i;
  for (i = 0; i <= 7; i++) {
    printf("%d, ", v[i]);
  }
}
