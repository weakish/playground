struct ErrorNegative : ErrorProtocol {}

func may_return_nil(n: Int) throws -> Int? {
    if (n > 0) {
        return n
    } else if (n == 0) {
        return nil
    } else {
        throw ErrorNegative()
    }
}

func main(n: Int) -> Int?? {
    return try? may_return_nil(n: n)
}

print(main(n: 1))
print(main(n: 0))
print(main(n: -1))
