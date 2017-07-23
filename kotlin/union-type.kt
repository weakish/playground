sealed class Alphanum {
  class Alphabet(val x: String) : Alphanum()
  class Number(val x: Int) : Alphanum()
}

fun bar(x: Int): Alphanum {
  if (x > 1) {
    val two = Alphanum.Number(2)
    return two
  } else {
    val bad = Alphanum.Alphabet("bad")
    return bad
  }
}

fun baz(x: Int): Any {
  val res = bar(x) as Alphanum.Number
  return res.x
  /*
  when (res) {
    is Alphanum.Alphabet -> return res.x
    is Alphanum.Number -> return res.x
  }
  */
}

fun main(args: Array<String>) {
  println(baz(3))
//  println(baz(0))
}
