
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">;
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../static/css/order-2.css">
<div class="row shipping-header">
    <div class="cont">
        <ul class="progressbar">
            <li class="active">Đăng Nhập</li>
            <li>Địa Chỉ Giao Hàng</li>
            <li>Thanh Toán & Đặt Mua</li>
        </ul>
    </div>
</div>
<div class="row wrap">
    <div class="container">
        <h3>2. Địa chỉ giao hàng</h3>
        <div class="row row-2">
            <form id="form-address" method="post" action="">
                <div class="container">
                    <h5>Chọn địa chỉ giao hàng có sẵn bên dưới</h5>
                </div>
                <div class="row-address-list">
                    <div class="col-lg-6 col-md-6 col-sm-6 item" id="item-6910541">
                        <div class="panel panel-default address-item">
                            <div class="panel-body">
                                <p class="name">Nguyễn Thị Hiền</p>
                                <p class="address" title="đội 5, thôn thuỵ ứng, Xã Hòa Bình, Huyện Thường Tín, Hà Nội">
                                    Địa chỉ: đội 5, thôn thuỵ ứng, Xã Hòa Bình, Huyện Thường Tín, Hà Nội            </p>
                                <p class="address">
                                    Việt Nam            </p>
                                <p class="phone">Điện thoại: 0972169984</p>
                                <p class="action">
                                    <button type="button" data-id="6910541" class="btn btn-default btn-custom1 saving-address
                  is-blue
                  " admicro-data-event="100117" admicro-data-auto="1" admicro-data-order="false">

                                        Giao đến địa chỉ này
                                    </button>
                                    <button type="button" class="btn btn-default btn-custom1 edit-address" data-id="6910541">Sửa</button>
                                    <button type="button" class="btn btn-default btn-custom1 deleting" data-id="6910541">Xóa</button>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-6 item" id="item-11001308">
                        <div class="panel panel-default address-item is-default">
                            <div class="panel-body">
                                <p class="name">tran van hung</p>
                                <p class="address" title="cacasc fa, Phường Cống Vị, Quận Ba Đình, Hà Nội">
                                    Địa chỉ: cacasc fa, Phường Cống Vị, Quận Ba Đình, Hà Nội            </p>
                                <p class="address">
                                    Việt Nam            </p>
                                <p class="phone">Điện thoại: 0386458775</p>
                                <p class="action">
                                    <button type="button" data-id="11001308" class="btn btn-default btn-custom1 saving-address
                is-blue
                " admicro-data-event="100117" admicro-data-auto="1" admicro-data-order="false">

                                        Giao đến địa chỉ này
                                    </button>
                                    <button type="button" class="btn btn-default btn-custom1 edit-address" data-id="11001308">Sửa</button>
                                </p>
                                <span class="default">Mặc định</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-6 item" id="item-11001376">
                        <div class="panel panel-default address-item">
                            <div class="panel-body">
                                <p class="name">fas àvafa</p>
                                <p class="address" title="cacasc fa, Phường Cống Vị, Quận Ba Đình, Hà Nội">
                                    Địa chỉ: cacasc fa, Phường Cống Vị, Quận Ba Đình, Hà Nội            </p>
                                <p class="address">
                                    Việt Nam            </p>
                                <p class="phone">Điện thoại: 0386458775</p>
                                <p class="action">
                                    <button type="button" data-id="11001376" class="btn btn-default btn-custom1 saving-address
              is-blue
              " admicro-data-event="100117" admicro-data-auto="1" admicro-data-order="false">

                                        Giao đến địa chỉ này
                                    </button>
                                    <button type="button" class="btn btn-default btn-custom1 edit-address" data-id="11001376">Sửa</button>
                                    <button type="button" class="btn btn-default btn-custom1 deleting" data-id="11001376">Xóa</button>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="container">
                    <p class="other">
                        Bạn muốn giao hàng đến địa chỉ khác?
                        <a href="javascript:void(0)" id="addNewAddress">
                            Thêm địa chỉ giao hàng mới
                        </a>
                    </p>
                </div>
            </form>
            <div class="panel panel-default address-form is-edit" style="display: block;"><div class="panel-heading hidden-lg">Thêm địa chỉ giao hàng mới</div>
                <div class="panel-body">
                    <form class="form-horizontal bv-form" role="form" id="address-info" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                        <div class="form-group row">
                            <label for="full_name" class="col-lg-4 control-label visible-lg-block">Họ tên </label>
                            <div class="col-lg-8 input-wrap has-feedback has-error">
                                <input type="text" name="full_name" class="form-control address" id="full_name" value="" placeholder="Nhập họ tên" data-bv-field="full_name"><i class="form-control-feedback bv-no-label fa fa-times" data-bv-icon-for="full_name" style=""></i>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="full_name" data-bv-result="INVALID" style="display: none">Vui lòng nhập Họ tên</small></div>
                        </div>

                        <div class="form-group row">
                            <label for="telephone" class="col-lg-4 control-label visible-lg-block">Điện thoại</label>
                            <div class="col-lg-8 input-wrap has-feedback">
                                <input type="tel" name="telephone" class="form-control address" id="telephone" value="" placeholder="Nhập số điện thoại" data-bv-field="telephone"><i class="form-control-feedback bv-no-label" data-bv-icon-for="telephone" style="display: none;"></i>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập Số điện thoại</small><small class="help-block" data-bv-validator="regexp" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Số điện thoại không hợp lệ (chỉ chấp nhận số)</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Số điện thoại chỉ được chứa 11 chữ số</small></div>
                        </div>
                        <div class="form-group row">
                            <label for="region_id" class="col-lg-4 control-label visible-lg-block">Tỉnh/Thành phố</label>
                            <div class="col-lg-8 input-wrap has-feedback">
                                <select name="region_id" class="form-control address" id="region_id" data-bv-field="region_id">
                                    <option value="">Chọn Tỉnh/Thành phố</option>
                                    <option value="294">Hồ Chí Minh</option>
                                    <option value="297">Hà Nội</option>
                                    <option value="291">Đà Nẵng</option>
                                    <option value="278">An Giang</option>
                                    <option value="280">Bà Rịa - Vũng Tàu</option>
                                    <option value="282">Bắc Giang</option>
                                    <option value="281">Bắc Kạn</option>
                                    <option value="279">Bạc Liêu</option>
                                    <option value="283">Bắc Ninh</option>
                                    <option value="284">Bến Tre</option>
                                    <option value="285">Bình Dương</option>
                                    <option value="286">Bình Phước</option>
                                    <option value="287">Bình Thuận</option>
                                    <option value="316">Bình Định</option>
                                    <option value="289">Cà Mau</option>
                                    <option value="290">Cần Thơ</option>
                                    <option value="288">Cao Bằng</option>
                                    <option value="293">Gia Lai</option>
                                    <option value="295">Hà Giang</option>
                                    <option value="296">Hà Nam</option>
                                    <option value="299">Hà Tĩnh</option>
                                    <option value="300">Hải Dương</option>
                                    <option value="301">Hải Phòng</option>
                                    <option value="319">Hậu Giang</option>
                                    <option value="302">Hoà Bình</option>
                                    <option value="320">Hưng Yên</option>
                                    <option value="321">Khánh Hòa</option>
                                    <option value="322">Kiên Giang</option>
                                    <option value="323">Kon Tum</option>
                                    <option value="304">Lai Châu</option>
                                    <option value="306">Lâm Đồng</option>
                                    <option value="305">Lạng Sơn</option>
                                    <option value="324">Lào Cai</option>
                                    <option value="325">Long An</option>
                                    <option value="326">Nam Định</option>
                                    <option value="327">Nghệ An</option>
                                    <option value="307">Ninh Bình</option>
                                    <option value="328">Ninh Thuận</option>
                                    <option value="329">Phú Thọ</option>
                                    <option value="308">Phú Yên</option>
                                    <option value="309">Quảng Bình</option>
                                    <option value="310">Quảng Nam</option>
                                    <option value="311">Quảng Ngãi</option>
                                    <option value="330">Quảng Ninh</option>
                                    <option value="312">Quảng Trị</option>
                                    <option value="313">Sóc Trăng</option>
                                    <option value="331">Sơn La</option>
                                    <option value="332">Tây Ninh</option>
                                    <option value="333">Thái Bình</option>
                                    <option value="334">Thái Nguyên</option>
                                    <option value="335">Thanh Hóa</option>
                                    <option value="303">Thừa Thiên Huế</option>
                                    <option value="336">Tiền Giang</option>
                                    <option value="314">Trà Vinh</option>
                                    <option value="315">Tuyên Quang</option>
                                    <option value="337">Vĩnh Long</option>
                                    <option value="338">Vĩnh Phúc</option>
                                    <option value="339">Yên Bái</option>
                                    <option value="292">Đắk Lắk</option>
                                    <option value="340">Đắk Nông</option>
                                    <option value="341">Điện Biên</option>
                                    <option value="317">Đồng Nai</option>
                                    <option value="318">Đồng Tháp</option>
                                </select><i class="form-control-feedback bv-no-label" data-bv-icon-for="region_id" style="display: none;"></i>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="region_id" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng chọn Tỉnh/Thành phố</small></div>
                        </div>

                        <div class="form-group row">
                            <label for="city_id" class="col-lg-4 control-label visible-lg-block">Quận/Huyện</label>
                            <div class="col-lg-8 input-wrap has-feedback">
                                <select name="city_id" class="form-control address" id="city_id" data-bv-field="city_id">
                                    <option value="">Chọn Quận/Huyện</option>
                                </select><i class="form-control-feedback bv-no-label" data-bv-icon-for="city_id" style="display: none;"></i>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="city_id" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng chọn Quận/Huyện</small></div>
                        </div>

                        <div class="form-group row">
                            <label for="ward_id" class="col-lg-4 control-label visible-lg-block">Phường/Xã</label>
                            <div class="col-lg-8 input-wrap has-feedback">
                                <select name="ward_id" class="form-control address" id="ward_id" data-bv-field="ward_id">
                                    <option value="">Chọn Phường/Xã</option>
                                </select><i class="form-control-feedback bv-no-label" data-bv-icon-for="ward_id" style="display: none;"></i>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ward_id" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng chọn Phường/Xã</small></div>
                        </div>

                        <div class="form-group row">
                            <label for="street" class="col-lg-4 control-label visible-lg-block">Địa chỉ</label>
                            <div class="col-lg-8 input-wrap has-feedback">
                                <textarea name="street" class="form-control address" id="street" placeholder="Ví dụ: 52, đường Trần Hưng Đạo" data-bv-field="street"></textarea><i class="form-control-feedback bv-no-label" data-bv-icon-for="street" style="display: none;"></i>
                                <span class="help-block"></span>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="street" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập Địa chỉ</small><small class="help-block" data-bv-validator="regexp" data-bv-for="street" data-bv-result="NOT_VALIDATED" style="display: none;">Địa chỉ của bạn không hợp lệ </small></div>
                        </div>

                        <div class="form-group row form-group-radio group-radio-k-address">
                            <label class="col-lg-4 control-label visible-lg-block"></label>
                            <div class="col-lg-8 input-wrap">
                                <span style="font-size: 11px;font-style: italic;">Để nhận hàng thuận tiện hơn, bạn vui lòng cho lazyy biết loại địa chỉ.</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-offset-4 col-lg-8">
                                <input type="hidden" name="address_id" value="">
                                <button type="button" class="btn btn-default btn-custom2 visible-lg-inline-block js-hide">Hủy bỏ</button>
                                <button id="btn-address" type="submit" class="btn btn-primary btn-custom3" value="create">Giao đến địa chỉ này</button>
                            </div>
                        </div>
                    </form>
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

