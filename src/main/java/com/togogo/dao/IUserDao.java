package com.togogo.dao;

import com.togogo.domain.User;

public interface IUserDao {
    /**
     * 查询用户，只能根据ID或者用户名其中之一再加上密码的形式
     */
    User findUser(Integer user_id,String user_name,String user_password);

    /**
     * 添加用户
     */
    Boolean addUser(Integer user_id,
                    String user_name,
                    String user_password,
                    String user_email,
                    Integer role_id);

    /**
     * 删除用户，不支持
     */

    /**
     * 更新用户，只能修改用户名或者密码
     */
    Boolean updateUser(Integer user_id,
                    String user_name,
                    String user_password,
                    String user_email,
                    Integer role_id);

}
