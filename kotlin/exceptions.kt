class MyException : Throwable() {}

fun mythrow() : Int {
    return 0
    throw MyException()
}

fun main(Args : Array<String>) {
    println(mythrow())
}
