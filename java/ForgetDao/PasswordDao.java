package ForgetDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PasswordDao {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/jdbcproject";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "Dibya@143";

    // Update to new password
    public boolean updatePassword(String email, String newPassword) {
        String updateQuery = "UPDATE registration SET password = ? WHERE email = ?";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");
             PreparedStatement ps = connection.prepareStatement(updateQuery)) {

            ps.setString(1, newPassword); 
            ps.setString(2, email);        

            int rowsUpdated = ps.executeUpdate();  
            return rowsUpdated > 0;  
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error updating password", e);
        }
    }

    
}
