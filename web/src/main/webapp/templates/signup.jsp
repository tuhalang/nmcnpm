<%--
  Created by IntelliJ IDEA.
  User: tuhalang
  Date: 11/16/19
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="dk.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css" />
  <title>Untitled Document</title>
  </head>

<body>
<div class="" tabindex="-1" role="dialog" style="position: relative;
 top: 0px;
 left: 0px; 
 right: 0px; 
 bottom: 0px; 
 border: none; 
 background: rgb(255, 255, 255); 
 overflow: unset; 
 border-radius: 4px; 
 outline: none; 
 padding: 0px; 
 width: 900px; 
 margin: 0px auto;">
 <div class="UserModalstyle__Root-uq4a18-0 vSccj">
 <a class="UserModalstyle__CloseButton-uq4a18-10 bgtqgo">
 <i class="fa fa-times-circle-o fa-2x"></i>
 </a>
 <div class="UserModalstyle__Left-uq4a18-1 klfBPD">
 <h2>Tạo tài khoản</h2>
 <p>Tạo tài khoản<br>
 danh sách sản phẩm yêu thích, nhận<br>
  nhiều ưu đãi hấp dẫn.</p>
  <img src="https://frontend.tikicdn.com/_new-next/static/img/graphic-map.png">
  </div>
  <div class="UserModalstyle__Right-uq4a18-2 hJAmZc">
  <div class="UserModalstyle__Tab-uq4a18-3 ijQhvI">
  <div class="UserModalstyle__TabItem-uq4a18-5 hbOmbq" onclick="Redirect()">Đăng nhập</div>
  <div class="UserModalstyle__TabItem-uq4a18-5 fWOBqq">Tạo tài khoản</div>
  </div>
  <div class="UserModalstyle__TabContent-uq4a18-4 fIyoOF">
  <form>
  <div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="a" >
  
 <span><label for="full_name" style="margin-right:22px" >Họ tên</label>
 <input type="text" id="full_name" name="txtName" placeholder="Nhập họ tên" class="Input-sc-1sflv1m-0 coLFjn" style="margin-right:5px;" size="381" maxlength="255">
  </span></div>
  <div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="b">
 <span><label for="phone_number" style="margin-right:33px">SĐT</label>
<input type="text" id="phone_number" name="txtPhone" placeholder="Nhập số điện thoại" class="Input-sc-1sflv1m-0 coLFjn" >
  </div>
  <div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="d">
  <span><label for="email" style="margin-right:27px">Email</label>
  <input type="text" id="email" name="txtEmail" placeholder="Nhập email" class="Input-sc-1sflv1m-0 coLFjn">
  </div>
  <div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="dn">
  <span><label for="user_name" style="margin-right:5px">Tên</br>đăng nhập</label>
  <input type="text" id="user_name" name="txtUsername" placeholder="Nhập tên đăng nhập" class="Input-sc-1sflv1m-0 coLFjn">
  </div>
  <div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="e">
  <span><label for="password" style="margin-right:9px">Mật khẩu</label>
  <input type="password" id="password" name="txtPassword" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 coLFjn" >
</div>

<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="f">
  <span><label for="re_password" style="margin-right:11px">Nhập lại</br> mật khẩu</label>
  <input type="password" id="re_password" name="txtRePass" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 coLFjn" >
</div>
<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="g">
  <span><label for="address" style="margin-right:21px">Địa chỉ</label>
  <input type="text" id="address" name="txtAddress" placeholder="Nhập địa chỉ" class="Input-sc-1sflv1m-0 coLFjn" >
</div>
  <div class="UserModalstyle__FormItem-uq4a18-6 llEucX" style="margin: 20px 0px;">
  <label>Giới tính</label>
  <span><label style="cursor: pointer;">
  <label class="Input__RadioFake-sc-1sflv1m-1 bmFiYt" style="margin-top: -4px;">
  <input name="gender" type="radio" >
  <span><i class="tikicon icon-radio-button-on"></i>
  <i class="tikicon icon-radio-button-off"></i>
  </span>
  </label> Nam</label>
  <label style="cursor: pointer;">
  <label class="Input__RadioFake-sc-1sflv1m-1 bmFiYt" style="margin-top: -4px; margin-left: 120px;">
  <input name="gender" type="radio" >
  <span><i class="tikicon icon-radio-button-on"></i>
  <i class="tikicon icon-radio-button-off"></i>
  </span></label> Nữ</label>
  </span>
  </div>
      <div class="UserModalstyle__FormItem-uq4a18-6 llEucX">
              <label for=""></label>
              <div style="width: calc(100% - 15px); display: inline-block;">
              <p style="margin: 10px 0px 15px; font-size: 12px; line-height: 22px;">
              <label class="Input__CheckboxFake-sc-1sflv1m-2 cYKyBl" style="margin-top: -3px">
              <input name="newsletter" type="checkbox">
              <span><i class="tikicon icon-check-on"></i>
              <i class="tikicon icon-check-off"></i>
              </span></label> Nhận các thông tin và chương trình khuyến mãi của Tiki qua email.</p>
              <input type="button" value="Tạo tài khoản" onclick="validateForm()" class="UserModalstyle__RightButton-uq4a18-8 jpHvvv">

              <p style="margin-bottom: 15px; font-size: 12px; line-height: 22px;">
              Khi bạn nhấn Đăng ký, bạn đã đồng ý thực hiện mọi giao dịch mua bán theo 
              <a target="_blank" href="http://hotro.tiki.vn/hc/vi/articles/201971214" rel="noreferrer">điều kiện sử dụng và chính sách của Tiki</a>.
              </p>
              </div>
              </div>
              </form>
              </div>
              </div>
              </div>
              </div>
</body>
</html>
