package com.togogo.servlet;

import jakarta.servlet.Servlet;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/28 10:49
 */
@WebServlet(urlPatterns = "/signOut")
public class LoginOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //清除session后直接重定向到登录界面
        resp.setContentType("text/html");
        HttpSession session=req.getSession();
        session.invalidate();
        resp.getWriter().write("<p>Bye,即将返回 <a href=\"../signin.jsp\">登录界面</a></p>");
        resp.getWriter().write("<script language=javascript>function gotoLogin()" +
                "{window.location.replace(\"../signin.jsp\");}</script>");
        resp.getWriter().write("<script language=javascript>setTimeout(\"gotoLogin()\", 2000);" +
                "</script>");
        resp.getWriter().flush();


    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        doPost(req,resp);
    }
}
