<%-- 
    Document   : signin
    Created on : Nov 24, 2019, 3:46:20 PM
    Author     : ADMin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="dn.css" />
<script src="login.js"></script>



</head>

<body>
<div class="ReactModal__Content ReactModal__Content--after-open" 
tabindex="-1" role="dialog" 
style="position: relative; 
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
<span class="tikicon icon-circle-close"></span></a>
<div class="UserModalstyle__Left-uq4a18-1 klfBPD">
<h2>Đăng nhập</h2>
<p>Đăng nhập để theo dõi đơn hàng, lưu <br>
danh sách sản phẩm yêu thích, nhận<br> 
nhiều ưu đãi hấp dẫn.</p>
<img src="https://frontend.tikicdn.com/_new-next/static/img/graphic-map.png">
</div>
<div class="UserModalstyle__Right-uq4a18-2 hJAmZc">
<div class="UserModalstyle__Tab-uq4a18-3 ijQhvI">
<div class="UserModalstyle__TabItem-uq4a18-5 fWOBqq">Đăng nhập</div>

      
   
         
     
<div class="UserModalstyle__TabItem-uq4a18-5 hbOmbq" onClick="Redirect()">Tạo tài khoản</div>
</div>
<div class="UserModalstyle__TabContent-uq4a18-4 fIyoOF">
<form><div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="b">
<span><label for="email" style="margin:5px 13px 0px 0px" class="xd">Tên<br /> đăng nhập</label>
<input type="text" id="email" name="txtUsername" placeholder="Nhập tên đăng nhập" class="Input-sc-1sflv1m-0 coLFjn" >
</div>
<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="e">
<span><label for="password" style="margin-right:19px">Mật khẩu</label>   
<input type="password" id="password" name="txtPassword" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 coLFjn">
</div>
<div style="padding-left: 75px;">
<p class="forgot-password">Quên mật khẩu? Nhấn vào <a href="#">đây</a></p>
<input type="button" value="Đăng nhập" onclick="validateForm()" class="UserModalstyle__RightButton-uq4a18-8 jpHvvv">
</div>
</form>
</div>
</div>

    </div>
    </div>
</div>
</div>
</body>
</html>
