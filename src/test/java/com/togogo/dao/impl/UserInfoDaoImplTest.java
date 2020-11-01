package com.togogo.dao.impl;

import com.togogo.domain.User;
import com.togogo.domain.UserInfo;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class UserInfoDaoImplTest {

    @Test
    void updateUserInfo() {
        new UserInfoDaoImpl().updateUserInfo("aaaa","bbb","null",null,"null","nullaaa",
                null,null
                ,"\"null\"");
    }

    @Test
    void getUserInfo() {
        UserInfo t=new UserInfoDaoImpl().getUserInfo("aaaa");
        System.out.println(t.toString());
    }
}