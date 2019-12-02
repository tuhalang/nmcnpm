function autoComplete() {
    var c = $("#input-search-product").val();
    if (c.charAt(c.length - 1) != " ") {
        $("#result-search").empty();
        $.ajax({
            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + "/autocomplete_home?key=" + $("#input-search-product").val(),
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            type: 'GET',
            success: function (listProduct) {
                for (var i = 0; i < listProduct.length; ++i) {
                    var e1 = document.createElement("div");
                    e1.className = "row w-100 dropdown-item overflow-hidden";
                    e1.style.overflow = "hidden";
                    e1.innerHTML = listProduct[i].name;
                    var e2 = document.createElement("p");
                    var id = listProduct[i].productID;
                    e2.innerHTML = id;
                    e2.style.display = "none";
                    e1.append(e2);
                    e1.addEventListener("click", function () {
                        var anchorId = $(this).children().text();
                        show_result_search(anchorId, c);
                    })
                    $("#result-search").append(e1);
                }
                if (listProduct.length !== 0) $("#result-search").addClass("show");
                else $("#result-search").removeClass("show");
            },
            error: function (x, e) {
                console.log(e)
            }
        });
    }
};
$(document).click(function (e) {
    if (e.target.id !== "input-search-product") {
        $("#result-search").empty();
        $("#result-search").removeClass("show");
    }
});

function show_result_search(id, key) {
    $("#result-search").empty();
    $("#result-search").removeClass("show");
    var c = $("#input-search-product").val();
    var s = "show_result?key=" + key + "&head=" + id;
    if (key !== "")
        window.location.replace("http://localhost:8080/web_war/" + s);
}

document.getElementById("btn-search-product").addEventListener("click", function (ev) {
    if ($("#input-search-product").val() != "") {
        show_result_search(0, $("#input-search-product").val());
    } else {
        window.location.replace("http://localhost:8080/web_war/home?page=1&categoryId=1");
    }
})
$("#input-search-product").keyup(function (event) {
    if (event.keyCode === 13) {
        $("#btn-search-product").click();
    }
});