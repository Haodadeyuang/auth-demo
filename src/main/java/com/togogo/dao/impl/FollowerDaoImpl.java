package com.togogo.dao.impl;

import com.togogo.dao.IFollowerDao;
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
 * @time: 2020/10/30 16:20
 */
public class FollowerDaoImpl implements IFollowerDao {

    @Override
    public List<Integer> getFollowingID(Integer user_id) {
        try(Connection con=HikariDataSourceUtil.getConnection())
        {
            String sql="select user_id from follower where follower_id=?";
            PreparedStatement p = con.prepareStatement(sql);
            p.setObject(1,user_id);
            try(ResultSet res=p.executeQuery())
            {
                List<Integer> C=new LinkedList<>();
                while(res.next())
                {
                    C.add(res.getInt(1));
                }
                return C;
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Integer> getFollowerID(Integer user_id) {
        try(Connection con=HikariDataSourceUtil.getConnection())
        {
            String sql="select follower_id from follower where user_id=?";
            PreparedStatement p = con.prepareStatement(sql);
            p.setObject(1,user_id);
            try(ResultSet res=p.executeQuery())
            {
                List<Integer> C=new LinkedList<>();
                while(res.next())
                {
                    C.add(res.getInt(1));
                }
                return C;
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Boolean AFollowB(Integer user_A, Integer user_B) {
        return null;
    }
}
