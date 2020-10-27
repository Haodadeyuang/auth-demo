package com.togogo.servlet;

import com.togogo.service.impl.CheckServiceImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/23 21:06
 */
@WebServlet(urlPatterns = "/checkLogin")
public class CheckLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        System.out.println(name + password);
        if (new CheckServiceImpl().checkLogin(null, name, password)) {
            /**
             * 请求转发的方式，前台jsp需要经过身份认证，不允许直接访问(也不允许重定向)
             * 身份认证成功，在这里获取一些基本信息存入session后再进行请求转发
             * 例如用户城市代码
             * 注意：绝对不允许把User类的字段存入session
             */
            RequestDispatcher dispatcher =
                    req.getRequestDispatcher("WEB-INF/auth.jsp");
            try {
                dispatcher.forward(req, resp);
            } catch (ServletException e) {
                e.printStackTrace();
            }
        } else {

            resp.getWriter().write("<p>密码错误，2s后返回上级页面</p>");
            resp.getWriter().write("<script language=javascript>function goback(){history.go(-1);}</script>");
            resp.getWriter().write("<script language=javascript>setTimeout(\"goback()\", 2000);" +
                    "</script>");
            resp.getWriter().flush();
        }
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        doPost(req, resp);
    }
}
