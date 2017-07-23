public class HelloJNI {
    static {
        System.loadLibrary("hello");  // libhello.so
    }

    private native void sayHello();

    public static void main(String[] args) {
        HelloJNI test = new HelloJNI();
        test.sayHello();
    }
}
