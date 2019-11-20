<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/usermanagement.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap-4.0.0/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/fontawesome-5.11.2/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/header.css">
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap"
	rel="stylesheet">

<script
	src="${pageContext.request.contextPath}/static/jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap-4.0.0/js/bootstrap.min.js"></script>
<title>User Account</title>
</head>
<body>
	<jsp:include page="commons/header.jsp"></jsp:include>

	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row w-100">
				<div class="col-md-12">
					<ol class="breadcrumb">
						<li><a href="/">Trang chủ</a></li>
						<li><i class="fas fa-angle-double-right"> </i></li>
						<li class="active">Thông tin tài khoản</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
<div class="container">
<div class="row w-100">

		<div id="left">
			<div class="menu dropdown">
				<h6 class="dropdown-header">Danh mục</h6>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#"><i class="fas fa-user-circle"></i>
					<span> Thông tin tài khoản </span></a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#"> <i class="far fa-bell"></i> <span>Thông
						báo của tôi</span></a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#"><i class="fas fa-receipt"></i>
					<span> Đơn hàng của tôi </span></a>
				
			</div>
		</div>

		<div id="content">
			
				<!--  <p class="text-error-link-social"><span class='cross'></span>Tài khoản mạng xã hội này đã được liên kết với một tài khoản Tiki khác. Vui lòng kết nối tài khoản khác.</p> -->

				<h1 class="have-margin">Thông tin tài khoản</h1>

				<div class="account-profile register-form">
					<form class="content" method="post" action="/customer/account/edit"
						id="edit-account">
						<input type="hidden" name="TIKI_CSRF_TOKEN"
							value="RU4reVlQd3lvTGwvSkgvQjM3YVlSQT09"> <input
							type="hidden" name="verify" value="1">

						<div class="form-group">
							<p class="login-lable">Tài khoản đăng nhập bằng Google</p>
							<label class="control-label" for="full_name">Họ tên</label>

							<div class="input-wrap">
								<input type="text" name="full_name" class="form-control"
									id="full_name" value="${user.name }" placeholder="Họ tên">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label" for="phone_number">Số điện
								thoại</label>

							<div class="input-wrap">
								<input type="text" disabled value="${user.phone }"
									class="form-control" name="phone_number" id="phone_number"
									placeholder="Số điện thoại">
							</div>
						</div>


						<div class="form-group">
							<label class="control-label" for="email">Email</label>

							<div class="input-wrap">
								<input type="email" disabled value="${user.email }"
									class="form-control" name="email" id="form_email"
									placeholder="Email">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label">Địa chỉ</label>

							<div class="input-wrap">
								<input type="text" name="address" class="form-control"
									id="address" value="${user.address }" placeholder="Địa chỉ">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">Tỉnh thành</label>

							<div class="input-wrap">
								<input type="text" name="cityRegion" class="form-control"
									id="cityRegion" value="${user.name }" placeholder="Tỉnh thành">
							</div>
						</div>
						<div class="form-group">
							<div class="input-wrap margin">
								<!-- <label for="change-password" class="icheck-wrap">
                                    <input type="checkbox" id="change-password" class="icheck js-icheck" >
                                    Thay đổi mật khẩu.
                                </label> -->
								<label class="checkbox"><input type="checkbox"
									id='is_change_pass' name="is_change_pass" value="checked">
									Thay đổi mật khẩu</label>
							</div>
						</div>

						<div class="password-group">
							<div class="form-group">
								<label class="control-label" for="old_password">Mật khẩu
									cũ</label>

								<div class="input-wrap">
									<input type="password" name="old_password" class="form-control"
										id="old_password" value="" autocomplete="off"
										placeholder="Nhập mật khẩu cũ">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label" for="new-password">Mật khẩu
									mới</label>

								<div class="input-wrap">
									<input type="password" name="new_password" class="form-control"
										id="new_password" value="" autocomplete="off"
										placeholder="Mật khẩu từ 6 đến 32 ký tự">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label" for="re_new_password">Nhập
									lại</label>

								<div class="input-wrap">
									<input type="password" name="re_new_password"
										class="form-control" id="re_new_password" value=""
										autocomplete="off" placeholder="Nhập lại mật khẩu mới">
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="input-wrap margin">
								<input type="hidden" name="customer_birthdate" value="">
								<button type="submit" class="btn btn-info btn-block btn-update">Cập
									nhật</button>
							</div>
						</div>
					</form>
				</div>
			</div>
</div>
		</div>
		<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>
