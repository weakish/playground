package staticmethod

class AClass {
    companion object {
        @JvmStatic fun aStaticMethod() = println("static")
    }
}

fun main(args: Array<String>) {
    AClass.aStaticMethod()
}
