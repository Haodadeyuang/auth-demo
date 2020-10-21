package com.togogo.service;

public interface ICheckService {
    boolean checkRegister(String name,String password,String email,Integer roleID);

    boolean checkLogin(Integer id,String name,String password);



}
