package cn.leancloud.demo.todo;

import cn.leancloud.EngineFunction;
import cn.leancloud.EngineFunctionParam;

import java.util.concurrent.TimeUnit;

public class Cloud {

  @EngineFunction("hello")
  public static String hello(@EngineFunctionParam("name") String name) throws InterruptedException {
    if (name == null) {
      TimeUnit.MINUTES.sleep(1);
      return "What is your name?";
    }
    return String.format("Hello %s!", name);
  }

}
