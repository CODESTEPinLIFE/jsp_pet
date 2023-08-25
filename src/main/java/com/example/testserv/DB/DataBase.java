package com.example.testserv.DB;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBase {
    private static Connection connection;

    public static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/clothes","root" ,"Stepan11022004");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
