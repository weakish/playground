fun main(args : Array<String>) {
    val a: Int = 10000
    print(a === a) // Prints 'true'
    val boxedA: Int? = a
    val anotherBoxedA: Int? = a
    print(boxedA === anotherBoxedA) // !!!Prints 'false'!!!
    val b: Int = a
    print(b === a) // Prints 'true'
    val referToBoxedA: Int? = a
    print(referToBoxedA === boxedA) // Prints 'false'
}
