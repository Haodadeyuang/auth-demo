package com.togogo.dao.impl;

import com.togogo.dao.IArticleDao;
import com.togogo.domain.Article;
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
 * @time: 2020/11/2 16:25
 */
public class ArticleDaoImpl implements IArticleDao {
    @Override
    public List<Article> getUserArticles(Integer user_id) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "select `article_id`,`article_title`,`article_content`," +
                    "`article_viewcount`,`article_createtime` from `article` where " +
                    "author_id=?";
            PreparedStatement p = con.prepareStatement(sql);
            p.setObject(1, user_id);
            try (ResultSet res = p.executeQuery()) {
                List<Article> C = new LinkedList<>();
                while (res.next()) {
                    Article t = new Article();
                    t.setAuthor_id(user_id);
                    t.setArticle_id(res.getInt(1));
                    t.setArticle_title(res.getString(2));
                    t.setArticle_content(res.getString(3));
                    t.setArticle_viewcount(res.getInt(4));
                    t.setArticle_createtime(res.getTimestamp(5));
                    C.add(t);
                }
                return C;
            }


        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Integer getArticleUserID(Integer article_id) {
        try(Connection con=HikariDataSourceUtil.getConnection())
        {
            String sql="select `author_id` from `article` where `article_id`=?";
            PreparedStatement p=con.prepareStatement(sql);
            p.setObject(1,article_id);
            try(ResultSet res=p.executeQuery())
            {
                res.next();
                return res.getInt(1);
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Boolean createArticle(Article a) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql =
                    "insert into article (`author_id`,`article_title`," +
                            "`article_content`," +
                            "`article_createtime`)values(?,?,?,?)";
            PreparedStatement p = con.prepareStatement(sql);
            p.setObject(1, a.getAuthor_id());
            p.setObject(2, a.getArticle_title());
            p.setObject(3, a.getArticle_content());
            p.setObject(4, a.getArticle_createtime());
            if (p.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public Article selectArticle(Integer article_id) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "select `author_id`,`article_title`,`article_content`," +
                    "`article_viewcount`,`article_createtime` from `article` where " +
                    "article_id=?";
            PreparedStatement p = con.prepareStatement(sql);
            p.setObject(1, article_id);
            try (ResultSet res = p.executeQuery()) {
                res.next();
                Article t = new Article();
                t.setArticle_id(article_id);
                t.setAuthor_id(res.getInt(1));
                t.setArticle_title(res.getString(2));
                t.setArticle_content(res.getString(3));
                t.setArticle_viewcount(res.getInt(4));
                t.setArticle_createtime(res.getTimestamp(5));
                return t;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public Boolean updateArticle(Article article) {
        return null;
    }

    @Override
    public Boolean deleteArticle(Integer article_id) {
        try (Connection con = HikariDataSourceUtil.getConnection()) {
            String sql = "delete from article where article_id=?";
            PreparedStatement p = con.prepareStatement(sql);
            p.setObject(1, article_id);
            if (p.executeUpdate() == 1) {
                return true;
            }
            return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
