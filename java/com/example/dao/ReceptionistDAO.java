package com.example.dao;

import com.example.model.Receptionist;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReceptionistDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jdbcproject";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Raja1234@#";

    public boolean authenticate(Receptionist receptionist) {
        boolean isAuthenticated = false;
        Connection connection = null;

        try {
            System.out.println("Connecting to the database...");
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            System.out.println("Connected to the database");

            String sql = "SELECT * FROM receptionist WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, receptionist.getUsername());
            statement.setString(2, receptionist.getPassword());

            System.out.println("Executing query with username: " + receptionist.getUsername());
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
