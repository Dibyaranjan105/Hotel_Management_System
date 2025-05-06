package BookRoom;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BookRoomServlet")
public class BookRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String roomType = request.getParameter("roomType");

        // Save selected room in session
        HttpSession session = request.getSession();
        session.setAttribute("selectedRoom", roomType);

        // Redirect to reservation page
        response.sendRedirect("reservation.jsp");
    }
}
