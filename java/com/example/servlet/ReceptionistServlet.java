package com.example.servlet;

import com.example.model.Receptionist;
import com.example.dao.ReceptionistDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/ReceptionLogin")
public class ReceptionistServlet extends HttpServlet {
    private ReceptionistDAO receptionistDAO;

    @Override
    public void init() {
        receptionistDAO = new ReceptionistDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        System.out.println("Attempting to authenticate user: " + username);

        Receptionist receptionist = new Receptionist(username, password);
        HttpSession session = request.getSession();

        try {
            if ("Soumyaranjan".equals(username) && "Soumya".equals(password)) {
                session.setAttribute("userobj", receptionist);
                response.sendRedirect("welcome.jsp");
            } else if (receptionistDAO.authenticate(receptionist)) {
                session.setAttribute("userobj", receptionist);
                response.sendRedirect("welcome.jsp");
            } else {
                session.setAttribute("failedMsg", "Invalid Username or Password");
                response.sendRedirect("ReceptionLogin.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
