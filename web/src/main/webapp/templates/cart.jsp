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
<div class="container main" >
<div class="row w-100">
<div class="col-sm-9 content-left">
<div class="container" id="item">
                    <div class="row" >
                        <div class="col-sm-2" id="img-thumb"><img style="width:100px;height:100px;" alt="" src="${pageContext.request.contextPath }/static/image/t%E1%BA%A3i%20xu%E1%BB%91ng%20(1).jpeg"></div>

                        <div class="col-sm-3" >
                            <a id="linkSp" href="#" style="color: blue; ">Điện thoại Oppo </a>

                            <p>Cung cấp bởi  <span><a href="#">Oppo</a></span></p><a href="#">xoa</a>
                        </div>

                        <div class="col-sm-2 price">
                            <p><strong>2.400.000 đ</strong></p>
                        </div>

                        <div class="col-sm-2" id="quantity">
                            <p>Số lượng</p>

                            <div class="input-group">
                                <div class="input-group-prepend">
                                  <button class="btn btn-outline-secondary" type="button"><i class="fas fa-plus"></i></button>
                                    <input type="text" style="width:40px;" class="form-control"value=1 name="quantity" >
                                    <button class="btn btn-outline-secondary" type="button"><i class="fas fa-minus"></i></button>
                              
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</div>

<div class="content-right col-sm-3">
 <div class="tinh-tien">
                <div class="each-row">
                    <div class="tam-tinh">
                        <p class="list-info-price"><span>Tạm tính:</span> <strong>4.075.000đ</strong></p>
                    </div>

                    <div class="">
                        <div class="total2 clearfix">
                            <span class="text-label">Thành tiền:</span>

                            <div class="amount" style="color:red;">
                                <p><strong>4.075.000đ</strong></p>

                                <p class="text-right"><small>(Đã bao gồm VAT nếu có)</small></p>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-large btn-block btn-danger btn-checkout" onclick="location.href='/checkout/shipping?is_sent_as_gift=0';return false;">Tiến hành đặt hàng</button>
                </div>
          
        </div>
        
</div>
</div>

</div>


<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
