package com.sundan.ks.service;

import com.sundan.ks.bean.User;

import java.util.List;

public interface UserService {
    User Login(User user);
    int saveUser(User user);
    int deleteUser(Integer id);
    int updateUser(User user);
    List<User> getItem(String identity);
    int editUser(User user,Integer id_);
    int saveS_U(Integer id);
    int addUser(User user);
    int addUser_S(Integer id);
}
