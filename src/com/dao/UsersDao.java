package com.dao;

import com.javabean.po.Users;

//业务逻辑类
public class UsersDao {
    public boolean usersLoin(Users u){
        if ("admin".equals(u.getUsername())&&"admin".equals(u.getPassword())){
            return true;
        }
        else
            return false;
    }
}
