func f(_ x: Int, _ cb: Int -> Void) {
    let y = x + 1
    cb(y)
}

f(1) {
    (_ z) in print(z)
}
