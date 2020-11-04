package com.togogo.servlet;

import com.togogo.dao.impl.ArticleDaoImpl;
import com.togogo.dao.impl.UserDaoImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/11/3 15:15
 */
@WebServlet(urlPatterns = "/deleteArticle")
public class DeleteArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        /**
         * 校验当前用户是否为将要删除的文章的作者
         */
        Integer user_id =
                new UserDaoImpl().getUserId((String) (req.getSession()).getAttribute(
                        "UserName"));
        Integer article_id = Integer.valueOf(req.getParameter("article_id"));
        Integer author_id=new ArticleDaoImpl().getArticleUserID(article_id);
        if (user_id.equals(author_id) ) {
            new ArticleDaoImpl().deleteArticle(article_id);
            try {
                resp.sendRedirect("/blogs");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else
        {

        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}
