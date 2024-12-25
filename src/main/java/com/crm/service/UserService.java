package com.crm.service;

import com.crm.pojo.User;

public interface UserService {
    //登录
    public User findUser(String telnumber, String password);

    //注册
    public void addUser(String idcard, String name, String password, String telnumber, String email);

    public void updateUser(User user);
}
