package com.togogo.service.impl;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CheckServiceImplTest {

    @Test
    void checkRegister() {
        new CheckServiceImpl().checkRegister("鸡米饭", "abc", "w2u", 1);
    }

    @Test
    void checkLogin() {
        System.out.println(new CheckServiceImpl().checkLogin(null, "鸡米饭", "abc"));
    }
}