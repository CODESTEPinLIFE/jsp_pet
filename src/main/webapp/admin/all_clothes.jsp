<%@ page import="com.example.testserv.DAO.ClothesDAOImpl" %>
<%@ page import="com.example.testserv.DB.DataBase" %>
<%@ page import="com.example.testserv.entity.ClothesEntity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: st63r
  Date: 23.08.2023
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin:All Clothes</title>
    <%@include file="css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${empty userobj}">
    <c:redirect url="../login.jsp"/>
</c:if>
<h3 class="text-center">Hello Admin</h3>

<c:if test="${not empty succMsg }">
    <h5 class="text-center text-success">${succMsg}</h5>
    <c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg }">
    <h5 class="text-center text-danger">${failedMsg}</h5>
    <c:remove var="failedMsg" scope="session"/>
</c:if>
<table class="table table-striped">
    <thead class="bg-danger text-white">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Clothes Name</th>
        <th scope="col">Brand</th>
        <th scope="col">Price</th>
        <th scope="col">Categories</th>
        <th scope="col">Status</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        ClothesDAOImpl dao = new ClothesDAOImpl(DataBase.getConn());
        List<ClothesEntity> clothesEntity = dao.getAllClothes();
        for (ClothesEntity clothes : clothesEntity) {
    %>
    <tr>
        <td><%=clothes.getClothesId()%>
        </td>
        <td><img src="../clothes/<%=clothes.getPhoto()%>" style="width: 50px;height: 50px;"></td>
        <td><%=clothes.getName_cloth()%>
        </td>
        <td><%=clothes.getBrande()%>
        </td>
        <td><%=clothes.getPrice()%>
        </td>
        <td><%=clothes.getClothesCategory()%>
        </td>
        <td><%=clothes.getStatus()%>
        </td>
        <td>
            <a href="edit_clothes.jsp?id=<%=clothes.getClothesId()%>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i>Edit </a>
            <a href="../delete?id=<%=clothes.getClothesId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i>Delete</a>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>
<div style="margin-top: 600px">
    <div>
        <%@include file="footer.jsp" %>
    </div>
</div>
</body>
</html>
