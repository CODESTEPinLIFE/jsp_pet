package com.example.testserv.DAO;

import com.example.testserv.entity.ClothesEntity;
import jakarta.servlet.http.Part;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<ClothesEntity> getAllClothes() {
        List<ClothesEntity> list = new ArrayList<ClothesEntity>();
        ClothesEntity clothesEntity = null;
        try {
            String sql = "select *from clothes";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                clothesEntity = new ClothesEntity();
                clothesEntity.setClothesId(resultSet.getInt(1));
                clothesEntity.setName_cloth(resultSet.getString(2));
                clothesEntity.setBrande(resultSet.getString(3));
                clothesEntity.setPrice(resultSet.getString(4));
                clothesEntity.setClothesCategory(resultSet.getString(5));
                clothesEntity.setStatus(resultSet.getString(6));
                clothesEntity.setPhoto(resultSet.getString(7));
                clothesEntity.setEmail(resultSet.getString(8));
                list.add(clothesEntity);

            }
        } catch (Exception ex) {
            ex.printStackTrace();

        }
        return list;
    }

    @Override
    public ClothesEntity getClothById(int id) {
        ClothesEntity clothesEntity = null;
        try {
            String sql = "select * from clothes where cloth_id=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                clothesEntity = new ClothesEntity();
                clothesEntity.setClothesId(resultSet.getInt(1));
                clothesEntity.setName_cloth(resultSet.getString(2));
                clothesEntity.setBrande(resultSet.getString(3));
                clothesEntity.setPrice(resultSet.getString(4));
                clothesEntity.setClothesCategory(resultSet.getString(5));
                clothesEntity.setStatus(resultSet.getString(6));
                clothesEntity.setPhoto(resultSet.getString(7));
                clothesEntity.setEmail(resultSet.getString(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return clothesEntity;
    }

    @Override
    public boolean updateEditClothes(ClothesEntity clothes) {
        boolean flag = false;
        try {
            String sql = "update clothes set cloth_name = ?,brand = ?,price = ?,status = ? where cloth_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, clothes.getName_cloth());
            preparedStatement.setString(2, clothes.getBrande());
            preparedStatement.setString(3, clothes.getPrice());
            preparedStatement.setString(4, clothes.getStatus());
            preparedStatement.setInt(5, clothes.getClothesId());
            int pr = preparedStatement.executeUpdate();
            if (pr == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean deleteClothes(int id) {
        boolean flag = false;
        try {
            String sql = "delete from clothes where cloth_id = ? ";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            int pr = preparedStatement.executeUpdate();
            if (pr == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }
}
