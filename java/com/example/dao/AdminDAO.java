package com.example.dao;

import com.example.model.Admin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jdbcproject";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Raja1234@#";

    public boolean authenticate(Admin admin) {
        boolean isAuthenticated = false;
        Connection connection = null;

        try {
            System.out.println("Connecting to the database...");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Raja1234@#");
            System.out.println("Connected to the database");

            String sql = "SELECT * FROM admin WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, admin.getUsername());
            statement.setString(2, admin.getPassword());

            System.out.println("Executing query with username: " + admin.getUsername());
            ResultSet resultSet = statement.executeQuery();
            isAuthenticated = resultSet.next();
            System.out.println("Authentication result: " + isAuthenticated);

            resultSet.close();
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null && !connection.isClosed()) {
                    connection.close();
                    System.out.println("Database connection closed.");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isAuthenticated;
    }
}
