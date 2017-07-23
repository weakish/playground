#include <stdio.h>
#include <stdarg.h>

typedef enum {Int, Double} NumberType;

typedef struct {
  NumberType type;
  union {
    int i;
    double d;
  };
} Number;

Number addNumber(Number a, Number b) {
  Number ret;
  Number *numbers[] = {&a, &b};
  if (a.type == Int && b.type == Int ){
    ret.type = Int;
    ret.i = a.i + b.i;
  }
  else {
    ret.type = Double;
    char i;
    for (i = 0; i < 2 && numbers[i]->type == Int; i++) {
      numbers[0]->d = (double) numbers[i]->i;
    }
    ret.d = a.d + b.d;
  }
  return ret;
}


Number newNumber(NumberType type, ...) {
  va_list ap;
  va_start(ap, type);
  Number num;
  num.type = type;
  switch (type) {
    case Int: {
      printf("%d\n", va_arg(ap, int));

      break;
    }
    case Double: {
      num.d = va_arg(ap, double);
      break;
    }
    default: { /* error */
      num.type = -1;
    }
  }
  va_end(ap);
  return num;
}

int main(void) {
  Number a = newNumber(Int);
  printf("%d\n", a.i);
  // Number b = newNumber(Double, 3.0);
  // Number ret = addNumber(a, b);
  // switch (ret.type) {
  //   case Int: {
  //     printf("%d\n", ret.i);
  //   }
  //   case Double: {
  //     printf("%f\n", ret.d);
  //   }
  // }
  return 0;
}
