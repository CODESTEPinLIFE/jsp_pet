package com.example.testserv.DAO;

import com.example.testserv.entity.ClothesEntity;
import jakarta.servlet.http.Part;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ClothesDAOImpl implements ClothesDAO {
    private Connection connection;

    public ClothesDAOImpl(Connection connection) {
        super();
        this.connection = connection;
    }

    @Override
    public boolean addClothes(ClothesEntity clothesEntity) {
        boolean flag = false;
        try {
            String sql = "insert into clothes(cloth_name,brand,price,cloth_category,status,photo,email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, clothesEntity.getName_cloth());
            ps.setString(2, clothesEntity.getBrande());
            ps.setString(3, clothesEntity.getPrice());
            ps.setString(4, clothesEntity.getClothesCategory());
            ps.setString(5, clothesEntity.getStatus());
            ps.setString(6, clothesEntity.getPhoto());
            ps.setString(7, clothesEntity.getEmail());
            int prev = ps.executeUpdate();
            if (prev == 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}
