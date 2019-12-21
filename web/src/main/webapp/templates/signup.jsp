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
        <input type="text" name="txtUsername" placeholder="tên tài khoản">
        <input type="password" name="txtPassword" placeholder="mật khẩu">
        <input type="password" name="txtRePass" placeholder="nhập lại mật khẩu">
        <input type="text" name="txtName" placeholder="tên">
        <input type="text" name="txtPhone" placeholder="số điện thoại">
        <input type="text" name="txtEmail" placeholder="email">
        <input type="text" name="txtAddress" placeholder="địa chỉ">
        <input type="submit" value="Đăng kí">
    </form>
</body>
</html>
