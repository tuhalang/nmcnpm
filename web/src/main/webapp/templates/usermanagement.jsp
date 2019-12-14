<%@ page import="com.nmcnpm.web.utils.SessionUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE HTML>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/css/usermanagement.css"
          type="text/css">
    <link rel="shortcut icon" href="<c:url value="/static/image/lazy.ico"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/card.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/bootstrap-4.0.0/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/fontawesome-5.11.2/css/all.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/header.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <script src="<c:url value="/static/jquery-3.4.1/jquery-3.4.1.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="<c:url value="/static/bootstrap-4.0.0/js/bootstrap.min.js"/>"></script>
    <title>User Account</title>
</head>
<body>
<jsp:include page="commons/header.jsp"></jsp:include>

<div class="breadcrumb-wrap">
    <div class="container mt-2">
        <div class="row w-100">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <li><a href="/">Trang chủ/</a></li>
                    <li class="active">Thông tin tài khoản</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="container mb-4">
    <div class="row w-100">
        <div class="col-sm-12">
            <div id="left" class="col-sm-4">
                <div class="menu dropdown">
                    <h6 class="dropdown-header">Danh mục</h6>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#"><i
                            class="fas fa-user-circle"></i> <span> Thông tin tài khoản
						</span></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#"> <i class="far fa-bell"></i>
                        <span>Thông báo của tôi</span></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/track_order"><i class="fas fa-receipt"></i>
                        <span> Đơn hàng của tôi </span></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#" onclick="removeUserInfo()"><i class="fas fa-sign-out-alt"></i>
                        <span> Đăng xuất </span></a>
                </div>
            </div>

            <div id="content" class="col-sm-8">

                <!--  <p class="text-error-link-social"><span class='cross'></span>Tài khoản mạng xã hội này đã được liên kết với một tài khoản Tiki khác. Vui lòng kết nối tài khoản khác.</p> -->

                <h1 class="have-margin">Thông tin tài khoản</h1>

                <div class="account-profile register-form">
                    <div class="content"
                         id="edit-account">
                        <div class="form-group">
                            <p class="login-lable">Tài khoản đăng nhập bằng Google</p>
                            <label class="control-label" for="full_name">Họ tên</label>

                            <div class="input-wrap">
                                <input type="text" name="full_name" class="form-control" oninput="resetInputValue(this)"
                                       id="full_name" value="${customer.name }" placeholder="Họ tên">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="phone_number">Số điện
                                thoại</label>

                            <div class="input-wrap">
                                <input type="text" disabled value="${customer.phone }" oninput="resetInputValue(this)"
                                       class="form-control" name="phone_number" id="phone_number"
                                       placeholder="Số điện thoại">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label" for="form_email">Email</label>
                            <div class="input-wrap">
                                <input type="email" disabled value="${customer.email }" oninput="resetInputValue(this)"
                                       class="form-control" name="email" id="form_email"
                                       placeholder="Email">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Địa chỉ</label>

                            <div class="input-wrap">
                                <input type="text" name="address" class="form-control" oninput="resetInputValue(this)"
                                       id="address_" value="${customer.address }" placeholder="Địa chỉ">
                            </div>
                        </div>
                        <div class="password-group">
                            <div class="form-group">
                                <label class="control-label" for="old_password">Mật khẩu cũ</label>

                                <div class="input-wrap">
                                    <input type="password" name="old_password" oninput="resetInputValue(this)"
                                           class="form-control" id="old_password" value=""
                                           autocomplete="off" placeholder="Nhập mật khẩu cũ">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Mật khẩu mới</label>

                                <div class="input-wrap">
                                    <input type="password" name="new_password" oninput="resetInputValue(this)"
                                           class="form-control" id="new_password" value=""
                                           autocomplete="off" placeholder="Mật khẩu từ 6 đến 32 ký tự">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="re_new_password">Nhập
                                    lại</label>

                                <div class="input-wrap">
                                    <input type="password" name="re_new_password" oninput="resetInputValue(this)"
                                           class="form-control" id="re_new_password" value=""
                                           autocomplete="off" placeholder="Nhập lại mật khẩu mới">
                                </div>
                            </div>
                        </div>
                        <%--                        <p>${message }</p>--%>
                        <div class="form-group">
                            <div class="input-wrap margin">
                                <button onclick="update_account()" class="btn btn-info btn-block btn-update">Cập
                                    nhật
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="commons/footer.jsp"></jsp:include>
<script type="text/javascript">
    function update_account() {
        var fullname = document.getElementById("full_name");
        var email = document.getElementById("form_email");
        var phone = document.getElementById("phone_number");
        var old_password = document.getElementById("old_password");
        var new_password = document.getElementById("new_password");
        var re_new = document.getElementById("re_new_password");
        var address = document.getElementById("address_");
        if (!validateFullname(fullname.value)) {
            fullname.style.borderColor = "red";
        }
        if (!validateEmail(email.value)) {
            email.value = "";
            email.style.borderColor = "red";
        }
        if (!validatePhoneNumber(phone.value)) {
            phone.style.borderColor = "red";
        }
        if (!validatePass(old_password.value)) {
            old_password.style.borderColor = "red";
        }
        if (!validatePass(new_password.value) || new_password.value==old_password.value) {
            new_password.style.borderColor = "red";
        }
        if (!validatePass(re_new.value) || new_password.value != re_new.value) {
            re_new.style.borderColor = "red";
        }
        if (!validateAddress(address.value)) {
            address.style.borderColor = "red";
        }
        if (validateFullname(fullname.value) && validateEmail(email.value) && validatePhoneNumber(phone.value) && validatePass(old_password.value)
            && validateAddress(address.value) && validatePass(new_password.value) && new_password.value!=old_password.value && validatePass(re_new.value) && new_password.value == re_new.value) {
            var account = "old_password=" + document.getElementById("old_password").value;
            var customer = "phone_number=" + document.getElementById("phone_number").value + "&email=" + document.getElementById("form_email").value
                + "&address=" + document.getElementById("address_").value + "&fullname=" + document.getElementById("full_name").value;
            var new_pass = "new_password=" + document.getElementById("new_password").value;
            $.ajax({
                url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/user/accountInfo",
                contentType: 'application/json;charset=utf-8',
                dataType: 'text',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: {
                    data: btoa(encodeURIComponent(account) + "&" + encodeURIComponent(customer) + "&" + encodeURIComponent(new_pass))
                },
                type: 'post',
                success: function (response) {
                    if (response == "1") alert("update success");
                    else if (response=="2"){
                        old_password.value="";
                        old_password.style.borderColor="red";
                    }
                    else alert(response);
                },
                error: function (x, e) {
                    console.log(e)
                }
            });
        }
    }

    function validateFullname(name) {
        if (name == "") return false;
        return true;
    }

    function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }

    function validatePhoneNumber(phone) {
        var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        return vnf_regex.test(phone) || Number.isInteger(phone);
    }

    function validatePass(passw) {
        return (passw.length > 6 && passw.length < 32);
    }

    function validateAddress(address) {
        if (address == "") return false;
        return true;
    }

    function resetInputValue(a) {
        $(a).css("border", "1px solid #ced4da");
    }
    function removeUserInfo() {
        window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2))+"/logout");
    }
</script>
</body>
</html>