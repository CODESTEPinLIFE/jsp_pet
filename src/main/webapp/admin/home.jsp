<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin:Home</title>
    <%@include file="css.jsp" %>
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
</head>
<body>
<c:if test="${empty userobj}">
    <c:redirect url="../login.jsp"/>
</c:if>

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
                <a data-toggle="modal" data-target="#exampleModalCenter">
                    <div class="card-body text-center">
                        <i class="fas fa-sign-out-alt fa-3x text-success"></i>
                        <h4>Logout</h4>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-center" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelTitle">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    <h4>Do You Want logout</h4>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
                </div>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<!-- end model -->

<div style="margin-top: 600px">
    <div>
        <%@include file="footer.jsp" %>
    </div>
</div>
</body>
</html>
