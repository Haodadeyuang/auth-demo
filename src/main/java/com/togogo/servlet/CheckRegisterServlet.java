package com.togogo.servlet;

import com.togogo.service.impl.CheckServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @description:判断是否注册成功
 * @author: Haodadeyu
 * @time: 2020/10/25 16:21
 */
@WebServlet(urlPatterns = "/checkRegister")
public class CheckRegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String email=req.getParameter("email");
        if (new CheckServiceImpl().checkRegister(name,password,email,1)) {
            /**
             * 请求转发的方式，前台jsp需要经过身份认证，不允许直接访问(也不允许重定向)
             * 身份认证成功，在这里获取一些基本信息存入session后再进行请求转发
             * 例如用户城市代码
             */
            resp.sendRedirect("signin.jsp");
        } else {
            //注册失败，返回注册界面
            resp.sendRedirect("signup.jsp");
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}
