package com.shellming.dao;

import com.shellming.entity.Users;

public interface UsersDao {
    void login(Users users);
    int checkUser(Users users);
    int updateUser(Users users);
    int outUser(Users users);
    int checkUserLog(Users users);
}
