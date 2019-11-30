<%--
  Created by IntelliJ IDEA.
  User: tuhalang
  Date: 11/16/19
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/signup">
        ${pageContext.request.contextPath}
        <input type="text" name="txtUsername" placeholder="username">
        <input type="password" name="txtPassword" placeholder="password">
        <input type="password" name="txtRePass" placeholder="re-pass">
        <input type="text" name="txtName" placeholder="name">
        <input type="text" name="txtPhone" placeholder="phone">
        <input type="text" name="txtEmail" placeholder="email">
        <input type="text" name="txtAddress" placeholder="address">
        <input type="submit" value="SignUp">
    </form>
</body>
</html>
