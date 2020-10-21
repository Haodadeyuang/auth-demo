package com.togogo.service.impl;

import com.togogo.dao.IUserDao;
import com.togogo.dao.impl.UserDaoImpl;
import com.togogo.service.ICheckService;
import com.togogo.util.PasswordDigestUtil;

import java.security.NoSuchAlgorithmException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/21 16:13
 */
public class CheckServiceImpl implements ICheckService {

    @Override
    public boolean checkRegister(String name, String password, String email, Integer roleID) {
        String salt=PasswordDigestUtil.getSalt();
        try {
            String digest=PasswordDigestUtil.Digest(password,salt);
            return new UserDaoImpl().addUser(name,digest,email,roleID,salt);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkLogin(Integer id, String name, String password) {
        String salt = new UserDaoImpl().getSalt(id, name);
        System.out.println(salt);
        if (salt == null) {
            return false;
        } else
        {
            try {
                password=PasswordDigestUtil.Digest(password,salt);
                return new UserDaoImpl().findUser(id,name,password);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                return false;
            }
        }
    }
}
