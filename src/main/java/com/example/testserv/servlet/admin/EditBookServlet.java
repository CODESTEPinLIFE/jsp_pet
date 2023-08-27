package com.example.testserv.servlet.admin;

import com.example.testserv.DAO.ClothesDAOImpl;
import com.example.testserv.DB.DataBase;
import com.example.testserv.entity.ClothesEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/editclothes")
public class EditBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name_cloth = req.getParameter("name");
            String brande = req.getParameter("brand");
            String price = req.getParameter("price");
            String status = req.getParameter("clothes_status");
            ClothesEntity clothes = new ClothesEntity();
            clothes.setClothesId(id);
            clothes.setName_cloth(name_cloth);
            clothes.setBrande(brande);
            clothes.setPrice(price);
            clothes.setStatus(status);
            ClothesDAOImpl clothesDAO = new ClothesDAOImpl(DataBase.getConn());
            boolean flag =  clothesDAO.updateEditClothes(clothes);
            HttpSession httpSession = req.getSession();
            if(flag){
                httpSession.setAttribute("succMsg","Upload Was Success");
                resp.sendRedirect("admin/all_clothes.jsp");
            }else{
                httpSession.setAttribute("failedMsg","Upload Was Failed");
                resp.sendRedirect("admin/all_clothes.jsp");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
