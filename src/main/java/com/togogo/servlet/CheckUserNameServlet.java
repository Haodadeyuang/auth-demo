package com.togogo.servlet;

import com.togogo.service.impl.CheckServiceImpl;
import com.togogo.util.AjaxEscapeUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/26 18:14
 */

@WebServlet(urlPatterns = "/checkUserName")
public class CheckUserNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setHeader("Cache-Control","no-store");//HTTP1.1
        resp.setHeader("Pragma","no-cache");//HTTP1.0
        resp.setDateHeader("Expires",0);//禁止在服务器中缓存
        String name = AjaxEscapeUtil.unescape(req.getParameter("reg_name"));//获取传送过来的参数
        if(!(new CheckServiceImpl().checkUserName(name)))
        {
            resp.getWriter().print("用户名已存在或含有敏感词汇，请更换用户名");
        }
        else
        {
            resp.getWriter().print("用户名可用");
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}
