package com.togogo.dao.impl;

import com.togogo.dao.IUserInfoDao;
import com.togogo.domain.UserInfo;
import com.togogo.util.HikariDataSourceUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/29 15:55
 */
public class UserInfoDaoImpl implements IUserInfoDao {
    @Override
    public Boolean updateUserInfo(String user_name, String user_firstname,
                                  String user_lastname, String user_city,
                                  String user_phone, String user_about,
                                  String user_location, String user_mailbox,
                                  String user_job) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql =
                    "update `userinfo` set `user_firstname`=?,`user_lastname`=?,`user_city`=?,`user_phone`=?,\n" +
                            "`user_about`=?, `user_location`=?,`user_mailbox`=?," +
                            "`user_job`=? where " +
                            "`user_name`=?;";
            PreparedStatement p = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            p.setObject(1, user_firstname);
            p.setObject(2, user_lastname);
            p.setObject(3, user_city);
            p.setObject(4, user_phone);
            p.setObject(5, user_about);
            p.setObject(6, user_location);
            p.setObject(7, user_mailbox);
            p.setObject(8, user_job);
            p.setObject(9, user_name);
            int res = p.executeUpdate();
            if (res == 1) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public UserInfo getUserInfo(String user_name) {

        String sql = "select user_firstname,user_lastname,user_city,user_phone," +
                "user_about,user_location,user_mailbox,user_job from userinfo where " +
                "user_name=?";
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            PreparedStatement p = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            p.setObject(1, user_name);
            ResultSet res = p.executeQuery();
            res.next();
            UserInfo u = new UserInfo();
            u.setUser_firstname(res.getString(1));
            u.setUser_lastname(res.getString(2));
            u.setUser_city(res.getString(3));
            u.setUser_phone(res.getString(4));
            u.setUser_about(res.getString(5));
            u.setUser_location(res.getString(6));
            u.setUser_mailbox(res.getString(7));
            u.setUser_job(res.getString(8));
            return u;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
