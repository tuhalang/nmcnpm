document.getElementById("btn-create").addEventListener("click",function () {
    var username=document.getElementById("username");
    var fullname=document.getElementById("fullname");
    var email=document.getElementById("email-account");
    var phone=document.getElementById("phone");
    var passw=document.getElementById("passw");
    var address=document.getElementById("address");
    var note="";
    if (!validateFullname(fullname.value)){
        fullname.style.borderColor="red";
        note+="fullname,";
    }
    if (!validateUsername(username.value)){
        username.style.borderColor="red";
        note+="username,";
    }
    if (!validateEmail(email.value)){
        email.value="";
        email.style.borderColor="red";
        note+="email,";
    }
    if (!validatePhoneNumber(phone.value)){
        phone.style.borderColor="red";
        note+="phone,";
    }
    if (!validatePass(passw.value)){
        passw.style.borderColor="red";
        note+="password,";
    }
    if (!validateAddress(address.value)){
        address.style.borderColor="red";
        note+="address,";
    }
    if (note.length>0){
        note=note.substring(0,note.length-1)+" is invalid";
        alert(note);
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
                    window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)));
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
    var username=document.getElementById("login-username");
    var passw=document.getElementById("login-pass");
    var note="";
    if (!validateUsername(username.value)){
        username.style.borderColor="red";
        note+="username,";
    }
    if (!validatePass(passw.value)){
        passw.style.borderColor="red";
        note+="password,";
    }
    if (note.length>0){
        note=note.substring(0,note.length-1)+" is invalid";
        alert(note);
    }
    if(validatePass(passw.value) && validateUsername(username.value)) login();
})
document.getElementById("login-pass").addEventListener("keyup",function (e) {
    if (e.keyCode===13){
        login();
    }
    if (e.keyCode===38){
        document.getElementById("login-username").focus();
    }
})
document.getElementById("login-username").addEventListener("keyup",function (e) {
    if (e.keyCode===40 || e.keyCode===13){
        document.getElementById("login-pass").focus();
    }
})
function login() {
    $.ajax({
        url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/signin",
        contentType: 'application/json;charset=utf-8',
        dataType: 'text',
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        data: {
            data:btoa("txtUsername="+encodeURIComponent(document.getElementById("login-username").value)+"&txtPassword="+encodeURIComponent(document.getElementById("login-pass").value))
        },
        type: 'post',
        success: function (response) {
            if (response=="1") {
                window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)));
            }
            else if (response=="2")
                window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2))+"/admin");
            else alert("username or password is incorrect!");
        },
        error: function (x, e) {
            console.log(e)
        }
    });
}
function call_info() {
    window.location.replace(window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2))+"/user/accountInfo");
}
function validateFullname(name) {
    if (name=="") return false;
    return true;
}
function validateUsername(username){
    var format = /[ !@#$%^&*()+\-=\[\]{};':"\\|,.<>\/?]/;
    if (username.includes(" ") || username.length<5 || format.test(username)) return false;
    return true;
}
function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
function validatePhoneNumber(phone){
    var vnf_regex = /((\+84|09|03|07|08|05)+([0-9]{8})\b)/g;
    return vnf_regex.test(phone) || Number.isInteger(phone);
}
function validatePass(passw){
    return (passw.length>6 && passw.length<20);
}
function validateAddress(address){
    if (address=="") return false;
    return true;
}
function resetInputValue(a){
    $(a).css("border","1px solid #ced4da");
}