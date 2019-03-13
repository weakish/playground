package page.mmap.lean.demo;

import cn.leancloud.AVObject;
import cn.leancloud.annotation.AVClassName;

@AVClassName("Form")
public class Form extends AVObject {
    public Form() {
        super();
    }

    public void putTypeName(String value) {
        this.put("typeName", value);
    }

    public void putContent(String value) {
        this.put("content", value);
    }

    public void putUserId(String value) {
        this.put("user", value);
    }

    public void putFormTypeId(String value) {
        this.put("type", value);
    }

}
