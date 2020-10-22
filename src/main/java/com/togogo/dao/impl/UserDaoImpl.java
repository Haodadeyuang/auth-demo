package com.togogo.dao.impl;

import com.togogo.dao.IUserDao;
import com.togogo.util.HikariDataSourceUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/21 11:45
 */

public class UserDaoImpl implements IUserDao {

    @Override
    public boolean findUser(Integer user_id, String user_name, String user_password) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql =
                    "select user_id from user where (user_id=? or user_name=?) and " +
                            "user_password=?";
            PreparedStatement p=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            p.setObject(1,user_id);
            p.setObject(2,user_name);
            p.setObject(3,user_password);
            try(ResultSet res=p.executeQuery())
            {
                res.last();
                if(res.getRow()==1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    @Override
    public Boolean addUser(String user_name, String user_password, String user_email,
                           Integer role_id,String user_salt) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql =
                    "insert into user values(null,?,?,?,?,?)";
            PreparedStatement p=con.prepareStatement(sql);
            p.setObject(1,user_name);
            p.setObject(2,user_password);
            p.setObject(3,user_email);
            p.setObject(4,role_id);
            p.setObject(5,user_salt);
            if(p.executeUpdate()==1)
            {
                return true;
            }
            else
            {
                return false;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    @Override
    public Boolean updateUser(Integer user_id, String user_name, String user_password) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql;
            if(user_password==null)
            {
                 sql="update user set user_name=? where user_id=?";
            }
            else
            {
                 sql="update user set user_name=?,user_password=? where user_id=?";
            }

            PreparedStatement p=con.prepareStatement(sql);
            p.setObject(1,user_name);
            p.setObject(2,user_password);
            p.setObject(3,user_id);
            if(p.executeUpdate()==1)
            {
                return true;
            }
            else
            {
                return false;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    @Override
    public String getSalt(Integer user_id, String user_name) {
        try(Connection con=HikariDataSourceUtil.getConnection())
        {
            String sql="select user_salt from user where user_id= ? or user_name=?";
            PreparedStatement p=con.prepareStatement(sql);
            p.setObject(1,user_id);
            p.setObject(2,user_name);
            ResultSet res=p.executeQuery();
            List<String> c=new LinkedList<>();
            while(res.next())
            {
                String salt=res.getString(1);
                c.add(salt);
            }
            if(c.size()==1)
            {
                return c.remove(0);
            }
            else
            {
                return null;
            }
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }
}
