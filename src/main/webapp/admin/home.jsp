<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin:Home</title>
    <%@include file="css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<style type="text/css">
    a {
        text-decoration: none;
        color: black;
    }

    a:hover {
        text-decoration: none;
        color: black;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <a href="add_clothes.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fas fa-plus-square fa-3x text-primary"></i>
                        <h4>Add Clothes</h4>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-md-3">
            <div class="card">
                <a href="all_clothes.jsp">
                    <div class="card-body text-center">
                        <i class="fas fa-heart fa-3x text-warning"></i>
                        <h4>All Clothes</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card">
                <a href="orders.jsp">
                    <div class="card-body text-center">
                        <i class="fas fa-box-open fa-3x text-danger"></i>
                        <h4>Orders</h4>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-sign-out-alt fa-3x text-success"></i>
                    <h4>Logout</h4>
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
