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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String password = req.getParameter("password");
            String check = req.getParameter("check");
            System.out.println(name+  " " + email +" "+ phone+" " + password + " " + check);

            UserEntity user = new UserEntity();
            user.setName(name);
            user.setEmail(email);
            user.setPhone(phone);
            user.setPassword(password);
            HttpSession httpSession = req.getSession();

            if(check==null){
                httpSession.setAttribute("failedMsg","Please Check agree");
                resp.sendRedirect("register.jsp");
            }else{
                UserDAO userDAO = new UserDAOImpl(DataBase.getConn());
                boolean flag = userDAO.userRegister(user);
                if(flag){
                    httpSession.setAttribute("succMsg","Registration Successfully..");
                    resp.sendRedirect("register.jsp");
                }else{
                    httpSession.setAttribute("failedMsg","Something wrong on server..");
                    resp.sendRedirect("register.jsp");
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
