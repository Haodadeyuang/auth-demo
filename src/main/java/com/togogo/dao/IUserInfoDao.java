package com.togogo.dao;

import com.togogo.domain.UserInfo;

public interface IUserInfoDao {

    /**
     * 设置user_name对应的行列信息
     * @param user_name
     * @param user_firstname
     * @param user_lastname
     * @param user_city
     * @param user_phone
     * @param user_about
     * @param user_location
     * @param user_mailbox
     * @param user_job
     * @return
     */
    Boolean updateUserInfo(String user_name, String user_firstname,
                           String user_lastname, String user_city, String user_phone,
                           String user_about, String user_location,String user_mailbox,
                           String user_job);

    /**
     * 返回JavaBean实例
     * @param user_name
     * @return
     */
    UserInfo getUserInfo(String user_name);
}
