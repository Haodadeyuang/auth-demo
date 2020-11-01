package com.togogo.domain;

import java.io.Serializable;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/29 15:37
 */
public class UserInfo implements Serializable{
    private String user_name;
    private String user_firstname;
    private String user_lastname;
    private String user_city;
    private String user_phone;
    private String user_about;
    private String user_location;
    private String user_mailbox;
    private String user_job;
    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_firstname() {
        return user_firstname;
    }

    public void setUser_firstname(String user_firstname) {
        this.user_firstname = user_firstname;
    }

    public String getUser_lastname() {
        return user_lastname;
    }

    public void setUser_lastname(String user_lastname) {
        this.user_lastname = user_lastname;
    }

    public String getUser_city() {
        return user_city;
    }

    public void setUser_city(String user_city) {
        this.user_city = user_city;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_about() {
        return user_about;
    }

    public void setUser_about(String user_about) {
        this.user_about = user_about;
    }

    public String getUser_location() {
        return user_location;
    }

    public void setUser_location(String user_location) {
        this.user_location = user_location;
    }

    public String getUser_mailbox() {
        return user_mailbox;
    }

    public void setUser_mailbox(String user_mailbox) {
        this.user_mailbox = user_mailbox;
    }

    public String getUser_job() {
        return user_job;
    }

    public void setUser_job(String user_job) {
        this.user_job = user_job;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "user_name='" + user_name + '\'' +
                ", user_firstname='" + user_firstname + '\'' +
                ", user_lastname='" + user_lastname + '\'' +
                ", user_city='" + user_city + '\'' +
                ", user_phone='" + user_phone + '\'' +
                ", user_about='" + user_about + '\'' +
                ", user_location='" + user_location + '\'' +
                ", user_mailbox='" + user_mailbox + '\'' +
                ", user_job='" + user_job + '\'' +
                '}';
    }
}
