<%--
  Created by IntelliJ IDEA.
  User: tao_thao
  Date: 17/11/2019
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

   <a href="<%= request.getRequestURI() %>">Try Again</a>
    <form action="${pageContext.request.contextPath}/addItemCart?view=${pageContext.request.getRequestURI}" method="get">
        <input type="submit" value="abc">
    </form>
     <form action="${pageContext.request.contextPath}/accountInfo" method="post">
        <input type="submit" value="ab">
    </form>
</body>
</html>
