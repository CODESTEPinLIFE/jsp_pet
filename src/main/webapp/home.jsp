<%--
  Created by IntelliJ IDEA.
  User: st63r
  Date: 22.08.2023
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Home:Home</h1>

<c:if test="${not empty userobj}">
    <h1>Name:${userobj.name}</h1>
    <h1>Email:${userobj.email}</h1>
</c:if>
</body>
</html>
