package com.crm.service.impl;

import com.crm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.mapper.UserDao;
import com.crm.pojo.User;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User findUser(String telnumber, String password) {

        return userDao.findUser(telnumber, password);
    }

    @Override
    public void addUser(String idcard, String name, String password, String telnumber, String email) {
        userDao.addUser(idcard, name, password, telnumber, email);

    }
    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);

    }
    @Override
    public int findUserId(String telNumber) {
        int id = userDao.findUserId(telNumber);
        return id;
    }

    @Override
    public void modifyPwd(String newPassword, int id) {
        userDao.modifyPwd(newPassword,id);
    }



}
