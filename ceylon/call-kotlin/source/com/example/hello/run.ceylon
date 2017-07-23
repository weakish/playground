import fromceylon { FromCeylon { findFixPoint } }

shared void run() {
    print("Calling Kotlin:");
    Float fixPoint = findFixPoint(1.0);
    print(fixPoint);
}
