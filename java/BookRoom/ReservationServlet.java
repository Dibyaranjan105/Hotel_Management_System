package BookRoom;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String country = request.getParameter("country");
        String phone = request.getParameter("phone");
        String checkin = request.getParameter("cin");
        String checkout = request.getParameter("cout");

        String fullName = title + " " + fname + " " + lname;

        HttpSession session = request.getSession();
        String roomType = (String) session.getAttribute("selectedRoom");

        request.setAttribute("name", fullName);
        request.setAttribute("country", country);
        request.setAttribute("phone", phone);
        request.setAttribute("checkin", checkin);
        request.setAttribute("checkout", checkout);
        request.setAttribute("roomType", roomType);

        RequestDispatcher dispatcher = request.getRequestDispatcher("admin-confirm.jsp");
        dispatcher.forward(request, response);
    }
}
