package ForgetServlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/jdbcproject";  
    private static final String JDBC_USERNAME = "root";  
    private static final String JDBC_PASSWORD = "Dibya@143";  

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        if (email == null || email.isEmpty()) {
            response.getWriter().write("Email cannot be empty.");
            return;
        }

        try {
            // Manually load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143")) {
                String query = "SELECT * FROM registration WHERE email = ?";
                try (PreparedStatement ps = connection.prepareStatement(query)) {
                    ps.setString(1, email);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        // Redirect the user to the resetPassword.jsp page with their email as a parameter
                        response.sendRedirect("resetPassword.jsp?email=" + email);
                    } else {
                        response.getWriter().write("Email not found.");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();  // Log the stack trace to help diagnose the issue
                    response.getWriter().write("SQL Error: " + e.getMessage()); // Provide more specific error
                }
            } catch (SQLException e) {
                e.printStackTrace();  // Log the stack trace to help diagnose the issue
                response.getWriter().write("Database Connection Error: " + e.getMessage()); // Provide more specific error
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().write("JDBC Driver not found.");
        }
    }
}
