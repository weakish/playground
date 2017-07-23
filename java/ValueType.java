// http://www.yinwang.org/blog-cn/2016/06/08/java-value-type

public class ValueType {
    public static void main(String[] args) {
        int x = 1;
        int y = x;
        x = 2;
        System.out.println("y: " + y);  // y = 1

        Integer ox = 1;
        Integer oy = ox;
        ox = 2;
        System.out.println("oy: " + oy);  // oy = 1

        // > 思考题
        // > 有人指出，Java 的引用类型可以是 null， 而原始类型不行，
        // > 所以引用类型和值类型还是有区别的。
        // > 但是其实这并不能否认本文指出的观点，
        // > 你可以想想这是为什么吗？
        //
        // Answer: `Integer` in Java is actually `Integer|Null`.
        Integer onull = null;
        System.out.println("onull: " + onull);
    }
}
