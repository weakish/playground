import Foundation

let hi = "Hello, World!"
print("\(hi)")
print(random())

let fileManager = NSFileManager.defaultManager()
print(fileManager.currentDirectoryPath)
for f in (try! fileManager.contentsOfDirectoryAtPath(fileManager.currentDirectoryPath))
    .filter({$0.hasPrefix(".")}) {
    print(f)
}

let anotherFileManager = NSFileManager.defaultManager()

let aString = "Some search text"
let replaced = String(aString.characters.map({
    $0 == " " ? "+" : $0
}))
print(replaced)
print("'" + hi + "'")
print(NSHomeDirectory())

