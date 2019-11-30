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
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/bootstrap/css/card.css"
          type="text/css">
    <style>
        #main{
            margin-bottom: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <jsp:include page="commons/header.jsp"></jsp:include>

    <div class="container" id="main">
        <div class="row">

            <c:forEach items="${products}" var="product">
                <div class="col-3">
                    <div class="card" style="max-width: 15rem;">
                        <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                           class="card-link"> <img
                                src="${pageContext.request.contextPath}/${product.image}"
                                class="card-img-top" alt="Ảnh sản phẩm ">

                            <div class="card-body">
                                <p class="card-title">${product.name}</p>
                                <p class="card-text">
                                    <b>${product.price}</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                                </p>
                                <p>
                                    <span class="sale-price"><del>Giá so sánh</del></span>

                                </p>
                                <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>
                                </p>
                            </div>
                        </a>

                    </div>
                </div>
            </c:forEach>



            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

            <div class="col-3">
                <div class="card" style="max-width: 15rem;">
                    <a href="https://mil.ufl.edu/3744/docs/lcdmanual/characterset.html"
                       class="card-link"> <img
                            src="${pageContext.request.contextPath}/static/image/91201c275b863a12466c964436a945a6.png"
                            class="card-img-top" alt="Ảnh sản phẩm ">

                        <div class="card-body">
                            <p class="card-title">Nhãn sản phẩm</p>
                            <p class="card-text">
                                <b>giá chính thức</b> <span class="sale-tag"><small>
							phần trăm sale</small></span>
                            </p>
                            <p>
                                <span class="sale-price"><del>Giá so sánh</del></span>

                            </p>
                            <p>
					<span class="star-light"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i> <i class="fas fa-star"></i> <span
                            class="star-dark"> <i class="fas fa-star"></i> <i
                            class="fas fa-star"></i>
					</span>
					</span>



                            </p>
                        </div>
                    </a>

                </div>
            </div>

        </div>
    </div>

    <jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
