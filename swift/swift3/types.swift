var called: [Any] = []
var b: Void
called.append(b)
print(called[0])
called.append(())
print(called[1])


var thrown: [ErrorProtocol] = []

struct ErrorPathWithTrailingSlash : ErrorProtocol {}
struct ErrorSome: ErrorProtocol {}

let e = ErrorPathWithTrailingSlash()
let ee = ErrorSome()
thrown.append(e)
thrown.append(ee)
thrown.append(ErrorSome())

func throwSomeError(_ n: Int) throws -> Int {
    switch n {
        case 0:
            throw ErrorSome()
        default:
            return n
    }
}

let result: Int
do {
    result = try throwSomeError(0)
    print(result)
} catch {
    print("Error!")
    // Atomic null checking and binding.
    // print("result is \(result)")
}

// Invalid.
// print(nil.dynamicType)

let arr: [Int] = []
if let firstInteger = arr.first {
    print(firstInteger)
} else {
    print(arr.count)
}
