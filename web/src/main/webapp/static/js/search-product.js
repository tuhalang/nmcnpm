function autoComplete(e) {
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
                e1.style.overflow="hidden";
                e1.innerHTML = listProduct[i].name;
                $("#result-search").append(e1);
            }
            if (listProduct.length!==0) $("#result-search").addClass("show");
            else $("#result-search").removeClass("show");
        }
    }
    var s="autocomplete_home?key="+$("#input-search-product").val();
    xhr.open('GET',s , true);
    xhr.send(null);
};
$(document).click(function(e) {
    if(e.target.id!=="input-search-product"){
        $("#result-search").empty();
        $("#result-search").removeClass("show");
    }
});