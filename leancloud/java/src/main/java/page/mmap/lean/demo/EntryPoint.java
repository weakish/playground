package page.mmap.lean.demo

import cn.leancloud.AVLogger;
import cn.leancloud.AVObject;
import cn.leancloud.core.AVOSCloud;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;


public class EntryPoint {
    public static void main(String[] args) {
        AVOSCloud.setLogLevel(AVLogger.Level.DEBUG);
        AVOSCloud.initialize("jYDw5C3mQvCJ0Us6yOVT8De8-gzGzoHsz", "fwj014f87mhTGAqQxOfNkcU6");
//        AVObject fromJava = new AVObject("FromJava");
//        fromJava.put("hello", "Java");
//        fromJava.put("empty", null);
//        fromJava.save();
//        AVQuery<AVObject> avQuery = new AVQuery<>("TestObject");
//        avQuery.getInBackground("5c45436a7565716f24d459ae").subscribe(new Observer<AVObject>() {
//            @Override
//            public void onSubscribe(Disposable disposable) { }
//
//            @Override
//            public void onNext(AVObject avObject) {
//                String hello = avObject.getString("hello");
//                System.out.printf("hello: %s\n", hello);
//                String nonExist = avObject.getString("nonExist");
//                System.out.printf("nonExist: %s\n", nonExist);
//                String empty = avObject.getString("empty");
//                System.out.printf("empty: %s", empty);
//            }
//
//            @Override
//            public void onError(Throwable throwable) {
//
//            }
//
//            @Override
//            public void onComplete() {
//
//            }
//        });

        AVObject fromJava = AVObject.createWithoutData("FromJava", "5c4aaf5844d904004d6359a0");
        fromJava.fetchInBackground().subscribe(new Observer<AVObject>() {
            @Override
            public void onSubscribe(Disposable disposable) {

            }

            @Override
            public void onNext(AVObject avObject) {
                String hello = avObject.getString("hello");
                System.out.printf("hello: %s", hello);
                avObject.put("hello", null);
                avObject.save();
            }

            @Override
            public void onError(Throwable throwable) {

            }

            @Override
            public void onComplete() {

            }
        });
    }
}
