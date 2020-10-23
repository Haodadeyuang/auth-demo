package com.togogo.servlet;

import com.togogo.service.impl.CheckServiceImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException
    {
        resp.setContentType("text/html");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        if (new CheckServiceImpl().checkLogin(null, name, password)) {
            /**
             * 请求转发的方式，前台jsp需要经过身份认证，不允许直接访问(也不允许重定向)
             */
            RequestDispatcher dispatcher =
                    req.getRequestDispatcher("WEB-INF/auth.jsp");    // 使用req对象获取RequestDispatcher对象
            try {
                dispatcher.forward(req, resp);
            } catch (ServletException e) {
                e.printStackTrace();
            }
        } else {
            resp.sendRedirect("loginFailed.jsp");
        }
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException
    {
        doPost(req, resp);
    }
}
