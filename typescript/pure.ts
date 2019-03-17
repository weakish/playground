function multiplyTen(x: number): number {
    return x * 10
}

let a = {}
a.valueOf = Math.random

console.log(multiplyTen(a as number))
console.log(multiplyTen(a as number))