package com.togogo.servlet;

import com.togogo.dao.impl.UserInfoDaoImpl;
import com.togogo.service.impl.CheckServiceImpl;
import jakarta.servlet.ServletContext;
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
 * @time: 2020/10/31 16:50
 */
@WebServlet(urlPatterns = "/updateUserInfo")
public class UpdateUserInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String user_name = req.getParameter("user_name");
        String user_phone = req.getParameter("user_phone");
        String user_city = req.getParameter("user_city");
        String user_location = req.getParameter("user_location");
        String user_firstname = req.getParameter("user_firstname");
        String user_lastname = req.getParameter("user_lastname");
        String user_mailbox = req.getParameter("user_mailbox");
        String user_about = req.getParameter("user_about");
        String user_job = req.getParameter("user_job");
        if(new UserInfoDaoImpl().updateUserInfo(user_name,user_firstname,user_lastname,
                user_city,user_phone,user_about,user_location,user_mailbox,user_job))
        {
            resp.sendRedirect("/tables");
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
