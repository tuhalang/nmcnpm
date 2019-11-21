<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/css/slider.css">
<script
	src="${pageContext.request.contextPath}/static/bootstrap/jquery-3.3.1.slim.min.js">
 </script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>

<title>slider</title>
</head>

<body>


	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-7 col-md12">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>

					</ol>

					<div class="carousel-inner">
						<div class="carousel-item active">
							<a
								href="https://tiki.vn/chuong-trinh/sieu-thi-ta-bim?src=home_v4_main_banner.s1.b43675"><img
								class="d-block w-100"
								src="${pageContext.request.contextPath}/static/image/ce4a457e2052e46a7b89227116f98b0a.png"
								alt="First slide"> </a>
						</div>

						<div class="carousel-item">
							<a
								href="https://tiki.vn/chuong-trinh/sieu-sale-cong-nghe?src=home_v4_main_banner.s2.b42962"><img
								class="d-block w-100"
								src="${pageContext.request.contextPath}/static/image/smartphone.png"
								alt="Second slide"></a>
						</div>

						<div class="carousel-item">
							<a
								href="https://tiki.vn/chuong-trinh/sieu-thi-ta-bim?src=home_v4_main_banner.s1.b43675"><img
								class="d-block w-100"
								src="${pageContext.request.contextPath}/static/image/ce4a457e2052e46a7b89227116f98b0a.png"
								alt="First slide"> </a>
						</div>
						<div class="carousel-item">
							<a
								href="https://tiki.vn/chuong-trinh/sieu-sale-cong-nghe?src=home_v4_main_banner.s2.b42962"><img
								class="d-block w-100"
								src="${pageContext.request.contextPath}/static/image/smartphone.png"
								alt="Second slide"></a>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>

				<script type="text/javascript">
$('.carousel').carousel({
        interval:2000
    })</script>
    
			</div>
			<div class="col"></div>
		</div>
	</div>
</body>
</html>
