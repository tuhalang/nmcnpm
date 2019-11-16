<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuhalang
  Date: 11/14/19
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/card.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-4.0.0/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome-5.11.2/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/static/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-4.0.0/js/bootstrap.min.js"></script>
    <style>
        #main {
            margin-bottom: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="commons/header.jsp"></jsp:include>

<div class="container" id="main">
    <div class="row w-100">
        <%--        <c:forEach items="${products}" var="product">--%>

        <%--        </c:forEach>--%>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="col-lg-12"><h2>Category</h2></div>
                </div>
                <div class="panel-body">
                    <c:forEach begin="1" end="10" var="i">
                        <div class="panel panel-default row w-100 mb-2">
                            <div class="panel-body row w-100">
                                <c:forEach begin="1" end="4" var="j">
                                    <jsp:include page="cardProduct.jsp"></jsp:include>
                                </c:forEach>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
