
// JavaScript Document
function validateForm() {
//Họ phải được điền
var ho = document.getElementById('full_name').value;
var data='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="a" ><span><label for="full_name">Họ tên</label><input type="text" id="full_name" name="txtName" placeholder="Nhập họ tên" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:95px"></span><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập họ tên</div></div>';
if (ho == "") {
document.getElementById('a').innerHTML = data;

}
//Tên phải được điền
//Nhập số điện thoại
var sdt = document.getElementById('phone_number').value;
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
var kiemTraDT = isNaN(sdt);
var sdt1='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="b"><span><label for="phone_number" >SĐT</label><input type="text" id="phone_number" name="txtPhone" placeholder="Nhập số điện thoại" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:106.75px" ><div class="InputError-xeouh7-0 dLpXwR">Số điện thoại không hợp lệ</div></div>';
var data1='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="b"><span><label for="phone_number">SĐT</label><input type="text" id="phone_number" name="txtPhone" placeholder="Nhập số điện thoại" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:106.75px" ><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập số điện thoại</div></div>';
if (sdt == "") {
document.getElementById('b').innerHTML = data1;

}
else{
	if (vnf_regex.test(sdt) == false) 
        {
			document.getElementById('b').innerHTML = sdt1;
        }
}

if (kiemTraDT == true) {
alert("Điện thoại phải để ở định dạng số");
return false;
}


//Email phải được điền chính xác
var email=document.getElementById('email').value;
var data3='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="d"><span><label for="email" >Email</label><input type="text" id="email" name="txtEmail" placeholder="Nhập email" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:101px"><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập email</div></div>';
var data2='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="d"><span><label for="email" >Email</label><input type="text" id="email" name="txtEmail" placeholder="Nhập email" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:101px"><div class="InputError-xeouh7-0 dLpXwR">Email của bạn không đúng địng dạng</div></div>';

var aCong=email.indexOf("@");
var dauCham = email.lastIndexOf(".");
if (email == "") {
document.getElementById('d').innerHTML = data3;


}
else if ((aCong<1) || (dauCham<aCong+2) || (dauCham+2>email.length)) {
document.getElementById('d').innerHTML = data2;

}


var pwd = document.getElementById('password').value;
var data4 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="password">Mật khẩu</label><input type="password" id="password" name="password" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA"  style="margin-left:83px" ><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập mật khẩu</div></div>';
var data5 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="password">Mật khẩu</label><input type="password" id="password" name="password" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA"   style="margin-left:83px"><div class="InputError-xeouh7-0 dLpXwR">Mật khẩu không hợp lệ!</div></div>';

if (pwd == "") {
document.getElementById('e').innerHTML = data4;


}

else{
	if(pwd.length>32||pwd.length<6)
{
document.getElementById('e').innerHTML = data5;
}
}
//nhập re-pass
var pwd1 = document.getElementById('re_password').value;
var data6 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="re_password" >Nhập lại mật khẩu</label><input type="password" id="re_password" name="txtRePass" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:37px" ><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập mật khẩu</div></div>';
var data7 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="re_password" >Nhập lại mật khẩu</label><input type="password" id="re_password" name="txtRePass" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:37px" ><div class="InputError-xeouh7-0 dLpXwR">Mật khẩu không hợp lệ!</div></div>';
var data8 ='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX"><span><label for="re_password" >Nhập lại mật khẩu</label><input type="password" id="re_password" name="txtRePass" placeholder="Mật khẩu từ 6 đến 32 ký tự" class="Input-sc-1sflv1m-0 qJuWA" style="margin-left:37px"><div class="InputError-xeouh7-0 dLpXwR">Mật khẩu bạn đã nhập không khớp!</div></div>';
if (pwd1 == "") {
document.getElementById('f').innerHTML = data6;


}

else{
	if(pwd.length>32||pwd.length<6)
{
document.getElementById('f').innerHTML = data7;
}
else{
	if(pwd!=pwd1){
	document.getElementById('f').innerHTML = data8;
	
	}
}



}
var user = document.getElementById('user_name').value;
var data9='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="dn"><span><label for="user_name" >Tên đăng nhập</label><input type="text" id="user_name" name="txtUsername" placeholder="Nhập tên đăng nhập" class="Input-sc-1sflv1m-0 qJuWA"  style="margin-left:54.625px"><div class="InputError-xeouh7-0 dLpXwR">Vui lòng nhập tên đăng nhập</div></div>';
if(user == ""){
	document.getElementById('dn').innerHTML = data9;
	
}
var dc = document.getElementById('address').value;
var data10='<div class="UserModalstyle__FormItem-uq4a18-6 llEucX" id="g"><span><label for="address" >Địa chỉ</label><input type="text" id="address" name="txtAddress" placeholder="Nhập địa chỉ" class="Input-sc-1sflv1m-0 qJuWA"  style="margin-left:94.8px"><div class="InputError-xeouh7-0 dLpXwR" >Vui lòng nhập địa chỉ</div></div>';
if(dc == ""){
		document.getElementById('g').innerHTML = data10;
}



}
function Redirect() {
               window.location="http://localhost:8080/web/templates/login.jsp";
            }

