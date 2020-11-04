package com.togogo.servlet;

import com.togogo.dao.impl.ArticleDaoImpl;
import com.togogo.domain.Article;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/11/4 16:30
 */
@WebServlet(urlPatterns = "/updateArticle")
public class UpdateArticleServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException
    {
        Article ar=new Article();
        ar.setArticle_id(Integer.valueOf(req.getParameter("article_id")));
        ar.setArticle_title(req.getParameter("article_title"));
        ar.setArticle_content(req.getParameter("article_content"));
        if(new ArticleDaoImpl().updateArticle(ar))
        {
            resp.sendRedirect("/blogs");
        }
        else
        {

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
