package BookingServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/jdbcproject";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Dibya@143";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String aadhar = request.getParameter("aadhar");
        String checkIn = request.getParameter("check_in");
        String checkOut = request.getParameter("check_out");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);

            String sql = "INSERT INTO room_booking (name, email, phone, aadhar, check_in, check_out) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, phone);
            pst.setString(4, aadhar);
            pst.setDate(5, Date.valueOf(checkIn));
            pst.setDate(6, Date.valueOf(checkOut));

            int result = pst.executeUpdate();

            if (result > 0) {
                // Booking success
                out.println("<html><head><title>Booking Confirmation</title>");
                out.println("<style>");
                out.println("body { font-family: Arial; background-color: #f2f2f2; text-align: center; padding: 50px; }");
                out.println(".card { background: white; border-radius: 10px; padding: 30px; box-shadow: 0 0 10px rgba(0,0,0,0.2); display: inline-block; }");
                out.println("h2 { color: green; }");
                out.println("table { margin: 20px auto; border-collapse: collapse; }");
                out.println("td, th { border: 1px solid #ccc; padding: 10px 20px; }");
                out.println("a { text-decoration: none; color: white; background-color: #4CAF50; padding: 10px 20px; border-radius: 5px; }");
                out.println("</style></head><body>");

                out.println("<div class='card'>");
                out.println("<h2>Room Booking Successful!</h2>");
                out.println("<table>");
                out.println("<tr><th>Name</th><td>" + name + "</td></tr>");
                out.println("<tr><th>Email</th><td>" + email + "</td></tr>");
                out.println("<tr><th>Phone</th><td>" + phone + "</td></tr>");
                out.println("<tr><th>Aadhar</th><td>" + aadhar + "</td></tr>");
                out.println("<tr><th>Check-in Date</th><td>" + checkIn + "</td></tr>");
                out.println("<tr><th>Check-out Date</th><td>" + checkOut + "</td></tr>");
                out.println("</table>");
                out.println("<br><a href='homepage.jsp'>Back to Home</a>");
                out.println("</div></body></html>");
            } else {
                // Booking failed
                out.println("<html><body style='text-align:center; margin-top:50px;'>");
                out.println("<h2 style='color:red;'>Room Booking Failed!</h2>");
                out.println("<a href='roombook.jsp'>Try Again</a>");
                out.println("</body></html>");
            }

            pst.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }
    }
}
