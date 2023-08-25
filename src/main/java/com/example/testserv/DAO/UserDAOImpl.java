package com.example.testserv.DAO;

import com.example.testserv.entity.UserEntity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO {
    private Connection con;

    public UserDAOImpl(Connection con) {
        super();
        this.con = con;
    }

    @Override
    public boolean userRegister(UserEntity user) {
        boolean flag = false;
        try {
            String sql = "insert into user(name,email,phone,password) values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPhone());
            ps.setString(4,user.getPassword());
            int prev = ps.executeUpdate();
            if(prev==1){
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public UserEntity userLogin(String email, String password) {
        UserEntity user = null;

        try {
            String sql = "select * from user where email=? and password=?";
            PreparedStatement preparedStatement= con.prepareStatement(sql);
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user = new UserEntity();
                user.setId(resultSet.getInt(1));
                user.setName(resultSet.getString(2));
                user.setEmail(resultSet.getString(3));
                user.setPhone(resultSet.getString(4));
                user.setPassword(resultSet.getString(5));
                user.setAddress(resultSet.getString(6));
                user.setLandmark(resultSet.getString(7));
                user.setCity(resultSet.getString(8));
                user.setState(resultSet.getString(9));
                user.setPin(resultSet.getString(10));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return user;
    }
}
