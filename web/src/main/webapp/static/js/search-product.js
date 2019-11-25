function autoComplete(e) {
    var c = $("#input-search-product").val();
    if (c.charAt(c.length - 1) != " ") {
        $("#result-search").empty();
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                var data = xhr.responseText;
                var listProduct = JSON.parse(data);
                var i;
                for (i = 0; i < listProduct.length; ++i) {
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
            }
        }
        var s = "autocomplete_home?key=" + $("#input-search-product").val();
        xhr.open('GET', s, true);
        xhr.send(null);
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
$("#input-search-product").keyup(function(event) {
    if (event.keyCode === 13) {
        $("#btn-search-product").click();
    }
});