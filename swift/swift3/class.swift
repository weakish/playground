class C {
    var call: () -> Void;
    init(_ function: () -> Void) {
        call = function
    }
}

func hello() {
    print("hello")
}

let c = C(hello)
c.call()
