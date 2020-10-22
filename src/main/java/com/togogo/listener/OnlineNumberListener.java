package com.togogo.listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/22 11:12
 */
@WebListener
public class OnlineNumberListener implements HttpSessionListener {
    // 在此初始化WebApp,例如打开数据库连接池等:
    ServletContext ctx = null;
    static int current = 0;
    public void sessionCreated(HttpSessionEvent e) {
        current++;
        ctx = e.getSession().getServletContext();
        ctx.setAttribute("onlineNumber", current);

    }

    public void sessionDestroyed(HttpSessionEvent e) {
        current--;
        ctx.setAttribute("currentusers", current);
    }

}
