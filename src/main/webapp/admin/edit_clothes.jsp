<%@ page import="com.example.testserv.DAO.ClothesDAOImpl" %>
<%@ page import="com.example.testserv.DB.DataBase" %>
<%@ page import="com.example.testserv.entity.ClothesEntity" %><%--
  Created by IntelliJ IDEA.
  User: st63r
  Date: 23.08.2023
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin:Edit Clothes</title>
    <%@include file="css.jsp" %>
</head>
<body style="background-color: #f0f2f2">
<%@include file="navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Edit Clothes</h4>

                    <c:if test="${not empty succMsg }">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty failedMsg }">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"/>
                    </c:if>
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        ClothesDAOImpl clothesDAO = new ClothesDAOImpl(DataBase.getConn());
                        ClothesEntity clothes = clothesDAO.getClothById(id);
                    %>
                    <form action="../editclothes" method="post" >
                        <input type="hidden" name = "id" value = "<%=clothes.getClothesId()%>">

                        <div class="form-group">
                            <label for="exampleInputEmail1">Clothes Name*</label>
                            <input name="name" type="text" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp" value="<%=clothes.getName_cloth()%>">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Brand*</label>
                            <input name="brand" type="text" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp" value="<%=clothes.getBrande()%>">
                        </div>

                        <div class=" form-group">
                            <label for="exampleInputPassword1">Price*</label>
                            <input name="price" type="number" class="form-control" id="exampleInputPassword1"  value="<%=clothes.getPrice()%>">
                        </div>

                        <div class=" form-group">
                            <label for="inputState">Clothes Status</label>
                            <select id="inputState" name="clothes_status" class="form-control">
                                <%
                                    if ("Active".equals(clothes.getStatus())) {
                                %>
                                <option value="Activate">Activate</option>
                                <option value="Inactive">Inactive</option>
                                <%} else {%>
                                <option value="Inactive">Inactive</option>
                                <option value="Activate">Activate</option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="margin-top: 600px">
    <div>
        <%@include file="footer.jsp" %>
    </div>
</div>
</body>
</html>
