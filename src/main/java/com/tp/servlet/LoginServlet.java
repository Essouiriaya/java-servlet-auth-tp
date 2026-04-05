package com.tp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tp.dao.UserDao;

public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
	private UserDao userDao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(userDao.validate(email, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", userDao.getUserByEmail(email));
            response.sendRedirect("home");
        } else {
            request.setAttribute("error", "Email ou mot de passe incorrect");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}