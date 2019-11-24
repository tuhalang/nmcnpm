<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav class="navbar navbar-expand-sm navbar-dark position-relative row">
        <!-- Brand -->
        <a class="navbar-brand" href="#">Logo</a>
        <!-- search -->
        <form class="form-inline" action="/action_page.php" id="form_search">
            <div class="row w-100">
                <input class="form-control mr-sm-2" type="text" id="input-search-product" oninput="autoComplete()"
                       placeholder="Tìm sản phẩm, danh mục, thương hiệu mong muốn ..." autocomplete="off">
                <button class="btn btn-success" type="submit" id="btn-search-product"><i
                        class="fas fa-search mr-md-2"></i><span>Tìm kiếm</span></button>
            </div>
            <div class="row w-100" style="position: relative;">
                <div class="col-sm-10 dropdown-menu" id="result-search"></div>
            </div>
        </form>
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
            <li class="nav-item col-sm-3 px-0">
                <a class="nav-link px-0 font-weight-bold" href="<c:url value="/templates/usermanagement.jsp"/>"><i
                        class="fas fa-user fa-2x float-left mr-md-2 mt-md-1"></i><span>Đăng nhập<br>tài khoản</span></a>
            </li>

            <li class="nav-item col-sm-4 px-0 item-cart">
                <a class="nav-link px-0 font-weight-bold" href="<c:url value="/templates/cart.jsp"/>"><i
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
                        <a class="dropdown-item" href="#"><i class="fas fa-laptop"></i>Laptop - Thiết Bị IT</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item mr-md-4">
                <a class="nav-link h6" href="#"><i class="fas fa-map-marker-alt"></i>
                    Bạn muốn giao hàng tới đâu?</a>
            </li>
            <li class="nav-item dropdown mr-md-4 ">
                <a class="nav-link dropdown-toggle h6" href="#" id="navbar_drop" data-toggle="dropdown">
                    Sản phẩm đã xem
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Link 1</a>
                    <a class="dropdown-item" href="#">Link 2</a>
                    <a class="dropdown-item" href="#">Link 3</a>
                </div>
            </li>
        </ul>
    </nav>
    <script src="<c:url value="/static/js/search-product.js"/>"></script>
</header>

