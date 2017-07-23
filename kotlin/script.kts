println(3 + 4)

class A {
  class B
}

var ab = A.B()
println(ab)

sealed class Expr {
    class Const(val number: Double) : Expr()
    class Sum(val e1: Expr, val e2: Expr) : Expr()
    object NotANumber : Expr()
}

fun eval(expr: Expr): Double = when(expr) {
    is Expr.Const -> expr.number
    is Expr.Sum -> eval(expr.e1) + eval(expr.e2)
    Expr.NotANumber -> Double.NaN
    // the `else` clause is not required because we've covered all the cases
}

var c = Expr.Const(2.0)
var s = Expr.Sum(c, c)
var ss = Expr.Sum(c, s)
var o = Expr.NotANumber

println(eval(c))
println(eval(s))
println(eval(ss))
println(eval(o))
