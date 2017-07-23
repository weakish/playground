#include <assert.h>

typedef union{
  int i;
  double d;
  char str[20];
} data;

typedef enum { Square, Rectangle, Circle } ShapeKind;

typedef struct {
    ShapeKind kind;
    union {
        struct { int side; };           /* Square */
        struct { int length, height; }; /* Rectangle */
        struct { int radius; };         /* Circle */
    };
} Shape;

void setSquareSide(Shape *s, int side) {
    s->kind = Square;
    s->side = side;
}

Shape make_square(int side) {
  Shape *s;
  setSquareSide(s, side);
  return *s;
}


int area_of_shape(Shape *s) {
  switch (s->kind) {
    case Square: {
      int side = s->side;
      return side * side;
    }
    case Rectangle: {
      return s->length * s->height;
    }
    case Circle: {
      int r = s->radius;
      return 3.14 * r * r;
    }
    default: {
      return -1;
    }
  }
}

int main(void) {
  Shape *a_square;
  setSquareSide(a_square, 2);
  Shape another_square = make_square(4);
  return area_of_shape(a_square);
}
