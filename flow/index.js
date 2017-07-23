/* @flow */

interface A {
  foo(): number;
}

class AImpl {
  constructor(): A {
    return this;
  }
  foo(): number {
    return 1;
  }
  bar(): string {
    return "bar";
  }
}
