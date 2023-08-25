package com.example.testserv.entity;

public class ClothesEntity {
    private int clothesId;
    private String name_cloth;
    private String brande;
    private String price;
    private String clothesCategory;
    private String status;
    private String photo;
    private  String email;

    public ClothesEntity(String name_cloth, String brande, String price, String clothesCategory, String status, String photo, String email) {
        this.name_cloth = name_cloth;
        this.brande = brande;
        this.price = price;
        this.clothesCategory = clothesCategory;
        this.status = status;
        this.photo = photo;
        this.email = email;
    }

    public int getClothesId() {
        return clothesId;
    }

    public void setClothesId(int clothesId) {
        this.clothesId = clothesId;
    }

    public String getName_cloth() {
        return name_cloth;
    }

    public void setName_cloth(String name_cloth) {
        this.name_cloth = name_cloth;
    }

    public String getBrande() {
        return brande;
    }

    public void setBrande(String brande) {
        this.brande = brande;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getClothesCategory() {
        return clothesCategory;
    }

    public void setClothesCategory(String clothesCategory) {
        this.clothesCategory = clothesCategory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "ClothesEntity{" +
                "clothesId=" + clothesId +
                ", name_cloth='" + name_cloth + '\'' +
                ", brande='" + brande + '\'' +
                ", price=" + price +
                ", clothesCategory='" + clothesCategory + '\'' +
                ", status='" + status + '\'' +
                ", photo='" + photo + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
