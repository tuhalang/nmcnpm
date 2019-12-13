<%@ page import="java.util.List" %>
<%@ page import="com.nmcnpm.web.model.ItemCart" %>
<%@ page import="com.nmcnpm.web.model.ShoppingItems" %>
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
    <title>Lazy</title>
    <link rel="shortcut icon" href="<c:url value="/static/image/lazy.ico"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/card.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/bootstrap-4.0.0/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/fontawesome-5.11.2/css/all.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/header.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/product-detail.css"/>">
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
    <div class="breadcrumb-wrap row w-100">
        <div class="container mt-2">
            <div class="row w-100">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="home?page=1&categoryId=0">Trang chủ/</a></li>
                        <li class="active">Chi tiết sản phẩm</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row w-100">
        <div class="col-lg-5">
            <img class="img-fluid"
                 src="${product.image}">
        </div>
        <div class="col-lg-7">
            <div class="panel panel-default">
                <div class="panel-heading overflow-hidden" style="border-bottom:1px solid rgba(0,0,0,0.4);">
                    <h2>${product.name}</h2>
                </div>
                <div class="panel-body">
                    <div class="row w-100" style="border-bottom:1px solid rgba(0,0,0,0.3); padding:20px;">
                        <div class="row w-100">Giá:<span style="color: red;">${product.price} đ</span></div>
<%--                        <div class="row w-100">Tiết kiệm :12%</div>--%>
<%--                        <div class="row w-100">Giá thị trường: <span style="color: red;">150.000 đ</span></div>--%>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="far fa-star"></span>
                        <span class="far fa-star"></span>
                    </div>
<%--                    <div class="row w-100" style="border-bottom:1px solid rgba(0,0,0,0.3); padding:20px;">--%>
<%--                        <ul id="description" class="list-unstyled">--%>
<%--                            <li>Dung lượng: 5200mAh</li>--%>
<%--                            <li>Voltage: 11.1V</li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
                    <p style="font-size:0.7em;"s>Số lượng</p>
                    <div class="row w-100">
                        <div class="col-sm-4" id="quantity">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <button class="btn btn-outline-secondary border-none" id="inc" style="border-radius:0;border:1px solid rgba(0,0,0,0.2);" type="button"><i class="fas fa-plus"></i>
                                    </button>
                                    <input type="text" style="width:40px;border-radius:0;border:1px solid rgba(0,0,0,0.2);" class="form-control" value="1" id="quantity_">
                                    <button class="btn btn-outline-secondary border-none" id="dsc" style="border-radius: 0;border:1px solid rgba(0,0,0,0.2);" type="button"><i class="fas fa-minus"></i>
                                    </button>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <button type="button" class="btn btn-primary" onclick="addToCart(${product.productID})">
                                <i class="fas fa-cart-plus"></i> Chọn mua
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row w-100 mt-3">
        <div class="panel panel-default col-lg-12">
            <div class="panel-heading" style="border-bottom:1px solid rgba(0,0,0,0.4);">
                <h2>Thông tin chi tiết sản phẩm</h2>
            </div>
            <div class="panel-body"  style="border-bottom:1px solid rgba(0,0,0,0.1);padding:2px;">
                ${productDetail.information}
            </div>
        </div>
    </div>
    <div class="row w-100 mt-2">
        <div class="panel panel-default col-lg-12">
            <div class="panel-heading" style="border-bottom:1px solid rgba(0,0,0,0.4);">
                <h2>Mô tả sản phẩm</h2>
            </div>
            <div class="panel-body" style="border-bottom:1px solid rgba(0,0,0,0.1);">
                <p>${product.descriptionDetail}</p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="commons/footer.jsp"></jsp:include>
<script>
    
    /**
     * decrease quantity product
     * */
    document.getElementById("dsc").addEventListener("click",function (ev) {
        var i=document.getElementById("quantity_").value;
        if (parseInt(i)>1) document.getElementById("quantity_").value=parseInt(i)-1;
    });
    
    /**
     * increase quantity product
     * */
    document.getElementById("inc").addEventListener("click",function (ev) {
       var i=document.getElementById("quantity_").value;
       document.getElementById("quantity_").value=parseInt(i)+1;
    });
    
    /**
     * add product to cart 
     * */
    function addToCart(productId) {
        const quantity = document.getElementById("quantity_").value;
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/api/cart",
            contentType: 'application/json;charset=utf-8',
            dataType: 'text',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                action: 1,
                productId: productId,
                quantity: quantity
            },
            type: 'get',
            success: function (response) {
                if (response=="1") alert("Thêm thành công")
                else alert("Thêm thất bại");
            },
            error: function (x, e) {
                console.log(e)
            }
        });
    }
</script>
</body>
</html>
