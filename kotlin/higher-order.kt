package hello

fun foo(m: String, bar: (String) -> Unit) {
    bar(m)
}

// my function to pass into the other
fun buz(m: String) {
    println("another message: $m")
}

// someone passing buz into foo
fun something() {
    foo("hi", ::buz)
}

tailrec fun findFixPoint(x: Double = 1.0): Double {
    if (x == Math.cos(x)) {
        return x
    } else {
        return findFixPoint(Math.cos(x))
    }
}

fun gf(x: Double, f: (Double) -> Double): Double {
    return f(x)
}

fun hg(x: Int, f: (Int) -> Unit) {
    f(x)
}

fun main(args: Array<String>) {
    something()
    print(gf(2.0, ::findFixPoint))
    val findFixPoint=2.0
    print(findFixPoint)
    print(findFixPoint(2.0))
    // print(gf(2.0, ::findFixPoint))
    hg(2) { print(it) }
}
