package ForgetServlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ForgetDao.PasswordDao;  
import UserModel.UserModel;    

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String email = request.getParameter("email");
        String newPassword = request.getParameter("password");
        
        // Create an instance of PasswordDao to handle the update operation
        PasswordDao dao = new PasswordDao();
        boolean result = dao.updatePassword(email, newPassword);  // Update password using PasswordDao
        
        
        // Forward the result and updated data to a JSP page
//        if (result) {
//            request.setAttribute("message", "Password updated successfully!");
//        } else {
//            request.setAttribute("message", "Failed to update password");
//        }
        
        
        if (result) {
            request.setAttribute("email", email);
            request.setAttribute("password", newPassword);
            request.setAttribute("message", "Password updated successfully!");
        } else {
            request.setAttribute("message", "Failed to update password");
        }
        
        

        // Forward to the JSP page to show the message
        RequestDispatcher dispatcher = request.getRequestDispatcher("PasswordUpdate.jsp");
        dispatcher.forward(request, response);
    }
}
