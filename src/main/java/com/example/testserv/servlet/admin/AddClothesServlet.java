package com.example.testserv.servlet.admin;

import com.example.testserv.DAO.ClothesDAOImpl;
import com.example.testserv.DB.DataBase;
import com.example.testserv.entity.ClothesEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;
@WebServlet("/add_clothes")
@MultipartConfig
public class AddClothesServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name_cloth = req.getParameter("name");
        String brande = req.getParameter("brand");
        String price = req.getParameter("price");
        String clothesCategory = req.getParameter("clothes_type");
        String status = req.getParameter("clothes_status");
        Part part = req.getPart("cimg");
        String fileName = part.getSubmittedFileName();
        ClothesEntity cloth = new ClothesEntity(name_cloth, brande, price, clothesCategory, status, fileName, "admin");
        ClothesDAOImpl clothesDAO = new ClothesDAOImpl(DataBase.getConn());
        boolean flag = clothesDAO.addClothes(cloth);
        HttpSession httpSession = req.getSession();
        if (flag) {
            String path = getServletContext().getRealPath("") + "clothes";
            File file = new File(path);
            part.write(path + File.separator + fileName);
            System.out.println(fileName);
            httpSession.setAttribute("succMsg", "Clothes Add Successfully..");
            resp.sendRedirect("admin/add_clothes.jsp");
        } else {
            httpSession.setAttribute("failedMsg", "Something wrong on server..");
            resp.sendRedirect("admin/add_clothes.jsp");
        }

    }
}
