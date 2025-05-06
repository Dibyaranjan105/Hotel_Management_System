package UserServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;
import UserModel.UserModel;

@WebServlet("/UserDetailsServlet")
public class UserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        UserDao dao = new UserDao();

        try {
            if ("admin".equalsIgnoreCase(type)) {
                List<UserModel> adminList = dao.getAllAdmins();
                request.setAttribute("adminList", adminList);
                request.getRequestDispatcher("AdminDetails.jsp").forward(request, response);
            } else {
                List<UserModel> userList = dao.getAllUsers();
                request.setAttribute("userList", userList);
                request.getRequestDispatcher("UserDetails.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}


