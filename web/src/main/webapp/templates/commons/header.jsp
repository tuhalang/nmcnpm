<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-sm navbar-dark position-relative row">
      <!-- Brand -->
      <a class="navbar-brand" href="#">Logo</a>
      <!-- search -->
      <form class="form-inline" action="/action_page.php">
        <input class="form-control mr-sm-2" type="text" placeholder="tìm sản phẩm, danh mục, thương hiệu mong muốn ...">
        <button class="btn btn-success" type="submit"><i class="fas fa-search mr-md-2"></i>Tìm kiếm</button>
      </form>
      <!-- Links -->
      <ul class="navbar-nav">
        <li class="nav-item col-sm-3 px-0 ml-md-5">
          <a class="nav-link px-0 font-weight-bold" href="#"><i class="fas fa-map-marked-alt fa-2x float-left mr-md-2 mt-md-1"></i>Theo dõi<br>đơn hàng</a>
        </li>
        <li class="nav-item col-sm-3 px-0">
          <a class="nav-link px-0 font-weight-bold" href="#"><i class="fas fa-bell fa-2x float-left mr-md-2 mt-md-1"></i>Thông báo<br>của tôi</a>
        </li>
        <li class="nav-item col-sm-3 px-0">
          <a class="nav-link px-0 font-weight-bold" href="#"><i class="fas fa-user fa-2x float-left mr-md-2 mt-md-1"></i>Đăng nhập<br>tài khoản</a>
        </li>
        <li class="nav-item col-sm-4 px-0 item-cart">
          <a class="nav-link px-0 font-weight-bold" href="#"><i class="fas fa-shopping-cart fa-2x float-left mr-md-2 mt-md-1"></i>Giỏ hàng</a>
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
              <a class="dropdown-item dropdown-toggle" data-toggle="dropdown" href="#"><i class="fas fa-mobile-alt"></i>Điện Thoại - Máy Tính Bảng</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                      <li><a class="dropdown-item" href="#">Smartphone dưới 3.00 triệu</a></li>
                      <li><a class="dropdown-item" href="#">Điện thoại dưới 1.00 triệu</a></li>
                      <li><a class="dropdown-item" href="#">Tablet dưới 4 triệu đồng</a></li>
                      <li><a class="dropdown-item" href="#">Kindle</a></li>
                      <li><a class="dropdown-item" href="#">iPhone</a></li>
                      <li><a class="dropdown-item" href="#">iPad Pro, iPad new</a></li>
                      <li><a class="dropdown-item" href="#">iPhone XS max 64GB</a></li>
                      <li><a class="dropdown-item" href="#">iPhone XS max 256GB</a></li>
                      <li><a class="dropdown-item" href="#">Samsung Galaxy Note 9</a></li>
                      <li><a class="dropdown-item" href="#">Samsung Galaxy S8 Plus</a></li>
                      <li><a class="dropdown-item" href="#">Nokia 5.1 Plus</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>
                      <li><a class="dropdown-item" href="#">iPhone</a></li>
                      <li><a class="dropdown-item" href="#">Samsung</a></li>
                      <li><a class="dropdown-item" href="#">Oppo</a></li>
                      <li><a class="dropdown-item" href="#">Huawei</a></li>
                      <li><a class="dropdown-item" href="#">Nokia</a></li>
                      <li><a class="dropdown-item" href="#">VSmart</a></li>
                      <li><a class="dropdown-item" href="#">Asus</a></li>
                      <li><a class="dropdown-item" href="#">Blackberry</a></li>
                      <li><a class="dropdown-item" href="#">vivo</a></li>
                      <li><a class="dropdown-item" href="#">Bphone</a></li>
                      <li><a class="dropdown-item" href="#">khác</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                      <li><a class="dropdown-item" href="#">Dưới 1 triệu</a></li>
                      <li><a class="dropdown-item" href="#">1 triệu - 3 triệu</a></li>
                      <li><a class="dropdown-item" href="#">3 triệu - 5 triệu</a></li>
                      <li><a class="dropdown-item" href="#">5 triệu - 8 triệu</a></li>
                      <li><a class="dropdown-item" href="#">8 triệu - 12 triệu</a></li>
                      <li><a class="dropdown-item" href="#">Trên 12 triệu</a></li>
                      <li><a class="dropdown-item font-weight-bold" href="#">Máy Tính bảng</a></li>
                      <li><a class="dropdown-item font-weight-bold" href="#">Điện thoại bàn</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
              <a class="dropdown-item" href="#"><i class="fas fa-tv"></i>Điện Tử - Điện Lạnh</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-headphones"></i>Phụ Kiện - Thiết Bị Số</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-laptop"></i>Laptop - Thiết Bị IT</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-camera"></i>Máy Ảnh - Quay Phim</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-blender"></i>Điện Gia Dụng</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-couch"></i>Nhà Cửa - Đời Sống</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-spray-can"></i>Hàng Tiêu Dùng - Thực Phẩm</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-child"></i>Đồ Chơi, Mẹ & Bé</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-first-aid"></i>Làm Đẹp - Sức Khỏe</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-tshirt"></i>Thời Trang - Phụ Kiện</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-basketball-ball"></i></i></i>Thể Thao - Dã Ngoại</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-motorcycle"></i>Xe Máy, Ô tô, Xe Đạp</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-book"></i>Sách, VPP & Quà Tặng</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="dropdown-submenu">
            <a class="dropdown-item" href="#"><i class="fas fa-ticket-alt"></i>Voucher - Dịch Vụ - Thẻ Cào</a>
              <div class="dropdown-menu mega-menu">
                <div class="row">
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Xu hướng & Nổi Bật</a></li>
                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Smartphone chính hãng</a></li>

                    </ul>
                  </div>
                  <div class="col sub-menu">
                    <ul>
                      <li><a class="dropdown-item font-weight-bold" href="#">Mức Giá</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </li>
        <li class="nav-item mr-md-4">
          <a class="nav-link h6" href="#"><i class="fas fa-map-marker-alt"></i>
          Bạn muốn giao hàng tới đâu?</a>
        </li>
        <li class="nav-item dropdown mr-md-4 ">
          <a class="nav-link dropdown-toggle h6" href="#" id="navbardrop" data-toggle="dropdown">
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
  </header>
</body>
</html>
