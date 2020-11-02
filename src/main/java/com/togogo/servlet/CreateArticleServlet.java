package com.togogo.servlet;

import com.togogo.dao.impl.ArticleDaoImpl;
import com.togogo.dao.impl.UserDaoImpl;
import com.togogo.dao.impl.UserInfoDaoImpl;
import com.togogo.service.impl.EditArticleServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/11/2 20:14
 */

@WebServlet(urlPatterns = "/createArticle")
public class CreateArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        Integer author_id = new UserDaoImpl().getUserId((String) (req.getSession()).getAttribute(
                "UserName"));
        String article_title = req.getParameter("article_title");
        String article_content = req.getParameter("article_content");
        if (new EditArticleServiceImpl().createArticle(author_id,article_title,article_content)) {
            try {
                resp.sendRedirect("/articles");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {

        }

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}
