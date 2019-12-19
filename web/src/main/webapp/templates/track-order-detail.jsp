<%--
  Created by IntelliJ IDEA.
  User: tao_thao
  Date: 13/12/2019
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lazy</title>
    <link rel="stylesheet" href="<c:url value="/static/css/card.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/bootstrap-4.0.0/css/bootstrap.css"/>">
    <%--    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.min.css"/>">--%>
    <link rel="stylesheet" href="<c:url value="/static/fontawesome-5.11.2/css/all.css"/>">
    <%--    <link rel="stylesheet" href="<c:url value="/static/css/admin.css"/>">--%>
    <link rel="stylesheet" href="<c:url value="/static/css/datepicker3.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/header.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    <script src="<c:url value="/static/jquery-3.4.1/jquery-3.4.1.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="<c:url value="/static/bootstrap-4.0.0/js/bootstrap.min.js"/>"></script>
</head>
<body>
<jsp:include page="commons/header.jsp"></jsp:include>
<div class="container mt-4" style="font-family: 'Montserrat', Helvetica, Arial, sans-serif;font-weight: 550;">
<div class="breadcrumb-wrap row w-100">
    <div class="container mt-2">
        <div class="row w-100">
            <div class="col-lg-12">
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}">Trang chủ</a></li>
                    <li class="active">/Đơn hàng chi tiết</li>
                </ol>
            </div>
        </div>
    </div>
</div>
    <div class="row w-100">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body panel-group">
                    <div class="panel-group">
                        <div class="panel panel-default mt-3 pb-2" style="border-bottom: 1px solid rgba(0,0,0,0.1);">
                            <h3>Thông tin đơn hàng</h3>
                            <div class="panel-body row w-100 mt-2">
                                <div class="col-sm-3"><strong>Ngày tạo</strong></div>
                                <div class="col-sm-3"><strong>Sửa đổi lần cuối</strong></div>
                                <div class="col-sm-3"><strong>Trạng thái</strong></div>
                                <div class="col-sm-3"><strong>Thanh toán</strong></div>
                            </div>
                            <div class="panel-body row w-100">
                                <div class="col-sm-3">${order.createdAt}</div>
                                <div class="col-sm-3">${order.lastModifiedAt}</div>
                                <div class="col-sm-3" style="color: red">${order.orderStatus}</div>
                                <div class="col-sm-3">${order.paymentMethod}</div>
                            </div>

                        </div>

                        <div class="panel panel-default mt-3 pb-2"style="border-bottom: 1px solid rgba(0,0,0,0.1);">
                            <h3>Thông tin khách hàng</h3>
                            <div class="panel-body row w-100 mt-2">
                                <div class="col-sm-2"><strong>Tên</strong></div>
                                <div class="col-sm-5"><strong>Địa chỉ</strong></div>
                                <div class="col-sm-3"><strong>Email</strong></div>
                                <div class="col-sm-2"><strong>Điện thoại</strong></div>
                            </div>
                            <div class="panel-body row w-100">
                                <div class="col-sm-2">${order.customer.name}</div>
                                <div class="col-sm-5">${order.customer.address}</div>
                                <div class="col-sm-3">${order.customer.email}</div>
                                <div class="col-sm-2">${order.customer.phone}</div>
                            </div>
                        </div>

                        <div class="panel panel-default mt-3 mb-3 pb-2" style="border-bottom: 1px solid rgba(0,0,0,0.1);">
                            <h3>Thông tin sản phẩm</h3>
                            <div class="panel-body row w-100 mt-2">
                                <div class="col-sm-6"><strong>Tên</strong></div>
                                <div class="col-sm-3"><strong>Giá</strong></div>
                                <div class="col-sm-3"><strong>Số lượng</strong></div>
                            </div>
                            <c:forEach items="${order.orderedProducts}" var="orderProduct">
                                <div class="panel-body row w-100">
                                    <div class="col-sm-6" >
                                        <a href="${pageContext.request.contextPath}/detail?productID=${orderProduct.product.productID}" style="color: deepskyblue !important;">
                                                ${orderProduct.product.name}
                                        </a>
                                    </div>
                                    <div class="col-sm-3">${orderProduct.product.price}</div>
                                    <div class="col-sm-3">${orderProduct.quantity}</div>
                                </div>
                            </c:forEach>
                            <div class="panel-body row w-100 mt-5">
                                <div class="col-sm-5"></div>
                                <div class="col-sm-7" style="color: deepskyblue;"><h4>Total : ${order.amount}</h4></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/static/jquery-3.4.1/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url value="/static/jquery-3.4.1/chart.min.js"/>"></script>
<script src="<c:url value="/static/jquery-3.4.1/chart-data.js"/>"></script>
<script src="<c:url value="/static/jquery-3.4.1/easypiechart.js"/>"></script>
<script src="<c:url value="/static/jquery-3.4.1/easypiechart-data.js"/>"></script>
<script src="<c:url value="/static/jquery-3.4.1/bootstrap-datepicker.js"/>"></script>
<script src="<c:url value="/static/jquery-3.4.1/custom.js"/>"></script>
<script src="<c:url value="/static/bootstrap-4.0.0/js/bootstrap.min.js"/>"></script>
<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
