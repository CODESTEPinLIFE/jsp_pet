package com.example.testserv.servlet;

import com.example.testserv.DAO.UserDAO;
import com.example.testserv.DAO.UserDAOImpl;
import com.example.testserv.DB.DataBase;
import com.example.testserv.entity.UserEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        UserDAOImpl userDAO = new UserDAOImpl(DataBase.getConn());
        HttpSession httpSession = req.getSession();
        String login = req.getParameter("email");
        String password  = req.getParameter("password");
        if("admin@gmail.com".equals(login) && "admin".equals(password)){
            UserEntity user = new UserEntity();
            httpSession.setAttribute("userobj",user);
            resp.sendRedirect("admin/home.jsp");
        }
        else{
            UserEntity user = userDAO.userLogin(login,password);
            if(user!=null){
                httpSession.setAttribute("userobj",user);
                resp.sendRedirect("home.jsp");
            }else{
                httpSession.setAttribute("failedMsg","Email or Password Invalid");
                resp.sendRedirect("login.jsp");
            }
        }
    }
}
