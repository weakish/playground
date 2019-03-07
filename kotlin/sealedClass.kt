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

sealed class Exp {
    class Const(val number: Double) : Exp()
    class Sum(val e1: Exp, val e2: Exp) : Exp()
    object NotANumber : Exp()

    fun eval(): Double = when(this) {
      is Const -> this.number
      is Sum -> this.e1.eval() + this.e2.eval()
      NotANumber -> Double.NaN
    }
}

var tau = Exp.Const(3.14 / 2)
var pi = Exp.Sum(tau, tau)


fun main(args : Array<String>) {
  println("Hello, Cealed Class!")
  println(eval(c))
  println(eval(s))
  println(eval(ss))
  println(eval(o))
  println(tau.eval())
  println(tau.eval())
}
