package com.example.testserv.DAO;

import com.example.testserv.entity.UserEntity;

public interface UserDAO {
     boolean userRegister(UserEntity user);
     UserEntity userLogin(String email,String password);
}
