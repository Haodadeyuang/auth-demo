package com.togogo.listener;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MemoryListenerTest {

    @Test
    void sessionCreated() {
        long maxMemory = Runtime.getRuntime().maxMemory();//java虚拟机使用的最大内存量
        long totalMemory = Runtime.getRuntime().totalMemory();//java虚拟机内存总量

        System.out.println("MAX_MEMORY = " + maxMemory + "(字节)、" + (maxMemory / (double) 1024 / 1024) + "MB");
        System.out.println("TOTAL_MEMORY = " + totalMemory + "(字节)、" + (totalMemory / (double) 1024 / 1024) + "MB");
    }

    @Test
    void sessionDestroyed() {
    }
}