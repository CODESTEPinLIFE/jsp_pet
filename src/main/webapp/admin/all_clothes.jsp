<%--
  Created by IntelliJ IDEA.
  User: st63r
  Date: 23.08.2023
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin:All Clothes</title>
    <%@include file="css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>
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
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>
            <a href="#" class ="btn btn-sm btn-primary">Edit</a>
            <a href="#" class ="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>
            <a href="#" class ="btn btn-sm btn-primary">Edit</a>
            <a href="#" class ="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>
            <a href="#" class ="btn btn-sm btn-primary">Edit</a>
            <a href="#" class ="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>
    </tbody>
</table>
<div style="margin-top: 600px">
    <div>
        <%@include file="footer.jsp" %>
    </div>
</div>
</body>
</html>
