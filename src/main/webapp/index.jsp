<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<meta charset="ISO-8859-1">
<title>Hello</title>
<%@include file="all_component/css.jsp" %>
<style type="text/css">
    .back-img {
        height: 50vh;
        width: 100%;
        background: url("img/img_1.png") no-repeat;
        background-size: cover;
    }

    .crd-ho:hover {
        background-color: #fcf7f7;
    }
</style>


<body style="background-color: #f7f7f7">
<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
    <h2 class="text-center text-danger">Cloth manage</h2>
</div>
<!--Start Rec-->
<div class="container">
    <h3 class="text-center">Recent Cloth</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class = "text-center mt-1">
        <a href ="" class = "btn btn-danger btn-sm text-white">View All</a>
    </div>

</div>
<!--End Rec-->
<hr>
<!--Start New-->
<div class="container">
    <h3 class="text-center">New Cloth</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class = "text-center mt-1">
        <a href ="" class = "btn btn-danger btn-sm text-white">View All</a>
    </div>

</div>
<!--End New-->
<hr>
<!--Start Old-->
<div class="container">
    <h3 class="text-center">Old Cloth</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="img/shirt.png" style="width: 150px;height: 200px" class="img-thumblin">
                    <p>Blue T-Shirt</p>
                    <p>test</p>
                    <p>Categories:New</p>
                    <div class="row text-center">
                        <a href="" class="btn btn-danger btn-sm">Add</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Information</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">10$</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class = "text-center mt-1">
        <a href ="" class = "btn btn-danger btn-sm text-white">View All</a>
    </div>
    <!--End Old-->
</div>
<%@include file ="all_component/footer.jsp"%>
</body>
</html>