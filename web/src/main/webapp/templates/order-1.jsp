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
    <link rel="shortcut icon" href="<c:url value="/static/image/lazy.ico"/>">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/card.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-4.0.0/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome-5.11.2/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/order-1.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/static/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-4.0.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="row shipping-header">
    <div class="cont">
        <ul class="progressbar">
            <li class="li">Đăng Nhập</li>
            <li class="li">Địa Chỉ Giao Hàng</li>
            <li class="li">Thanh Toán & Đặt Mua</li>
        </ul>
    </div>
</div>
    <div class="modal-dialog modal-lg modal-dialog-centered" type="document" style="min-width:900px;">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row w-100" style="min-height: 350px;">
                    <div class="col-lg-7">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active signin_" href="#profile" role="tab"
                                   data-toggle="tab" style="color:black !important;">Đăng nhập</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link signup_" href="#buzz" role="tab" data-toggle="tab"
                                   style="color:black !important;">Tạo tài khoản</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="form-signup">
                            <div role="tabpanel" class="tab-pane fade show active" id="profile">
                                <div class="row w-100 mt-4">
                                    <div class="col-sm-3">Username</div>
                                    <input type="text" class="form-control col-sm-9" id="login-username"
                                           placeholder="Nhập email hoặc Số điện thoại">
                                </div>
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">Password</div>
                                    <input type="password" class="form-control col-sm-9" id="login-pass"
                                           placeholder="Password">
                                </div>
                                <div class="row w-100 mt-3" style="font-size: 0.8em;">
                                    <div class="col-sm-3"></div>
                                    <span class="col-sm-9">Quên mật khẩu? Nhấn vào <a href="#"
                                                                                      style="color: deepskyblue !important;">đây</a></span>
                                </div>
                                <div class="row w-100 mt-3" style="font-size: 0.8em;">
                                    <div class="col-sm-3"></div>
                                    <button class="btn btn-warning col-sm-9" id="login">Đăng nhập
                                    </button>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="buzz">
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">Tài khoản</div>
                                    <input type="text" class="form-control col-sm-9"
                                           placeholder="Nhập họ tên" id="username"
                                           oninput="resetInputValue(this)">
                                </div>
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">Họ tên</div>
                                    <input type="text" class="form-control col-sm-9"
                                           placeholder="Nhập họ tên" id="fullname"
                                           oninput="resetInputValue(this)">
                                </div>
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">SDT</div>
                                    <input type="text" class="form-control col-sm-9" id="phone"
                                           placeholder="Nhập số điện thoại" oninput="resetInputValue(this)">
                                </div>
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">Email</div>
                                    <input type="email" class="form-control col-sm-9"
                                           placeholder="Nhập email" id="email-account"
                                           oninput="resetInputValue(this)">
                                </div>
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">Mật khẩu</div>
                                    <input type="password" class="form-control col-sm-9" id="passw"
                                           placeholder="Password" oninput="resetInputValue(this)">
                                </div>
                                <div class="row w-100 mt-3">
                                    <div class="col-sm-3">Địa chỉ</div>
                                    <input type="text" class="form-control col-sm-9" id="address"
                                           placeholder="Địa chỉ" oninput="resetInputValue(this)">
                                </div>
                                <div class="row w-100 mt-3" style="font-size: 0.8em;">
                                    <div class="col-sm-3"></div>
                                    <button class="btn btn-warning col-sm-9" id="btn-create">Tạo tài khoản
                                    </button>
                                </div>
                                <div class="row w-100 mt-3" style="font-size: 0.8em;">
                                    <div class="col-sm-3"></div>
                                    <span class="col-sm-9">Khi bạn nhấn Đăng ký, bạn đã đồng ý thực hiện mọi giao dịch mua bán theo <a
                                            href="#"
                                            style="color: deepskyblue !important;">điều kiện sử dụng và chính sách của Lazy.</a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div class="wrap">

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
<script>
    document.getElementById("btn-create").addEventListener("click",function () {
        var username=document.getElementById("username");
        var fullname=document.getElementById("fullname");
        var email=document.getElementById("email-account");
        var phone=document.getElementById("phone");
        var passw=document.getElementById("passw");
        var address=document.getElementById("address");
        if (!validateFullname(fullname.value)){
            fullname.style.borderColor="red";
        }
        if (!validateUsername(username.value)){
            username.style.borderColor="red";
        }
        if (!validateEmail(email.value)){
            email.value="";
            email.style.borderColor="red";
        }
        if (!validatePhoneNumber(phone.value)){
            phone.style.borderColor="red";
        }
        if (!validatePass(passw.value)){
            passw.style.borderColor="red";
        }
        if (!validateAddress(address.value)){
            address.style.borderColor="red";
        }
        if (validateFullname(fullname.value) && validateEmail(email.value) && validatePhoneNumber(phone.value) && validatePass(passw.value)
            && validateAddress(address.value) && validateUsername(username.value)){
            $.ajax({
                url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/signup",
                contentType: 'application/json;charset=utf-8',
                dataType: 'text',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: {
                    data:btoa("txtUsername="+username.value+"&txtPassword="+passw.value+"&txtRePass="+passw.value+"&txtName="+fullname.value+"&txtPhone="+phone.value+"&txtEmail="+email.value+"&txtAddress="+address.value)
                },
                type: 'post',
                success: function (response) {
                    if (response=="1") {
                        window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)  + "templates/order-1.jsp"));
                    }
                    else alert(response);
                },
                error: function (x, e) {
                    console.log(e)
                }
            });
        }
    })
    document.getElementById("login").addEventListener("click",function () {
        console.log(btoa("txtUsername="+document.getElementById("login-username").value+"&txtPassword="+document.getElementById("login-pass").value));
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/signin",
            contentType: 'application/json;charset=utf-8',
            dataType: 'text',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                data:btoa("txtUsername="+document.getElementById("login-username").value+"&txtPassword="+document.getElementById("login-pass").value)
            },
            type: 'post',
            success: function (response) {
                if (response=="1") {
                    window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2) + "templates/order-2.jsp"));
                }

                else alert("oops!");
            },
            error: function (x, e) {
                console.log(e)
            }
        });
    })
    function call_info(a) {
        window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2))+"/accountInfo?accountID="+a);
    }
    function validateFullname(name) {
        if (name=="") return false;
        return true;
    }
    function validateUsername(username){
        if (username.includes(" ") && username.length<10) return false;
        return true;
    }
    function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }
    function validatePhoneNumber(phone){
        var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        return vnf_regex.test(phone) || Number.isInteger(phone);
    }
    function validatePass(passw){
        return (passw.length>6 && passw.length<32);
    }
    function validateAddress(address){
        if (address=="") return false;
        return true;
    }
    function resetInputValue(a){
        $(a).css("border","1px solid #ced4da");
    }
</script>
</body>
</html>
