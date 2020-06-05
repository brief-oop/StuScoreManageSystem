package com.sundan.ks.service.impl;

import com.sundan.ks.bean.User;
import com.sundan.ks.mapper.UserMapper;
import com.sundan.ks.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper mapper;

    public User Login(User user) {
        return mapper.getUser(user);
    }

    public int saveUser(User user) {
        return mapper.saveUser(user);
    }

    public int deleteUser(Integer id) {
        return mapper.deleteUser(id);
    }

    public int updateUser(User user) {
        return mapper.updateUser(user);
    }

    public List<User> getItem(String identity) {
        return mapper.getItem(identity);
    }

    public int editUser(User user,Integer id_) {
        return mapper.editUser(user,id_);
    }

    public int saveS_U(Integer id) {
        return mapper.saveS_U(id);
    }

    public int addUser(User user) {
        return mapper.addUser(user);
    }

    public int addUser_S(Integer id) {
        return mapper.addUser_S(id);
    }

}
