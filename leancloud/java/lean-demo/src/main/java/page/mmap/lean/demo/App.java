package page.mmap.lean.demo;

import cn.leancloud.AVLogger;
import cn.leancloud.AVObject;
import cn.leancloud.core.AVOSCloud;

import java.util.Arrays;



public class App {
    public static void main(String[] args) {
        AVObject.registerSubclass(Travel.class);
        AVObject.registerSubclass(Form.class);
        AVOSCloud.initialize("jYDw5C3mQvCJ0Us6yOVT8De8-gzGzoHsz", "fwj014f87mhTGAqQxOfNkcU6");
        AVOSCloud.setLogLevel(AVLogger.Level.DEBUG);
//        AVObject fromJava = new AVObject("FromJava");
//        fromJava.put("hello", "Java");
//        fromJava.put("empty", null);
//        fromJava.save();
        Travel travel = new Travel();
        Form form1 = new Form();
        Form form2 = new Form();
        Form form3 = new Form();
        travel.addAll("forms", Arrays.asList(form1, form2, form3));
        travel.save();
    }
}
