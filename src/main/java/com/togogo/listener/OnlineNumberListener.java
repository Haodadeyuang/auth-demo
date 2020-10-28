package com.togogo.listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;


/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/22 11:12
 */
@WebListener
public class OnlineNumberListener implements HttpSessionListener {
    // 在此初始化WebApp
    ServletContext ctx = null;
    static AtomicInteger current = new AtomicInteger(0);
    public void sessionCreated(HttpSessionEvent e) {
        current.incrementAndGet();
        ctx = e.getSession().getServletContext();
        ctx.setAttribute("onlineNumber", current);
    }

    public void sessionDestroyed(HttpSessionEvent e) {
        current.decrementAndGet();
        ctx.setAttribute("onlineNumber", current);
    }

}
