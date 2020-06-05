package com.sundan.ks.mapper;

import com.sundan.ks.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    User getUser(User user);
    int saveUser(User user);
    int deleteUser(Integer id);
    int updateUser(User user);
    List<User> getItem(String identity);
    int editUser(@Param("user") User user,@Param("id_") Integer id_);
    int saveS_U(Integer id);
    int addUser(User user);
    int addUser_S(Integer id);
}
