package com.crm.mapper;

import org.apache.ibatis.annotations.Param;

import com.crm.pojo.User;

public interface UserDao {
    //登录
    public User findUser(@Param("telnumber") String telnumber, @Param("password") String password);

    //注册
    public void addUser(@Param("idcard") String idcard, @Param("name") String name, @Param("password") String password,
                        @Param("telnumber") String telnumber, @Param("email") String email);
    public void updateUser(User user);

}
