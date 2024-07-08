package com.codegym.istore.controller;

import com.codegym.istore.model.User;
import com.codegym.istore.service.IUserService;
import com.codegym.istore.service.impl.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet (name = "AuthController", urlPatterns = "/auth")
public class AuthController extends HttpServlet {
    private static final IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                request.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(request, response);
                break;
            case "logout":
                response.setContentType("text/html,charset=utf-8");
                HttpSession session = request.getSession();
                session.removeAttribute("user");
                response.sendRedirect("/auth");
                break;
            case "register":
                request.getRequestDispatcher("/WEB-INF/view/auth/register.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                User user = userService.login(username, password);

                if (user == null){
                    request.setAttribute("mess", "Wrong username or password");
                    request.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(request, response);
                }else{
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    response.sendRedirect("/i-store");
                }
                break;
            default:
                request.getRequestDispatcher("/WEB-INF/view/common/error.jsp").forward(request, response);
                break;
        }
    }
}

