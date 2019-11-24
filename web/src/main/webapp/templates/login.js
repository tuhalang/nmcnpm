function validateForm() {
//Nhập số điện thoại
var email = document.getElementById('email').value;
  var data='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="b"><span><label for="email" style="margin:5px 13px 0px 0px" class="xd">Tên<br /> đăng nhập</label><input type="text" id="email" name="txtUsername" placeholder="Nhập tên đăng nhập" class="Input-sc-1sflv1m-0 qJuWA" ><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập tên đăng nhập</div></div>';  
if (email == "") {
document.getElementById('b').innerHTML = data;

}



var pwd = document.getElementById('password').value;
var data4 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="password" style="margin-right:22px">Mật khẩu</label><input type="password" id="password" name="password" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA" ><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập mật khẩu</div></div>';
var data5 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="password" style="margin-right:22px">Mật khẩu</label><input type="password" id="password" name="password" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA" ><div class="InputError-xeouh7-0 dLpXwR">Mật khẩu không hợp lệ!</div></div>';

if (pwd == "") {
document.getElementById('e').innerHTML = data4;


}

else{
	if(pwd.length>32||pwd.length<6)
{
document.getElementById('e').innerHTML = data5;
}
}

 
}
function Redirect() {
               window.location="http://localhost:8080/web/templates/signup.jsp";
            }

// JavaScript Document