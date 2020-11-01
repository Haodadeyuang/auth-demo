package com.togogo.dao.impl;

import com.mysql.cj.xdevapi.JsonArray;
import com.togogo.dao.ICityInfoDao;
import com.togogo.util.HikariDataSourceUtil;
import com.togogo.util.JsonAnalysisUtil;
import org.json.JSONArray;
import org.json.JSONObject;

import java.lang.reflect.InvocationTargetException;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/25 10:14
 */
public class CityInfoDaoImpl implements ICityInfoDao {

    @Override
    public List<String> getAllCityInfo() {
        try(Connection con=HikariDataSourceUtil.getConnection())
        {
            String sql="select city_name from cityinfo;";
            PreparedStatement p = con.prepareStatement(sql);
            try(ResultSet res=p.executeQuery())
            {
                List<String> C=new LinkedList<>();
                while(res.next())
                {
                    C.add(res.getString(1));
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
    public Integer getCityCode(String cityName, String provinceName) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "select city_code from cityinfo where city_name=? and " +
                    "city_province=?";
            PreparedStatement p = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            p.setObject(1, cityName);
            p.setObject(2, provinceName);
            try (ResultSet res = p.executeQuery()) {
                res.last();
                if (res.getRow() == 1) {
                    return res.getInt(1);
                } else {
                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Boolean setCityInfo(String jsonFileName) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "insert into cityinfo values(?,?,?)";
            PreparedStatement p = con.prepareStatement(sql);
            JSONArray CityCodeArray =
                    (JSONArray) (JsonAnalysisUtil.getJsonValues(jsonFileName,
                            "城市代码",
                            new JsonArray()));
            for (Object x : CityCodeArray) {
                JSONObject AreaObj = (JSONObject) x;
                p.setObject(3, AreaObj.getString("省"));
                for (Object y : AreaObj.getJSONArray("市")) {
                    JSONObject f = (JSONObject) y;
                    p.setObject(1, f.getString("市名"));
                    p.setObject(2, f.getInt("编码"));
                    p.executeUpdate();
                }
            }
            return true;
        } catch (SQLException | NoSuchMethodException | InvocationTargetException | IllegalAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public String getProvince(Integer cityCode) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "select city_province from cityinfo where city_code=?";
            PreparedStatement p = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            p.setObject(1, cityCode);
            try (ResultSet res = p.executeQuery()) {
                res.last();
                if (res.getRow() == 1) {
                    return res.getString(1);
                } else {
                    return null;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String getCity(Integer cityCode) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "select city_name from cityinfo where city_code=?";
            PreparedStatement p = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            p.setObject(1, cityCode);
            try (ResultSet res = p.executeQuery()) {
                res.last();
                if (res.getRow() == 1) {
                    return res.getString(1);
                } else {
                    return null;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }


}
