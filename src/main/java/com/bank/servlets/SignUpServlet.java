package com.bank.servlets;

import com.bank.entities.User;
import com.bank.services.UserService;
import com.bank.services.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Amol.Sarwade
 */
@WebServlet("/signup")
public class SignUpServlet  extends HttpServlet {

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("resources/dynamic/pages/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        final String email = request.getParameter("email");
        final String username = request.getParameter("username");
        final String password = request.getParameter("password");

        //MEMO: Validation should go here

        User user = new User(email, username, password);

        int result = userService.createUser(user);

        if(result > 0) {
            request.getRequestDispatcher("resources/dynamic/pages/signupSuccess.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("resources/dynamic/pages/signup.jsp").forward(request, response);
        }

    }
}
