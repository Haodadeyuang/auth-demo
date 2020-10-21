package com.togogo.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 * @description:数据库连接工具类
 * @author: Haodadeyu
 * @time: 2020/10/15 11:25
 */
public class DbconUtil {

    private static Connection con;
    private static String driverClass;
    private static String url;
    private static String user;
    private static String password;

    private static void readConfig() throws Exception {
        InputStream in = DbconUtil.class.getClassLoader().getResourceAsStream("db" +
                ".properties");
        Properties pro = new Properties();
        pro.load(in);
        driverClass = pro.getProperty("JDBC_DRIVERCLASS");
        url = pro.getProperty("JDBC_URL");
        user = pro.getProperty("JDBC_USER");
        password = pro.getProperty("JDBC_PASSWORD");
    }

    public static Connection getConnection() {
        try {
            readConfig();
            Class.forName(driverClass);
            con = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

}
