package page.mmap.lean.demo;

import cn.leancloud.AVObject;
import cn.leancloud.AVQuery;
import cn.leancloud.core.AVOSCloud;


public class App {
    public static void main(String[] args) {
        AVObject.registerSubclass(Travel.class);
        AVObject.registerSubclass(Form.class);
        AVOSCloud.initialize("3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz", "P8cKdEvRxusfuR27MuhvFOzr");

        AVQuery<AVObject> avQuery = new AVQuery<>("Post");
        AVObject avObject = avQuery.get("5c88d968303f390037d1152e");
        System.out.println(avObject.getObjectId() == "");
    }
}
