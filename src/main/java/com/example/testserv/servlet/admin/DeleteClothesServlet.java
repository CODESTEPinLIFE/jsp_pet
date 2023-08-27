package com.example.testserv.servlet.admin;

import com.example.testserv.DAO.ClothesDAOImpl;
import com.example.testserv.DB.DataBase;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/delete")
public class DeleteClothesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            ClothesDAOImpl clothesDAO = new ClothesDAOImpl(DataBase.getConn());
            boolean flag = clothesDAO.deleteClothes(id);
            HttpSession httpSession = req.getSession();
            if (flag) {
                httpSession.setAttribute("succMsg", "Delete Was Success");
                resp.sendRedirect("admin/all_clothes.jsp");
            } else {
                httpSession.setAttribute("failedMsg", "Delete Was Failed");
                resp.sendRedirect("admin/all_clothes.jsp");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
