package cn.leancloud.demo.todo;

import cn.leancloud.EngineFunction;
import cn.leancloud.EngineFunctionParam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Cloud {

  @EngineFunction("hello")
  public static String hello(@EngineFunctionParam("name") String name) {
    if (name == null) {
      return "What is your name?";
    }
    return String.format("Hello %s!", name);
  }

  @EngineFunction("mysql")
  public static String mysql() {
    String host = System.getenv("MYSQL_HOST_MYRDB");
    String port = System.getenv("MYSQL_PORT_MYRDB");
    String user = System.getenv("MYSQL_ADMIN_USER_MYRDB");
    String password = System.getenv("MYSQL_ADMIN_PASSWORD_MYRDB");
    try {
      Class.forName("com.mysql.jdbc.Driver").newInstance();
    } catch (Exception ex) {
      return ex.getMessage();
    }
    try {
      Connection connection = DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/test?" +
      "user=" + user + "&password=" + password);
      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery("SELECT 1 + 1 AS solution");
      resultSet.first();
      return String.format("Good %d" ,resultSet.getInt("solution"));
    } catch (SQLException ex) {
      return ex.getMessage();
    }
  }
}
