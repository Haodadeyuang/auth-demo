package com.togogo.domain;

import java.io.Serializable;

/**
 * @description:User的实体类，包括账户的核心信息如ID、账户名、登录密码，email地址。
 * @author: Haodadeyu
 * @time: 2020/10/21 11:17
 */
public class User implements Serializable {

    private Integer user_id;
    private String user_name;
    private String user_password;
    private String user_email;
    private Integer role_id;

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString()
    {
        return "User{" +
                "user_id=" + user_id +
                ", name='" + user_name + '\'' +
                ", email='" + user_email +'\''+
                '}';
    }
}
