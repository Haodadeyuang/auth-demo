package com.togogo.dao;

import java.util.List;

public interface IFollowerDao {
    List<Integer> getFollowingID(Integer user_id);
    List<Integer> getFollowerID(Integer user_id);
    Boolean AFollowB(Integer user_A,Integer user_B);
}
