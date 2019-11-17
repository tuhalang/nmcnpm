<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">;
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../static/css/order-3.css">
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
							<form class="form-hozirontal hide-block" role="form" id="form-payment" action="" method="post">
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
													<label for="default" class="icheck-wrap">
														<div class="iradio_square-blue checked" style="position: relative;"><input checked="" type="radio" name="shipping_plan" value="1" id="plan-1" class="icheck plan" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
													</label>
												</div>
												<div class="col-lg-11 col-md-11 col-sm-11 col-xs-10">
													<label for="plan-1" class="control-label is-large">
														<!-- Name, Estimate Time, Fee -->
														<!-- // normal orders -->
														<div class="shipping-method-option">
															<div class="shipping-method-option__leadtime">
															Giao vào Thứ tư, 20/11                            </div>
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
													<label for="default" class="icheck-wrap">
														<div class="iradio_square-blue checked" style="position: relative;"><input type="radio" name="selected_payment_method" value="cod" id="cod" class="icheck js-icheck payment-method" checked="checked" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
													</label>
												</div>

												<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
													<label for="cod" class="control-label is-large">
													Thanh toán tiền mặt khi nhận hàng        </label>

												</div>

											</div>
											<div class="form-group row row-style-3  ">
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
													<label for="default" class="icheck-wrap">
														<div class="iradio_square-blue" style="position: relative;"><input type="radio" name="selected_payment_method" value="cybersource" id="cybersource" class="icheck js-icheck-3 payment-method" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
													</label>
												</div>

												<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
													<label for="cybersource" class="control-label is-large">
													Thanh toán bằng thẻ quốc tế Visa, Master, JCB        </label>

												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row end">
									<div class="col-lg-6">
										<button type="button" id="btn-placeorder" class="btn btn-block btn-default btn-checkout" admicro-data-event="100118" admicro-data-auto="1" admicro-data-order="false">ĐẶT MUA</button>
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
								<h6>Nguyễn Thị Hiền</h6>
								<p class="end">đội 5, thôn thuỵ ứng, Xã Hòa Bình, Huyện Thường Tín, Hà Nội<br>Việt Nam<br>Điện thoại: 0972169984</p>
							</div>
						</div>
					</div>

					<div id="panel-cart">
						<div class="panel panel-default cart">
							<div class="panel-body">
								<div class="order">
									<span class="title">Đơn Hàng</span>
									<span class="title"> (1 sản phẩm)</span>

									<a href="/checkout/cart/" class="btn btn-default btn-custom1">Sửa</a>
								</div>
								<div class="product">
									<div class="item">
										<p class="title">
											<strong>1 x</strong><a href="" target="_blank">Chuột Chơi Game Không Dây Logitech G903 WIRELESS CHARGING 12000DPI LED 11 Phím - Hàng Chính Hãng</a>
										</p>


										<p class="price text-right">
											<span>2.852.000đ </span>
										</p>
									</div>
								</div>
								
								<p class="list-info-price">
									<b>Tạm tính</b>
									<span>2.852.000đ</span>
								</p>
								<p class="list-info-price">
									<b>Phí vận chuyển</b>
									<span>0đ</span>
								</p>

								<p class="total2">
									Thành tiền:
									<span>2.852.000đ </span>
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