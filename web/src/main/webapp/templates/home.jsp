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
    <link rel="stylesheet" href="<c:url value="/static/css/card.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/bootstrap-4.0.0/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/fontawesome-5.11.2/css/all.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/header.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <script src="<c:url value="/static/jquery-3.4.1/jquery-3.4.1.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="<c:url value="/static/bootstrap-4.0.0/js/bootstrap.min.js"/>"></script>
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
                    <c:forEach items="productDto.listOfdata" var="product" varStatus="status">
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
    <div class="row w-100">
<%--        <ul class="pagination mx-auto justify-content-center">--%>
<%--            <li class="page-item">--%>
<%--                <a class="page-link" href="home?page=${currentPage-1}" aria-label="Previous">--%>
<%--                    <span aria-hidden="true">«</span>--%>
<%--                    <span class="sr-only">&laquo;</span>--%>
<%--                </a>--%>
<%--            </li>--%>
<%--&lt;%&ndash;            <li class="page-item active"><a class="page-link" href="#">1</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li class="page-item"><a class="page-link" href="#">2</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li class="page-item"><a class="page-link" href="#">3</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li class="page-item"><a class="page-link" href="#">4</a></li>&ndash;%&gt;--%>
<%--            <c:forEach begin="1" end="${productDto.totalPages}" var="i">--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${productDto.currentPage eq i}">--%>
<%--                        <li class="page-item active"><a class="page-link" href="#">${i}</a></li>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <li class="page-item"><a class="page-link" href="home?page=${i}">${i}</a></li>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </c:forEach>--%>
<%--            <li class="page-item">--%>
<%--                <a class="page-link" href="home?page=${productDto.currentPage+1}" aria-label="Next">--%>
<%--                    <span aria-hidden="true">»</span>--%>
<%--                    <span class="sr-only">&raquo;</span>--%>
<%--                </a>--%>
<%--            </li>--%>
<%--        </ul>--%>
    </div>
</div>

<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
