package com.togogo.dao.impl;

import com.togogo.domain.User;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class UserDaoImplTest {

    @Test
    void addUser() {
        new UserDaoImpl().addUser("我爱大米饭","123","321",124,"123");
    }

    @Test
    void updateUser() {
        new UserDaoImpl().updateUser(1,"你爱大米饭","wanboliqiu");
    }

    @Test
    void findUser() {
        System.out.println(new UserDaoImpl().findUser(1,null,"123"));
    }
}