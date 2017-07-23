/* @flow */

"use strict"

const out_array = [1, 2, 3];
const some_element = out_array[99];
console.log(some_element);

const str: string = 'hello world!';

let missing = {
    a: 1
}

// Flow will detect this error:
// console.log(missing.b);

interface A {
    foo() : number | string;
}

class AImpl {
    constructor(): A {
        return this
    }
    foo(): number {
        return 1;
    }
    bar(): string {
        return "bar";
    }
}

let a = new AImpl();


function sum(...xs: number[]): number {
    return xs.reduce((a,b) => a + b);
}

let ret = sum(1, 2, 3);
console.log(ret);

(true: boolean);
(Boolean(0): boolean);
(new Boolean(0): Boolean);

if (ret = 3) {
    console.log("hi");
}

function *b_generator() {
    yield 2;
}

let c = function* () {
    yield 3;
}

let d = function *() {
    yield 4;
}

let e = function(para: number, other: number): number { return para + other; };
let f = function (para: number, other: number): number { return para + other; };

let a1 = 1
let a2 = 2
let a3 = a1 + a2
; [1, 2, 3].forEach((n) => console.log(n))
let o: Object = {
    "a": 1,
    "b": 2,
    "c": 3,
}

let xs: [number, string] = [0, ""]
let ys: [number, string, boolean] = [0, "", false]
xs = ys

let one_para = (n: number) => n
let two_para = (m: number, n: number) => m + n
one_para = two_para
let one_para_signature: (n: number) => number = n => n

let x: string = "2"

function accept_number(x: number) {
    return x
}

console.log('call undefined')
let with_hole: number[] = [1, 2, 3]
accept_number(with_hole[100])

class X {
  static bar(): string {
    return 'Hi';
  }
}
var anX: Class<X> = X
anX.bar();

function foo(x: { y: ?string }): string {
  if (x.y) {
    return x.y; // error: Flow doesn't know that
  } else {
    return "default";
  }
}