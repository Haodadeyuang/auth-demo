package com.togogo.servlet;

import com.togogo.service.impl.CheckServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/13 16:52
 */
@WebServlet(urlPatterns = "/hello")
public class IndexAuthServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        String name = req.getParameter("name");
        String password=req.getParameter("password");
        PrintWriter pw = resp.getWriter();
        if(new CheckServiceImpl().checkLogin(null,name,password))
        {
            pw.write("<h1>Hello, " + name + "!</h1>");
        }
        else
        {
            pw.write("<h1>fuck off, " + name + ','+password+"!</h1>");
        }
        pw.flush();
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req,resp);
    }

}
