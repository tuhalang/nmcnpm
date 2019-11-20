<%--
  Created by IntelliJ IDEA.
  User: tuhalang
  Date: 11/16/19
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/signin">
        <input type="text" name="txtUsername" placeholder="username">
        <input type="password" name="txtPassword" placeholder="password">
        <input type="submit" value="SignIn">
    </form>
</body>
</html>
