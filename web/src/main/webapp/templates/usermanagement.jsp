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
    <style>
        body {
            font-family: "Montserrat", Helvetica, Arial, sans-serif;
        }

        #myTab .nav-link {
            font-size: 1em !important;
        }

        #account-info {
            min-height: 80vh;
        }

        #myTabContent .form-control {
            font-size: 1em;
        }

        .nav-pills .nav-link.active {
            background-color: #ececec;
        }

        .add-address {
            border: 1px dashed #d8d8d8;
            border-radius: 4px;
            display: block;
            padding: 18px;
            background: #fff;
            color: #007ff0;
            text-align: center;
            margin-bottom: 10px;
            font-size: 1.4em;
            position: relative;
        }

        .add-address span:hover {
            color: deepskyblue;
            text-decoration: deepskyblue;
        }

        .cur-address {
            border: 1px solid #d8d8d8;
            border-radius: 4px;
            padding-top: 20px;
            padding-bottom: 20px;
        }
    </style>
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
<div class="container">
    <h1> Quản lí tài khoản</h1>
    <hr>
    <div class="row w-100">
        <div class="col-md-3 mb-3">
            <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="account-info-tab" data-toggle="tab" href="#account-info" role="tab"
                       aria-controls="account-info" aria-selected="true">
                        <i class="fas fa-user-circle"></i>
                        <span>  Thông tin tài khoản</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="address-tab" data-toggle="tab" href="#address-content" role="tab"
                       aria-controls="address-content" aria-selected="false">
                        <i class="fas fa-map-marker-alt"></i>
                        <span>  Sổ địa chỉ</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="my-order-tab" href="${pageContext.request.contextPath}/user/track_order">
                        <i class="fas fa-receipt"></i>
                        <span>  Đơn hàng của tôi </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="logout-tab" onclick="removeUserInfo()">
                        <i class="fas fa-sign-out-alt"></i>
                        <span>  Đăng xuất </span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-9">
            <div class="tab-content" id="myTabContent" style="font-size: 0.8em;">
                <div class="tab-pane fade show active" id="account-info" role="tabpanel"
                     aria-labelledby="account-info-tab">
                    <h3 style="padding-left: 10px;">Thông tin tài khoản</h3>
                    <div class="row w-100 mt-1" style="font-size: 0.8em;">
                        <div class="col-sm-3"></div>
                        <label class="col-sm-9" for="full_name"
                               style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Họ tên không
                            hợp lệ</label>
                    </div>
                    <div class="row w-100 mt-2">
                        <div class="col-sm-3">Họ tên</div>
                        <input type="text" class="form-control col-sm-9"
                               placeholder="Nhập họ tên" id="full_name"
                               oninput="resetInputValue(this)" value="${customers.get(0).name }">
                    </div>
                    <div class="row w-100 mt-3">
                        <div class="col-sm-3">SDT</div>
                        <input type="text" class="form-control col-sm-9" id="phone" disabled
                               value="${customers.get(0).phone }">
                    </div>
                    <div class="row w-100 mt-3">
                        <div class="col-sm-3">Email</div>
                        <input type="email" class="form-control col-sm-9" id="email-account" disabled
                               value="${customers.get(0).email }">
                    </div>
                    <div class="row w-100 mt-3">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-9 custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="check-pass">
                            <label class="custom-control-label" for="check-pass">Thay đổi mật khẩu</label>
                        </div>
                    </div>
                    <div class="row w-100" id="change-pass" style="display: none;">
                        <div class="row w-100 mt-1" style="font-size: 0.8em;">
                            <div class="col-sm-3"></div>
                            <label class="col-sm-9" for="old-pass"
                                   style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Mật khẩu
                                không hợp lệ</label>
                        </div>
                        <div class="row w-100">
                            <div class="col-sm-3">Mật khẩu cũ</div>
                            <input type="password" class="form-control col-sm-9"
                                   placeholder="Nhập mật khẩu cũ" id="old-pass"
                                   oninput="resetInputValue(this)">
                        </div>
                        <div class="row w-100 mt-1" style="font-size: 0.8em;">
                            <div class="col-sm-3"></div>
                            <label class="col-sm-9" for="new-pass"
                                   style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Mật khẩu
                                mới không hợp lệ</label>
                        </div>
                        <div class="row w-100">
                            <div class="col-sm-3">Mật khẩu mới</div>
                            <input type="password" class="form-control col-sm-9" id="new-pass"
                                   placeholder="Nhập mật khẩu mới" oninput="resetInputValue(this)">
                        </div>
                        <div class="row w-100 mt-1" style="font-size: 0.8em;">
                            <div class="col-sm-3"></div>
                            <label class="col-sm-9" for="re-newpass"
                                   style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Nhập lại mật khẩu mới</label>
                        </div>
                        <div class="row w-100">
                            <div class="col-sm-3">Nhập lại</div>
                            <input type="password" class="form-control col-sm-9" id="re-newpass"
                                   placeholder="Nhập lại mật khẩu" oninput="resetInputValue(this)">
                        </div>
                    </div>
                    <div class="row w-100 mt-3" style="font-size: 0.8em;">
                        <div class="col-sm-3"></div>
                        <button class="btn btn-warning col-sm-9" id="btn-update-account"> Cập nhật</button>
                    </div>
                </div>
                <div class="tab-pane fade h-75" id="address-content" role="tabpanel"
                     aria-labelledby="address-content-tab">
                    <h2>Sổ địa chỉ</h2>
                    <a class="row w-100 add-address" data-toggle="modal" data-target="#add-address">
                        <span>Thêm địa chỉ</span>
                    </a>
                    <div class="modal" id="add-address">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Thêm địa chỉ</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="row w-100 mt-1" style="font-size: 0.8em;">
                                        <div class="col-sm-3"></div>
                                        <label class="col-sm-9" for="input-add-fullname"
                                               style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Họ tên  không hợp lệ</label>
                                    </div>
                                    <div class="row w-100">
                                        <div class="col-sm-3">Họ tên</div>
                                        <input type="text" class="form-control col-sm-9" id="input-add-fullname" placeholder="Nhập họ tên" oninput="resetInputValue(this)">
                                    </div>
                                    <div class="row w-100 mt-1" style="font-size: 0.8em;">
                                        <div class="col-sm-3"></div>
                                        <label class="col-sm-9" for="input-add-address"
                                               style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Địa chỉ  không hợp lệ</label>
                                    </div>
                                    <div class="row w-100">
                                        <div class="col-sm-3">Địa chỉ</div>
                                        <input type="text" class="form-control col-sm-9" id="input-add-address" placeholder="Nhập địa chỉ" oninput="resetInputValue(this)">
                                    </div>
                                    <div class="row w-100 mt-1" style="font-size: 0.8em;">
                                        <div class="col-sm-3"></div>
                                        <label class="col-sm-9" for="add-phone"
                                               style="color: red;visibility: hidden;margin:0 !important;padding-left:0;">Số điện thoại không hợp lệ</label>
                                    </div>
                                    <div class="row w-100">
                                        <div class="col-sm-3">Số điện thoại</div>
                                        <input type="number" id="add-phone" class="form-control col-sm-9" placeholder="Nhập số điện thoại" oninput="resetInputValue(this)">
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" id="btn-add-address">Thêm địa chỉ</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                                </div>

                            </div>
                        </div>
                    </div>
                    <c:forEach var="i" begin="0" end="${customers.size()-1}">
                        <div class="w-100 cur-address mb-3">
                            <input value="${i}" style="display: none;">
                            <div class="row w-100">
                                <div class="col-sm-2">Họ tên:</div>
                                <input type="text" class="col-sm-7 form-control" disabled value="${customers.get(i).name}"/>
                                <div class="col-sm-3 change" style="color: #00b6f0 !important;text-align: center;" onclick="changeAddress(this)">Chỉnh sửa</div>
                            </div>
                            <div class="row w-100 mt-2">
                                <div class="col-sm-2">Địa chỉ:</div>
                                <input type="text" class="col-sm-7 form-control" disabled value="${customers.get(i).address}"/>
                            </div>
                            <div class="row w-100 mt-3">
                                <div class="col-sm-2">Điện thoại:</div>
                                <input type="number" class="col-sm-7 form-control" disabled value="${customers.get(i).phone}"/>
                                <div class="col-sm-1"></div>
                                <button class="col-sm-2 btn btn-warning update-address" style="display: none;" onclick="update(this)">Cập nhật</button>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- /.col-md-8 -->
    </div>
</div>
<!-- /.container -->
<jsp:include page="commons/footer.jsp"></jsp:include>
<script type="text/javascript">
    var check = false;
    document.getElementById("btn-update-account").addEventListener("click", function () {
            var fullname = document.getElementById("full_name");
            if (!validateFullname(fullname.value)) {
                $('label[for="full_name"]').css("visibility", "visible");
            } else {
                if (!check) {
                    $.ajax({
                        url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/user/accountInfo",
                        contentType: 'application/json;charset=utf-8',
                        dataType: 'text',
                        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        data: {
                            data: btoa("action=1&fullname=" + encodeURIComponent(fullname.value))
                        },
                        type: 'post',
                        success: function (response) {
                            if (response == "1") alert("update success");
                            else $('label[for="full_name"]').css("visibility", "visible");
                        },
                        error: function (x, e) {
                            console.log(e)
                        }
                    });
                }else{
                    var oldpass=document.getElementById("old-pass");
                    var newpass=document.getElementById("new-pass");
                    var repass=document.getElementById("re-newpass");
                    if (!validatePass(oldpass.value)){
                        $('label[for="old-pass"]').css("visibility","visible");
                        oldpass.style.borderColor="red";
                    }
                    if (!validatePass(newpass.value)){
                        $('label[for="new-pass"]').css("visibility","visible");
                        newpass.style.borderColor="red";
                    }
                    if (repass.value!=newpass.value){
                        $('label[for="re-newpass"]').css("visibility","visible");
                        repass.style.borderColor="red";
                    }
                    if (validatePass(oldpass.value) && validatePass(newpass.value) && repass.value==newpass.value){
                        $.ajax({
                            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/user/accountInfo",
                            contentType: 'application/json;charset=utf-8',
                            dataType: 'text',
                            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            data: {
                                data: btoa("action=4&oldpass="+encodeURIComponent(oldpass.value)+"&newpass="+encodeURIComponent(newpass.value))
                            },
                            type: 'post',
                            success: function (response) {
                                if (response == "1") {
                                    alert("update success");
                                    location.reload();
                                }
                                else if (response=="3")
                                    $('label[for="old-pass"]').css("visibility", "visible");
                                else $('label[for="new-pass"]').css("visibility", "visible");
                            },
                            error: function (x, e) {
                                console.log(e)
                            }
                        });
                    }
                }
            }
        }
    );

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
        $("label[for='" + $(a).attr('id') + "']").css("visibility", "hidden");
    }

    function removeUserInfo() {
        window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/logout");
    }

    $('#check-pass').change(function () {
        check = $(this).prop('checked');
        if (check) $("#change-pass").css("display", "block");
        else $("#change-pass").css("display", "none");
    })
    document.getElementById("btn-add-address").addEventListener("click",function () {
        var fullname=document.getElementById("input-add-fullname");
        var phone=document.getElementById("add-phone");
        var address=document.getElementById("input-add-address");
        if (!validateFullname(fullname.value)){
            $('label[for="input-add-fullname"]').css("visibility","visible");
            phone.style.borderColor="red";
        }
        if (!validatePhoneNumber(phone.value)){
            $('label[for="add-phone"]').css("visibility","visible");
            phone.style.borderColor="red";
        }
        if (!validateAddress(address.value)){
            $('label[for="input-add-address"]').css("visibility","visible");
            address.style.borderColor="red";
        }
        if (validatePhoneNumber(phone.value) && validateAddress(address.value) && validateFullname(fullname.value)){
            $.ajax({
                url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/user/accountInfo",
                contentType: 'application/json;charset=utf-8',
                dataType: 'text',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: {
                    data: btoa("action=3&address="+encodeURIComponent(address.value)+"&phone="+encodeURIComponent(phone.value)+"&fullname="+encodeURIComponent(fullname.value))
                },
                type: 'post',
                success: function (response) {
                    if (response == "1") {
                        alert("Thêm thành công");
                        location.reload();
                    }
                    else if (response=="3")
                        $('label[for="add-phone"]').css("visibility", "visible");
                    else $('label[for="input-add-address"]').css("visibility", "visible");
                },
                error: function (x, e) {
                    console.log(e)
                }
            });
        }
    })
    function changeAddress(a){
        $(a).parent().parent().children(":nth-child(2)").children(":nth-child(2)").prop("disabled", false);
        $(a).parent().parent().children(":nth-child(3)").children(":nth-child(2)").prop("disabled", false);
        $(a).parent().parent().children(":nth-child(4)").children(":nth-child(2)").prop("disabled", false);
        $(a).parent().parent().children(":nth-child(4)").children(":nth-child(4)").css("display", "block");
    }
    function update(a){
        var fullname=$(a).parent().parent().children(":nth-child(2)").children(":nth-child(2)");
        var address=$(a).parent().parent().children(":nth-child(3)").children(":nth-child(2)");
        var phone=$(a).parent().parent().children(":nth-child(4)").children(":nth-child(2)");
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/user/accountInfo",
            contentType: 'application/json;charset=utf-8',
            dataType: 'text',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                data: btoa("action=2&address="+encodeURIComponent(address.val())+"&phone="+encodeURIComponent(phone.val())+"&fullname="+encodeURIComponent(fullname.val())+"&id="+encodeURIComponent($(a).parent().parent().children(":first").val()))
            },
            type: 'post',
            success: function (response) {
                if (response == "1") {
                    alert("Cập nhật thành công");
                    location.reload();
                }
                else alert("Các trường không hợp lệ")
            },
            error: function (x, e) {
                console.log(e)
            }
        });
    }
</script>
</body>
</html>