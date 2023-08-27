package com.example.testserv.DAO;

import com.example.testserv.entity.ClothesEntity;

import java.util.List;

public interface ClothesDAO {
     boolean addClothes(ClothesEntity clothesEntity);
     List<ClothesEntity> getAllClothes();
     ClothesEntity getClothById(int id);
     boolean updateEditClothes(ClothesEntity clothes);
     boolean deleteClothes(int id);
}
