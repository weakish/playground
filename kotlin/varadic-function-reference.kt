fun isOdd(x: Int): Boolean {
    return x % 2 != 0
}
fun variableArguments(vararg numbers: Int): () -> Unit {
    return fun(): Unit { println(numbers.size) } // anonymous function
}
class A(val x: Int) {}
fun varadicComplicated(vararg xs: A): Unit {
    print(xs.size)
}
fun main(args: Array<String>) {
    val predicate: (Int) -> Boolean = ::isOdd
    val varadicFunction: (IntArray) -> () -> Unit = ::variableArguments
    val varadicComplicatedFunction: (Array<A>) -> Unit = ::varadicComplicated
}
