fun h(f: (Int) -> Int?, n: Int) {
    println(f(n))
}

fun f(n: Int?): Int {
    return n ?: 0
}

fun hh(f: (Int?) -> Int, n: Int) {
    println(f(n))
}

fun ff(n: Int): Int? {
    return if (n == 0) null else n
}

open class Base

class Derived : Base()

val base = Base()
val derived = Derived()

fun sup(f: (Derived) -> Base, d: Derived) {
    println(f(d))
}

fun sub(b: Base): Derived {
    println(b)
    return derived
}

fun main(args: Array<String>) {
    h(::f, 2)  // 2
    // hh(::ff, 2)  // compile time error: type mismatch
    sup(::sub, derived)
}