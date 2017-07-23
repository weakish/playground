public class HelloSwig {
    public static void main(String[] args) {
        System.loadLibrary("example");
        System.out.println(example.fact(5));
    }
}
