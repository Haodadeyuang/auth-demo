package com.togogo.servlet;

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
@WebServlet(urlPatterns = "/Hello")
public class IndexAuthServlet extends HttpServlet {
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
            // 设置响应类型:
            resp.setContentType("text/html");
            // 获取输出流:
            PrintWriter pw = resp.getWriter();
            // 写入响应:
            pw.write("<h1>Hello, world!</h1>");
            // 最后不要忘记flush强制输出:
            pw.flush();
        }

}
