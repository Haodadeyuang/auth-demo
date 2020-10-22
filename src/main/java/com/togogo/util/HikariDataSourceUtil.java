package com.togogo.util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/22 15:35
 */
public class HikariDataSourceUtil {
    /**
     * 单例模式实现连接池（饿汉式）
     */
    private static DataSource ds = new HikariDataSource(HikariDataSourceUtil.setConfig());

    private HikariDataSourceUtil() {
    }

    public static Connection getConnection()
    {
        try {
            return ds.getConnection();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }

    private static HikariConfig setConfig() {
        InputStream in = HikariDataSourceUtil.class.getClassLoader().getResourceAsStream("db" +
                ".properties");
        Properties pro = new Properties();
        try {
            pro.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }

        HikariConfig config = new HikariConfig();
        config.setDriverClassName(pro.getProperty("JDBC_DRIVERCLASS"));
        config.setJdbcUrl(pro.getProperty("JDBC_URL"));
        config.setUsername(pro.getProperty("JDBC_USER"));
        config.setPassword(pro.getProperty("JDBC_PASSWORD"));
        config.addDataSourceProperty("connectionTimeout", "1000"); // 连接超时：1秒
        config.addDataSourceProperty("idleTimeout", "60000"); // 空闲超时：60秒
        config.addDataSourceProperty("maximumPoolSize", "10"); // 最大连接数：10
        return config;
    }

}
