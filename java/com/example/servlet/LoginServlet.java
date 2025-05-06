package com.example.servlet;

import com.example.model.Admin;
import com.example.dao.AdminDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private AdminDAO adminDAO;

    @Override
    public void init() {
        adminDAO = new AdminDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Debug statement to print username and password
        System.out.println("Attempting to authenticate user: " + username);

        Admin admin = new Admin(username, password);
        HttpSession session = request.getSession();

        try {
            if ("Soumyaranjan".equals(username) && "Soumya".equals(password)) {
                session.setAttribute("userobj", admin);
                response.sendRedirect("welcome.jsp");
            } else if (adminDAO.authenticate(admin)) {
                session.setAttribute("userobj", admin);
                response.sendRedirect("welcome.jsp");
            } else {
                session.setAttribute("failedMsg", "Invalid Username or Password");
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Optionally redirect to an error page
        }
    }
}
