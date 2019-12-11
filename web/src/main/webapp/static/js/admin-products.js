document.getElementById("admin-input-search-product").oninput=function () {
    var c = $("#admin-input-search-product").val();
    if (c==""){
        $("#show-products-search").css("display","none");
        return;
    }
    if (c.charAt(c.length - 1) != " ") {
        var childs=document.getElementById("show-products-search").firstElementChild
        while(childs.childNodes.length>2){
            childs.removeChild(childs.lastChild);
        }
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/autocomplete_home?key=" + $("#admin-input-search-product").val(),
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            type: 'GET',
            success: function (listProduct) {
                for (var i = 0; i < listProduct.length; ++i) {
                    var e1 = document.createElement("div");
                    e1.className = "panel panel-default";
                    e1.style.overflow = "hidden";
                    var e2=document.createElement("div");
                    e2.className="panel-body row w-100";
                    var e3=document.createElement("div");
                    e3.className="col-sm-1";
                    e3.innerHTML=listProduct[i].productID;
                    var e4=document.createElement("div");
                    e4.className="col-sm-5";
                    e4.innerHTML=listProduct[i].name;
                    var e5=document.createElement("div");
                    e5.className="col-sm-2";
                    e5.innerHTML=listProduct[i].price;
                    var e51=document.createElement("div");
                    e51.className="col-sm-2";
                    e51.innerHTML=listProduct[i].quantity;
                    var e6=document.createElement("div");
                    e6.className="col-sm-1";
                    e6.addEventListener("click",function () {
                        //alert($(this).children("i").attr("class","fa fa-ban"));
                        // alert($(this).parent().children(":first").text());
                        $.ajax({
                            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/admin/api/products',
                            contentType: 'application/json;charset=utf-8',
                            dataType: 'text',
                            data: {
                                productId: $(this).parent().children(":first").text()
                            },
                            type: 'DELETE',
                            success: function (response) {
                                location.reload();
                            },
                            error: function (x, e) {
                                alert(e);
                            }
                        });
                    });
                    var e7=document.createElement("div");
                    e7.className="col-sm-1";
                    var e8=document.createElement("button");
                    // e8.addEventListener("click",changeStatus(listProduct[i].productID));
                    e8.className="btn btn-light status_";
                    var e9=document.createElement("i");
                    if (listProduct[i].status) e9.className="fa fa-check";
                    else e9.className="fa fa-ban";
                    var e10=document.createElement("a");
                    e10.className="btn btn-light";
                    e10.href= window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2))+"/admin/product?productId="+listProduct[i].productID;
                    var e11=document.createElement("i");
                    e11.className="fa fa-eye";
                    e10.append(e11);
                    e7.append(e10);
                    e8.append(e9);
                    e6.append(e8);
                    e2.append(e3);
                    e2.append(e4);
                    e2.append(e5);
                    e2.append(e51);
                    e2.append(e6);
                    e2.append(e7);
                    e1.append(e2);
                    document.getElementById("show-products-search").firstElementChild.appendChild(e1);
                }
                if (listProduct.length !== 0) $("#show-products-search").css("display","block");
                else $("#show-products-search").css("display","none");
            },
            error: function (x, e) {
                console.log(e)
            }
        });
    }
}
$(document).click(function (e) {
    alert((e.target).hasClass("status_"));
    if (e.target.id !== "admin-input-search-product") {
        $("#show-products-search:first-child").empty();
        $("#show-products-search").css("display","none");
    }
});
function changeStatus(productId) {
    $.ajax({
        url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/admin/api/products',
        contentType: 'application/json;charset=utf-8',
        dataType: 'text',
        data: {
            productId: productId
        },
        type: 'DELETE',
        success: function (response) {
            if (response == 'ok') {
                location.reload();
            }
        },
        error: function (x, e) {
            alert(e);
        }
    });
}