<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuhalang
  Date: 11/14/19
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/card.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-4.0.0/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome-5.11.2/css/all.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/order-3.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

	<script src="${pageContext.request.contextPath}/static/jquery-3.4.1/jquery-3.4.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap-4.0.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="row shipping-header">
	<div class="cont">
		<ul class="progressbar">
			<li class="active">Đăng Nhập</li>
			<li class="active">Địa Chỉ Giao Hàng</li>
			<li>Thanh Toán & Đặt Mua</li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="container">
		<div class="wrap">
			<div class="row row-style-2">
				<div class="col-lg-8 has-padding">
					<div class="panel panel-default payment">
						<div class="panel-body">
							<form class="form-hozirontal hide-block" role="form" id="form-payment" action="${pageContext.request.contextPath}/order" method="post">
								<h3 class="step-title">1. Chọn hình thức giao hàng</h3>
								<div class="panel panel-default">
									<div class="panel-body">
										<div id="panel-shipping-plan">


											<script>
												window.shippingPlanCode = '1';
											</script>
											<!--    supportedShippingPlans -->

											<div class="form-group row row-style-3" id="shipping-1">
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
													<label class="icheck-wrap">
														<div class="iradio_square-blue checked" style="position: relative;"><input checked="" type="radio" name="shipping_plan" value="1" id="plan-1" class="icheck plan" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
													</label>
												</div>
												<div class="col-lg-11 col-md-11 col-sm-11 col-xs-10">
													<label for="plan-1" class="control-label is-large">
														<!-- Name, Estimate Time, Fee -->
														<!-- // normal orders -->
														<div class="shipping-method-option">
															<div class="shipping-method-option__info">
																<span class="shipping-method-option__info__free">
																Miễn phí                                        </span>
																<span class="shipping-method-option__info__name">
																Giao hàng tiêu chuẩn                                </span>
															</div>
														</div>
													</label>


												</div>
											</div>
											<div class="multi-shipment">
												<ul class="multi-shipment__items">
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div id="choose_payment_method">
									<h3 class="step-title">2. Chọn hình thức thanh toán</h3>
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="form-group row row-style-3  method_payment_cod">
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
													<label class="icheck-wrap">
														<div class="iradio_square-blue checked" style="position: relative;"><input type="radio" name="selected_payment_method" value="cod" id="cod" class="icheck js-icheck payment-method" checked="checked" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
													</label>
												</div>

												<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
													<label for="cod" class="control-label is-large">
														Thanh toán tiền mặt khi nhận hàng        </label>
												</div>

											</div>
										</div>
									</div>
								</div>
								<div class="form-group row end">
									<div class="col-lg-6">
										<button type="submit" id="btn-placeorder" class="btn btn-block btn-default btn-checkout" admicro-data-event="100118" admicro-data-auto="1" admicro-data-order="false">ĐẶT MUA</button>
										<p class="note">(Xin vui lòng kiểm tra lại đơn hàng trước khi Đặt Mua)</p>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>


				<div class="col-lg-4">
					<div class="panel panel-default cart">
						<div class="panel-body">
							<div class="order">
								<span class="title">
									Địa chỉ giao hàng
								</span>
								<a href="" class="btn btn-default btn-custom1">Sửa</a>
							</div>
							<div class="information">
								<h6>${customer.name}</h6>
								<p class="end">${customer.address}<br>Việt Nam<br>Điện thoại: ${customer.phone}</p>
							</div>
						</div>
					</div>

					<div id="panel-cart">
						<div class="panel panel-default cart">
							<div class="panel-body">
								<div class="order">
									<span class="title">Đơn Hàng</span>
									<span class="title"> (${orderDtos.listOfdata.size()} sản phẩm)</span>

									<a href="/checkout/cart/" class="btn btn-default btn-custom1">Sửa</a>
								</div>
								<c:set var="amount" value="${0}" />
								<c:forEach items="${orderDtos.listOfdata}" var="orderDto" varStatus="status">
									<c:set var="amount" value="${amount + orderDto.product.price * orderDto.quantity}" />
									<div class="product">
										<div class="item">
											<p class="title">
												<strong>${orderDto.quantity} x</strong><a href="" target="_blank">${orderDto.product.name}</a>
											</p>


											<p class="price text-right">
												<span>${orderDto.product.price * orderDto.quantity}đ </span>
											</p>
										</div>
									</div>
								</c:forEach>
								<p class="list-info-price">
									<b>Tạm tính</b>
									<span>${amount}đ</span>
								</p>
								<p class="list-info-price">
									<b>Phí vận chuyển</b>
									<span>0đ</span>
								</p>

								<p class="total2">
									Thành tiền:
									<span>${amount}đ </span>
								</p>
								<p class="text-right">
									<i>(Đã bao gồm VAT nếu có)</i>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="shipping-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p class="terms-text">Bằng việc tiến hành Đặt Mua, khách hàng đồng ý với các Điều Kiện Giao Dịch Chung được ban hành bởi Lazyyy:</p>
					<p class="terms">
						<a href="https://tiki.vn/quy-che-hoat-dong-sgdtmdt" target="_blank">Quy chế hoạt động</a>|
						<a href="https://hotro.tiki.vn/hc/vi/articles/115005575826" target="_blank">Chính sách giải quyết khiếu nại</a>|
						<a href="https://tiki.vn/thong-tin/dich-vu-bao-hanh-dien-tu-dien-lanh" target="_blank">Chính sách bảo hành</a>|
						<a href="https://tiki.vn/bao-mat-thanh-toan" target="_blank">Chính sách bảo mật thanh toán</a>|
						<a href="https://tiki.vn/bao-mat-thong-tin-ca-nhan" target="_blank">Chính sách bảo mật thông tin cá nhân</a>
					</p>
					<p class="copyright">© 2019 - Bản quyền của Công Ty Cổ Phần Lazyyy</p>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
