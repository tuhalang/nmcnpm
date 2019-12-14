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
<div class="container mt-4" style="font-family: 'Montserrat', Helvetica, Arial, sans-serif;font-weight: lighter;">
    <div class="breadcrumb-wrap row w-100">
        <div class="container mt-2">
            <div class="row w-100">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}">Trang chủ</a></li>
                        <li class="active">/Theo dõi đơn hàng</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row w-100 mt-2">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body panel-group">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-body row w-100">
                                <div class="col-sm-2"><strong>Amount</strong></div>
                                <div class="col-sm-4"><strong>Address</strong></div>
                                <div class="col-sm-2"><strong>Created At</strong></div>
                                <div class="col-sm-1"><strong>Status</strong></div>
                                <div class="col-sm-1"><strong>Payment</strong></div>
                                <div class="col-sm-1"><strong>View</strong></div>
                            </div>
                        </div>
                        <c:forEach items="${orderDto.listOfData}" var="order">
                            <div class="panel panel-default">
                                <div class="panel-body w-100 row">
                                    <div class="col-sm-2"><strong>${order.amount}</strong></div>
                                    <div class="col-sm-4"><strong>${order.customer.address}</strong></div>
                                    <div class="col-sm-2"><strong>${order.createdAt}</strong></div>
                                    <div class="col-sm-1" style="overflow-x: hidden;">
                                        <strong>${order.orderStatus}</strong></div>
                                    <div class="col-sm-1"><strong>${order.paymentMethod}</strong></div>
                                    <div class="col-sm-1">
                                        <a
                                                href="${pageContext.request.contextPath}/user/track_order?orderId=${order.orderID}"
                                                class="btn btn-light"><i class="fa fa-eye"
                                                                         aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                        <!-- pagination -->
                        <div class="row w-100 mt-4">
                            <nav class="col-lg-12" aria-label="pagination">
                                <ul class="pagination" style="width: fit-content !important;left:50%;transform: translateX(-50%);position: relative;">
                                    <c:if test="${orderDto.currentPage == 1}">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1">Previous</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link"
                                               href="${pageContext.request.contextPath}/admin/order?currentPage=1">1 <span
                                                    class="sr-only">(current)</span></a>
                                        </li>
                                        <c:if test="${orderDto.totalPages > 1}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="${pageContext.request.contextPath}/admin/order?currentPage=2">2</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${orderDto.totalPages > 2}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="${pageContext.request.contextPath}/admin/order?currentPage=3">3</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${orderDto.totalPages > 1}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                   href="${pageContext.request.contextPath}/admin/order?currentPage=2">Next</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${orderDto.totalPages == 1}">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </c:if>
                                    </c:if>

                                    <c:if test="${orderDto.currentPage > 1}">
                                        <li class="page-item">
                                            <a class="page-link"
                                               href="${pageContext.request.contextPath}/admin/order?currentPage=${orderDto.currentPage-1}"
                                               tabindex="-1">Previous</a>
                                        </li>
                                        <li class="page-item"><a class="page-link"
                                                                 href="${pageContext.request.contextPath}/admin/order?currentPage=${orderDto.currentPage-1}">${orderDto.currentPage-1}</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link"
                                               href="${pageContext.request.contextPath}/admin/order?currentPage=${orderDto.currentPage}">${orderDto.currentPage}
                                                <span class="sr-only">(current)</span></a>
                                        </li>
                                        <c:if test="${orderDto.totalPages > orderDto.currentPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="${pageContext.request.contextPath}/admin/order?currentPage=${orderDto.currentPage+1}">${orderDto.currentPage+1}</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${orderDto.totalPages > orderDto.currentPage}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                   href="${pageContext.request.contextPath}/admin/order?currentPage=${orderDto.currentPage+1}">Next</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${orderDto.totalPages <= orderDto.currentPage}">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </c:if>
                                    </c:if>
                                </ul>
                            </nav>
                        </div>

                        <div class="panel panel-default">
                            <%--<%@ include file="pagination.jsp"%>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
