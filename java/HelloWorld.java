import java.util.function.Function;
import java.util.function.BiFunction;
import java.util.function.Supplier;
import java.lang.Runnable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.Map;

public class HelloWorld {
  public static void main(String[] args) {
    System.out.println(
      "Integer: " + 10 +
      " Double: " + 3.14 +
      " Boolean: " + true);

    int[] int_array = {1, 2};
    System.out.println(int_array[0]);

    int i = 1;
    do {
      i = 2;
    } while (i < 0);
    System.out.println(i);

    Function<String, Integer> f = s -> Integer.parseInt(s);
    System.out.println(f.apply("23"));

    BiFunction<Integer, Integer, Integer> addition = (x, y) -> x + y;
    System.out.println(addition.apply(1, 1));

    Supplier<Double> pi = () -> 3.14;
    System.out.println(pi.get());

    Runnable r = () -> System.out.println("Hello!");
    r.run();


    System.out.println(fib.apply(10));

  }

  public static Function<Integer, Integer> fib = (n) -> {
    Map<Integer, Integer> cache = new ConcurrentHashMap<>();
    if (n == 0 || n == 1) return n;
    return cache.computeIfAbsent(n, (key) -> HelloWorld.fib.apply(n - 2) + HelloWorld.fib.apply(n - 1));
  };
}



