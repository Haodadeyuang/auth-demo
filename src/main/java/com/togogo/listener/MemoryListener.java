package com.togogo.listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

import java.util.concurrent.atomic.AtomicLong;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/28 14:22
 */
@WebListener
public class MemoryListener implements HttpSessionListener {
    ServletContext ctx = null;
    static long freeMemory= 0l;

    public void sessionCreated(HttpSessionEvent e) {
        freeMemory=(Runtime.getRuntime().freeMemory());
        ctx = e.getSession().getServletContext();
        ctx.setAttribute("freeMemory",(String.format("%.1f",
                (freeMemory / (double) 1024 / 1024))));
        ctx.setAttribute("usageMemory",String.format("%.1f",
                (freeMemory / (double) 1024 / 1024)/(1.26)));

    }

    public void sessionDestroyed(HttpSessionEvent e) {
        freeMemory=(Runtime.getRuntime().freeMemory());
        ctx.setAttribute("freeMemory",(String.format("%.1f",
                (freeMemory / (double) 1024 / 1024))));
    }
}
