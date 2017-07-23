fun main(args: Array<String>) {
    hello(1)
    hello("hello")
    val ln: Array<Int> = arrayOf(1, 2, 3)
    hello(ln)
    val ls: Array<String> = arrayOf("hello", "world")
    hello(ls)
    print(repeat(3)[0])
}

fun hello(n: Int) {
    print(n)
}

fun hello(s: String) {
    print(s)
}

fun hello(ln: Array<Int>) {
    print(ln[0])
}

fun hello(ls: Array<String>) {
    print(ls[0])
}

fun repeat(n: Int) : Array<Int> {
    return arrayOf(n, n)
}

