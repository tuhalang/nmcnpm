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
    <title>Intro</title>
    <link rel="shortcut icon" href="<c:url value="/static/image/lazy.ico"/>">
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
<div class="container main mt-2">
    <div class="row">
        <ol class="breadcrumb col-sm-12">
            <li>
                <a href="#">
                    <em class="fa fa-home"></em>
                </a>
            </li>
            <li class="active">Home</li>
        </ol>
    </div>
    <%--    end -row       --%>
    <div class="row">
        <div class="col-sm-12">
            <h3>Giới thiệu về lazy</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div>Với mục tiêu tạo ra trải nghiệm mua sắm trực tuyến cho người dùng. Khi mua hàng tại lazy quý khách sẽ
                được hưởng những tiện ích sau:
                <ul>
                    <li><p>Dịch vụ chăm sóc khách hàng tận tình trước-trong-sau khi mua hàng</p></li>
                    <li><p>Sản phẩm đổi trả trong vòng 24h</p></li>
                    <li><p>Tích lũy điểm với lazy.vn</p></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h3>Thông tin với chúng tôi</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <ul>
                <li><p>Công ty cổ phẩn  lazy</p></li>
                <li><p>Địa chỉ :Tầng 73, Landmark 72, Nam Từ Liêm, Hà Nội</p></li>
                <li><p>Email:trandiep10121999@gmail.com</p></li>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
