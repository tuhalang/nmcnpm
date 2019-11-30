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
    <title>Cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/cart.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-4.0.0/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome-5.11.2/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/static/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-4.0.0/js/bootstrap.min.js"></script>
    <style type="text/css">

    </style>
</head>
<body>

<jsp:include page="commons/header.jsp"></jsp:include>
<div class="container">
    <div class="breadcrumb-wrap row w-100">
        <div class="container mt-2">
            <div class="row w-100">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Trang chủ/</a></li>
                        <li class="active">Giỏ hàng</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <c:choose>
        <c:when test="${cart.numberOfItems >0}">
            Bạn có  ${cart.numberOfItems} sản phẩm
        </c:when>
        <c:otherwise>
            Bạn chưa có sản phẩm nào
        </c:otherwise>
    </c:choose>
    <div class="row main w-100">
        <div class="row w-100 mt-4">
            <div class="col-sm-9 content-left">
                <c:forEach var="item" items="${cart.items}" varStatus="iter">
                    <c:set var="product" value="${item.product}">
                    </c:set>
                    <div class="container" id="item">
                        <div class="row w-100 row-bordered mb-2">
                            <div class="col-sm-2" id="img-thumb"><img style="width:100px;height:100px;" alt=""
                                                                      src="${product.thumbImage}">
                            </div>

                            <div class="col-sm-6">
                                <div class="row w-100">
                                    <a id="linkSp" href="#" style="color: blue; ">${product.name} </a>
                                </div>
                                <btn class="btn btn-success" onclick="deleteProduct(${item.product.productID})">Xoá</btn>
                            </div>

                            <div class="col-sm-2 price">
                                <p><strong>${product.price} đ</strong></p>
                            </div>

                            <div class="col-sm-2" id="quantity">
                                <p>Số lượng</p>

                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <button class="btn btn-outline-secondary" type="button"
                                                onclick="inc(${item.product.productID},${item.quantity+1})">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                        <input type="text" style="width:40px;" class="form-control"
                                               value="${item.quantity}" id="quantity_" onchange="location.href='<c:url
                                                value="/shopping_cart?action=update&productID=${item.product.productID}&quantity=${item.quantity}"/>';return false;">
                                        <button class="btn btn-outline-secondary" type="button"
                                                onclick="dsc(${item.product.productID},${item.quantity-1})">
                                            <i class="fas fa-minus"></i>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </c:forEach>


            </div>

            <div class="content-right col-sm-3">
                <div class="tinh-tien">
                    <div class="row w-100">
                        <div class="tam-tinh">
                            <p class="list-info-price"><span>Tạm tính:</span> <strong>
                                <c:choose>
                                    <c:when test="${cart.amount==0|| cart.amount==null}"> 0 <span>đ</span></c:when>
                                    <c:otherwise>
                                        ${cart.amount} <span>VND</span>
                                    </c:otherwise>
                                </c:choose>
                            </strong></p>
                        </div>
                    </div>
                    <div class="row w-100">
                        <div class="total2 each-row">
                            <div class="each-row"><span> Thành tiền: </span></div>
                            <div class="amount each-row" style="color:red;">
                                <c:choose>
                                    <c:when test="${cart.amount==0 || cart.amount==null}">0 đ</c:when>
                                    <c:otherwise>
                                        ${cart.amount} đ
                                    </c:otherwise>
                                </c:choose>

                                <p><small>(Đã bao gồm VAT nếu có)</small></p>
                            </div>
                        </div>
                    </div>
                    <div class="row w-100">
                        <form action="${pageContext.request.contextPath}/confirm_address" method="post">
                        <button type="submit" class="btn btn-large btn-block btn-danger btn-checkout"
<%--                                onclick="location.href='<c:url value="/confirm_address"/>';--%>
                                return false;">Tiến
                            hành
                            đặt
                            hàng
                        </button>
                        </form>
                    </div>

                </div>

            </div>
        </div>

    </div>
</div>

<jsp:include page="commons/footer.jsp"></jsp:include>
<script>
    function dsc(a,b) {
        var i=document.getElementById("quantity_").value;
        if (parseInt(i)>1) document.getElementById("quantity_").value=parseInt(i)-1;
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/shopping_cart?action=update&productID="+a+"&quantity="+b,
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            type: 'GET',
            success: function (response) {
            },
            error: function (x, e) {
                console.log(e)
            }
        });
        location.reload(false);
    };
    function inc(a,b) {
        var i=document.getElementById("quantity_").value;
        if (parseInt(i)>1) document.getElementById("quantity_").value=parseInt(i)-1;
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/shopping_cart?action=update&productID="+a+"&quantity="+b,
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            type: 'GET',
            success: function (response) {
            },
            error: function (x, e) {
                console.log(e)
            }
        });
        location.reload(false);
    };
    function deleteProduct(a) {
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/shopping_cart?action=remove&productID="+a,
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            type: 'GET',
            success: function (response) {
            },
            error: function (x, e) {
                console.log(e)
            }
        });
        location.reload(false);
    };
</script>
</body>
</html>
