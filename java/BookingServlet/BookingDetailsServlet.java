package BookingServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BookingDetailsServlet")
public class BookingDetailsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/jdbcproject";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Dibya@143";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM room_booking");

            out.println("<html><head><title>Booking Details</title>");
            out.println("<style>");
            out.println("body { font-family: Arial; background-color: #f4f4f4; padding: 40px; }");
            out.println("h2 { text-align: center; color: #333; }");
            out.println("table { margin: auto; width: 90%; border-collapse: collapse; box-shadow: 0px 0px 10px rgba(0,0,0,0.1); }");
            out.println("th, td { padding: 12px 20px; text-align: center; border: 1px solid #ccc; }");
            out.println("th { background-color: #007bff; color: white; }");
            out.println("tr:nth-child(even) { background-color: #f9f9f9; }");
            out.println("a { display: block; margin-top: 20px; text-align: center; text-decoration: none; color: white; background-color: #28a745; padding: 10px 20px; border-radius: 5px; width: 150px; margin-left: auto; margin-right: auto; }");
            out.println("</style></head><body>");

            out.println("<h2>All Room Booking Details</h2>");
            out.println("<table>");
            out.println("<tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Aadhar</th><th>Check-In</th><th>Check-Out</th></tr>");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("id") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("email") + "</td>");
                out.println("<td>" + rs.getString("phone") + "</td>");
                out.println("<td>" + rs.getString("aadhar") + "</td>");
                out.println("<td>" + rs.getDate("check_in") + "</td>");
                out.println("<td>" + rs.getDate("check_out") + "</td>");
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("<a href='homepage.jsp'>Back to Home</a>");
            out.println("</body></html>");

            rs.close();
            stmt.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }
    }
}
