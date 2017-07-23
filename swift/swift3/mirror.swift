import Foundation

func id(x: Int) -> Int {
    print(#function)
    print(#line)
    return x
}

let idMirror = Mirror(reflecting: id)

print("Type: \(idMirror.subjectType)")

id(x: 1)

let l  = { (x: Int) -> Int in
    print(#function)
    print(#line)
    return x }
let lMirror = Mirror(reflecting: l)
print("Type: \(lMirror.subjectType)")
l(1)
dump(lMirror)
print(l)
