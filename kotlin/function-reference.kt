fun h(f: () -> Unit) {
	println("h")
	f()
}

fun f() {
	println("f")
}


fun main(args: Array<String>) {
	h(::f)
}


