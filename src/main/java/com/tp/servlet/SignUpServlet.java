package com.tp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tp.dao.UserDao;
import com.tp.model.User;


public class SignUpServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private UserDao userDao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if(!password.equals(confirmPassword)) {
            request.setAttribute("error", "Les mots de passe ne correspondent pas");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        User user = new User(name, email, password);
        if(!userDao.addUser(user)) {
            request.setAttribute("error", "Email déjà utilisé");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        response.sendRedirect("login.jsp");
    }
}