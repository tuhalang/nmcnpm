<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css"
	type="text/css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/card.css"
	type="text/css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/card.css"
	type="text/css">
<title>card product</title>
</head>

<body>
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
</body>
</html>
