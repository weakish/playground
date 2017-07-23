@file:JvmName("FromCeylon")
package fromceylon

tailrec fun findFixPoint(x: Double = 1.0): Double {
    if (x == Math.cos(x)) {
        return x
    } else {
        return findFixPoint(Math.cos(x))
    }
}
