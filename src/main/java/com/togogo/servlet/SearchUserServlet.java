package com.togogo.servlet;

import com.togogo.service.impl.CheckServiceImpl;
import com.togogo.util.AjaxEscapeUtil;
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
 * @time: 2020/11/4 19:26
 */
@WebServlet(urlPatterns = "/search")
public class SearchUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setHeader("Cache-Control","no-store");//HTTP1.1
        resp.setHeader("Pragma","no-cache");//HTTP1.0
        resp.setDateHeader("Expires",0);//禁止在服务器中缓存

        String name = AjaxEscapeUtil.unescape(req.getParameter("searchword"));//获取传送过来的参数
        if(!(new CheckServiceImpl().checkUserName(name)))
        {
            RequestDispatcher requestDispatcher =req.getRequestDispatcher(
                    "/searchresult?searchword="+name);
            //调用forward()方法，转发请求
            try {
                requestDispatcher.forward(req,resp);
            } catch (ServletException e) {
                e.printStackTrace();
            }
        }
        else
        {
            resp.sendRedirect("/notfound");
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}
