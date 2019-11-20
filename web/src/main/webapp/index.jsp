<%--
  Created by IntelliJ IDEA.
  User: hungpv
  Date: 24/10/2019
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Hello world
    <form action="${pageContext.request.contextPath}/admin/products" method="get">
        <input type="submit" value="click">
    </form>
</body>
</html>
