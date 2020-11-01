package com.togogo.domain;

import java.io.Serializable;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/30 16:00
 */
public class Follower implements Serializable {
    private Integer user_id;
    private Integer follower_id;

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getFollower_id() {
        return follower_id;
    }

    public void setFollower_id(Integer follower_id) {
        this.follower_id = follower_id;
    }

    @Override
    public String toString() {
        return "Follower{" +
                "user_id=" + user_id +
                ", follower_id=" + follower_id +
                '}';
    }
}
