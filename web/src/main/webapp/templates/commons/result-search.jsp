<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuhalang
  Date: 11/14/19
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.nmcnpm.web.model.Product" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.taglibs.standard.Version" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lazy</title>
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
<jsp:include page="../commons/header.jsp"></jsp:include>

<div class="container" id="main">
    <div class="row w-100">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="col-lg-12"><h2>Kết quả tìm kiếm cho '${key}'</h2></div>
                </div>
                <div class="panel-body">
                    <div class="row w-100">
                        <c:choose>
                            <c:when test="${head!=null}">
                                <div class="col-sm-3">
                                    <div class="card" style="max-width: 15rem;">
                                        <a href="#" class="card-link"> <img
                                                src="${head.image}"
                                                class="card-img-top" alt="image"
                                                style="height:200px;width:fit-content;">
                                            <div class="card-body">
                                                <p class="card-title"
                                                   style="font-size: 0.8em;line-height: 1.2;">${head.name}</p>
                                                <p class="card-text">
                                                    <b>${head.price} VND</b>
                                                    <span class="sale-tag"><small>-12%</small></span>
                                                </p>
                                                <div class="row">
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="far fa-star"></span>
                                                    <span class="far fa-star"></span>
                                                </div>
                                            </div>
                                        </a>

                                    </div>
                                </div>
                            </c:when>
                        </c:choose>
                        <c:forEach items="${products}" var="product">
                            <c:choose>
                                <c:when test="${head !=null && head.productID!=product.productID}">
                                    <div class="col-sm-3">
                                        <div class="card" style="max-width: 15rem;">
                                            <a href="#" class="card-link"> <img
                                                    src="${product.image}"
                                                    class="card-img-top" alt="image"
                                                    style="height:200px;width:fit-content;">
                                                <div class="card-body">
                                                    <p class="card-title"
                                                       style="font-size: 0.8em;line-height: 1.2;">${product.name}</p>
                                                    <p class="card-text">
                                                        <b>${product.price} VND</b>
                                                        <span class="sale-tag"><small>-12%</small></span>
                                                    </p>
                                                    <div class="row">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="far fa-star"></span>
                                                        <span class="far fa-star"></span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../commons/footer.jsp"></jsp:include>
</body>
</html>