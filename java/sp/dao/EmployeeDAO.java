package sp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import sp.model.Employee;

public class EmployeeDAO {
    public boolean addEmployee(Employee employee) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean result = false;
        
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");

            // SQL insert query
            String sql = "INSERT INTO AddEmployees (name, age, gender, job, salary, phone, email, aadhar) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, employee.getName());
            stmt.setInt(2, employee.getAge());
            stmt.setString(3, employee.getGender());
            stmt.setString(4, employee.getJob());
            stmt.setString(5, employee.getSalary());
            stmt.setString(6, employee.getPhone());
            stmt.setString(7, employee.getEmail());
            stmt.setString(8, employee.getAadhar());

            // Execute update
            int rowsInserted = stmt.executeUpdate();
            result = rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }
}
