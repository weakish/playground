func hello() {
    print("hello")
}

hello()

// Functions can only be declared once.
// func hello() {
//     print("HELLO")
// }

hello()

var hi = { print("hi") }
hi()

// Closures, even with `var`, can only be declared once, too.
// var hi = { print("HI") }
hi()

func defaultParameterBefore(_ x: Int = 1, y: Int ) {
    print(x + y)
}

// error: missing argument for parameter 'y' in call
// defaultParameterBefore(2)

func defaultParameterFirst(_ x: Bool = true, y: Int ) {
    if x {
        print(y)
    } else {
        print(0)
    }
}

// error: cannot convert value of type 'Int' to expected argument type 'Bool'
// defaultParameterFirst(2)

func defaultParameterBeforeClosure(_ x: Bool = true, _ y: () -> Void) {
    if x {
        y()
    } else {
        print(0)
    }
}

// error: missing argument for parameter #2 in call
// defaultParameterBeforeClosure()
// error: missing argument for parameter #2 in call
// defaultParameterBeforeClosure() { print(3) }

func defaultParameterBetween(_ x: Int, _ y: Bool = true, _ z: String) {
    if y {
        print(x)
    } else {
        print(z)
    }
}

// error: missing argument for parameter #3 in cal
// defaultParameterBetween(1, "Nothing.")

func defaultParameterWithTrailingClosure(_ x: Int, y: Bool = true,
                                         _ z: () -> Void) {
    if y {
        print(x)
    } else {
        z()
    }
}

// error: missing argument for parameter #3 in call
// defaultParameterWithTrailingClosure(1, { print(0) })
// Trailing closure does work!
defaultParameterWithTrailingClosure(1) { print(0) }
