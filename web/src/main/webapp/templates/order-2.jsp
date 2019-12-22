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
    <link rel="shortcut icon" href="<c:url value="/static/image/lazy.ico"/>">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/card.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-4.0.0/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome-5.11.2/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/order-2.css">
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
            <li>Địa Chỉ Giao Hàng</li>
            <li>Thanh Toán & Đặt Mua</li>
        </ul>
    </div>
</div>
<div class="row wrap">
    <div class="container">
        <h3>2. Địa chỉ giao hàng</h3>
        <div class="row row-2">
            <div id="form-address">
                <div class="container">
                    <h5>Chọn địa chỉ giao hàng có sẵn bên dưới</h5>
                </div>
                <c:forEach var="customer" items="${customers}" varStatus="iter">
                    <div class="row-address-list">
                        <div class="col-lg-6 col-md-6 col-sm-6 item" id="item-11001308">
                            <div class="panel panel-default address-item is-default">
                                <div class="panel-body">

                                    <p class="name">${customer.name}</p>
                                    <p class="address" title="cacasc fa, Phường Cống Vị, Quận Ba Đình, Hà Nội">
                                        Địa chỉ: ${customer.address} </p>
                                    <p class="address">
                                        Việt Nam            </p>
                                    <p class="phone">Điện thoại: ${customer.phone}</p>
                                    <p class="action">
                                        <a href="${pageContext.request.contextPath}/user/confirm_order?id=${customer.customerID}" data-id="11001308" class="btn btn-default btn-custom1 saving-address
                is-blue
                " admicro-data-event="100117" admicro-data-auto="1" admicro-data-order="false">

                                            Giao đến địa chỉ này
                                        </a>
                                        <button class="btn btn-default btn-custom1 edit-address" data-toggle="collapse" data-target="#${customer.customerID}">Sửa</button>
                                        <a href="${pageContext.request.contextPath}/delete_address?id=${customer.customerID}" data-id="11001308" class="btn btn-default btn-custom1 edit-address
                " admicro-data-event="100117" admicro-data-auto="1" admicro-data-order="false">

                                            Xóa
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <button type="button" class="btn btn-default btn-custom2 visible-lg-inline-block js-hide" data-toggle="collapse" data-target="#collapse">thêm địa chỉ</button>
            <div id="collapse" class="collapse">
                <div class="panel panel-default address-form is-edit" style="display: block;"><div class="panel-heading hidden-lg">Thêm địa chỉ giao hàng mới</div>
                    <div class="panel-body">
                        <form class="form-horizontal bv-form" role="form"  novalidate="novalidate" action="${pageContext.request.contextPath}/add_address" method="post"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                            <input type="text" name="customerID" value="" style="display: none">
                            <div class="form-group row">
                                <label for="full_name" class="col-lg-4 control-label visible-lg-block">Họ tên </label>
                                <div class="col-lg-8 input-wrap has-feedback has-error">
                                    <input type="text" name="full_name" class="form-control address" value="" placeholder="Nhập họ tên" data-bv-field="full_name"><i class="form-control-feedback bv-no-label fa fa-times" data-bv-icon-for="full_name" style="display: none"></i>
                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="full_name" data-bv-result="INVALID" style="display: none">Vui lòng nhập Họ tên</small></div>
                            </div>

                            <div class="form-group row">
                                <label for="telephone" class="col-lg-4 control-label visible-lg-block">Điện thoại</label>
                                <div class="col-lg-8 input-wrap has-feedback">
                                    <input type="tel" name="telephone" class="form-control address" value="" placeholder="Nhập số điện thoại" data-bv-field="telephone"><i class="form-control-feedback bv-no-label" data-bv-icon-for="telephone" style="display: none;"></i>
                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập Số điện thoại</small><small class="help-block" data-bv-validator="regexp" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Số điện thoại không hợp lệ (chỉ chấp nhận số)</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Số điện thoại chỉ được chứa 11 chữ số</small></div>
                            </div>

                            <div class="form-group row">
                                <label for="street" class="col-lg-4 control-label visible-lg-block">Địa chỉ</label>
                                <div class="col-lg-8 input-wrap has-feedback">
                                    <textarea name="address" class="form-control address"  placeholder="Ví dụ: 52, đường Trần Hưng Đạo" data-bv-field="street"></textarea><i class="form-control-feedback bv-no-label" data-bv-icon-for="street" style="display: none;"></i>
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
                                    <button type="button" class="btn btn-default btn-custom2 visible-lg-inline-block js-hide" data-toggle="collapse" data-target="#collapse">Hủy bỏ</button>
                                    <button id=" " type="submit" class="btn btn-primary btn-custom3" value="create">Thêm địa chỉ</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <c:forEach var="customer" items="${customers}" varStatus="iter">
                <div id="${customer.customerID}" class="collapse">
                    <div class="panel panel-default address-form is-edit" style="display: block;"><div class="panel-heading hidden-lg">Thêm địa chỉ giao hàng mới</div>
                        <div class="panel-body">
                            <form class="form-horizontal bv-form" role="form" id="address-info" novalidate="novalidate" action="${pageContext.request.contextPath}/update_address" method="post"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                                <input type="text" name="customerID" value="${customer.customerID}" style="display: none">
                                <div class="form-group row">
                                    <label for="full_name" class="col-lg-4 control-label visible-lg-block">Họ tên </label>
                                    <div class="col-lg-8 input-wrap has-feedback has-error">
                                        <input type="text" name="full_name" class="form-control address" id="full_name" value="${customer.name}" placeholder="Nhập họ tên" data-bv-field="full_name"><i class="form-control-feedback bv-no-label fa fa-times" data-bv-icon-for="full_name" style="display: none"></i>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="full_name" data-bv-result="INVALID" style="display: none">Vui lòng nhập Họ tên</small></div>
                                </div>

                                <div class="form-group row">
                                    <label for="telephone" class="col-lg-4 control-label visible-lg-block">Điện thoại</label>
                                    <div class="col-lg-8 input-wrap has-feedback">
                                        <input type="tel" name="telephone" class="form-control address" id="telephone" value="${customer.phone}" placeholder="Nhập số điện thoại" data-bv-field="telephone"><i class="form-control-feedback bv-no-label" data-bv-icon-for="telephone" style="display: none;"></i>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập Số điện thoại</small><small class="help-block" data-bv-validator="regexp" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Số điện thoại không hợp lệ (chỉ chấp nhận số)</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Số điện thoại chỉ được chứa 11 chữ số</small></div>
                                </div>

                                <div class="form-group row">
                                    <label for="street" class="col-lg-4 control-label visible-lg-block">Địa chỉ</label>
                                    <div class="col-lg-8 input-wrap has-feedback">
                                        <textarea name="address" class="form-control address" id="street" placeholder="Ví dụ: 52, đường Trần Hưng Đạo" data-bv-field="street">${customer.address}</textarea><i class="form-control-feedback bv-no-label" data-bv-icon-for="street" style="display: none;"></i>
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
                                        <button type="button" class="btn btn-default btn-custom2 visible-lg-inline-block js-hide" data-toggle="collapse" data-target="#${customer.customerID}">Hủy bỏ</button>
                                        <button id="btn-address" type="submit" class="btn btn-primary btn-custom3" value="create">Cập nhật thông tin</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
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
</body>
</html>
