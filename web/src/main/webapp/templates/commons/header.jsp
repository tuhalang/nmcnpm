<%@ page import="com.nmcnpm.web.model.Account" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav class="navbar navbar-expand-sm navbar-dark position-relative row">
        <!-- Brand -->
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home">Logo</a>
        <!-- search -->
        <div id="form_search" class="form-inline">
            <div class="row w-100">
                <input class="form-control mr-sm-2" type="text" id="input-search-product" oninput="autoComplete()"
                       placeholder="Tìm sản phẩm, danh mục, thương hiệu mong muốn ..." autocomplete="off">
                <button class="btn btn-success" id="btn-search-product"><i
                        class="fas fa-search mr-md-2"></i><span>Tìm kiếm</span></button>
            </div>
            <div class="row w-100" style="position: relative;">
                <div class="col-sm-10 dropdown-menu" id="result-search"></div>
            </div>
        </div>
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item col-sm-3 px-0 ml-md-5">
                <a class="nav-link px-0 font-weight-bold" href="#"><i
                        class="fas fa-map-marked-alt fa-2x float-left mr-md-2 mt-md-1"></i><span>Theo dõi<br>đơn hàng</span></a>
            </li>
            <li class="nav-item col-sm-3 px-0">
                <a class="nav-link px-0 font-weight-bold" href="#"><i
                        class="fas fa-bell fa-2x float-left mr-md-2 mt-md-1"></i><span>Thông báo<br>của tôi</span></a>
            </li>
            <li class="nav-item col-sm-3 px-0" data-toggle="modal" data-target="#exampleModal">
                <a class="nav-link px-0 font-weight-bold"><i
                        class="fas fa-user fa-2x float-left mr-md-2 mt-md-1"></i><span>
                        <c:choose>
                            <c:when test="${USER!=null}">
                                ${USER.username}
                            </c:when>
                            <c:otherwise>
                                Đăng nhập
                            </c:otherwise>
                        </c:choose>
                        <br>tài khoản</span></a>
            </li>
            <div class="modal bd-example-modal-lg" id="exampleModal" style="color:black !important;">
                <div class="modal-dialog modal-lg modal-dialog-centered" type="document" style="min-width:900px;">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row w-100" style="min-height: 350px;">
                                <div class="col-lg-5">
                                    <h2>Đăng nhập</h2>
                                    <p style="color: rgba(0,0,0,0.6);">Đăng nhập để theo dõi đơn hàng, lưu
                                        danh sách sản phẩm yêu thích, nhận
                                        nhiều ưu đãi hấp dẫn.</p>
                                    <img src="https://frontend.tikicdn.com/_new-next/static/img/graphic-map.png">
                                </div>
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
            </div>
            <li class="nav-item col-sm-4 px-0 item-cart">
                <a class="nav-link px-0 font-weight-bold" href="<c:url value="/call_cart"/>"><i
                        class="fas fa-shopping-cart fa-2x float-left mr-md-2 mt-md-1"></i>Giỏ hàng</a>
            </li>
        </ul>
    </nav>
    <nav class="navbar navbar-expand-sm navbar-dark pt-0 pb-0 row">
        <ul class="navbar-nav ">
            <!-- Dropdown -->
            <li class="nav-item dropdown mr-md-4">
                <a class="nav-link dropdown-toggle h5" href="#" id="navbardrop" data-toggle="dropdown">
                    <i class="fas fa-bars fa-2x float-left mr-md-2"></i>
                    DANH MỤC SẢN PHẨM
                </a>
                <ul class="dropdown-menu add-to-ul" aria-labelledby="navbarDropdownMenuLink">
                    <li class="dropdown-submenu">
                        <a class="dropdown-item" href="home?categoryId=1"><i class="fas fa-mobile-alt"></i>Điện
                            Thoại</a>
                    </li>
                    <li class="dropdown-submenu">
                        <a class="dropdown-item" href="home?categoryId=2"> <i class="fas fa-tablet"></i>Máy Tính
                            Bảng</a>
                    </li>
                    <li class="dropdown-submenu">
                        <a class="dropdown-item" href="home?categoryId=3"><i class="fas fa-tv"></i>Điện Tử - Điện
                            Lạnh</a>
                    </li>
                    <li class="dropdown-submenu">
                        <a class="dropdown-item" href="home?categoryId=4"><i class="fas fa-headphones"></i>Phụ Kiện -
                            Thiết Bị Số</a>
                    </li>
                    <li class="dropdown-submenu">
                        <a class="dropdown-item" href="home?categoryId=5"><i class="fas fa-laptop"></i>Laptop - Thiết Bị
                            IT</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item mr-md-4">
                <a class="nav-link h6" href="#"><i class="fas fa-map-marker-alt"></i>
                    Bạn muốn giao hàng tới đâu?</a>
            </li>
        </ul>
    </nav>
    <script src="<c:url value="/static/js/search-product.js"/>"></script>
    <script src="<c:url value="/static/js/header.js"/>"></script>
</header>

