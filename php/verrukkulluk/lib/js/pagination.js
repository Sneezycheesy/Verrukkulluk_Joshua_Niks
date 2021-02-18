$(document).ready(function () {
    $(".homepage-pagination-page-item").click(function () {
        let value = $(this).attr("data-value");
        // $(".homepage-pagination-page-item").each((index, elem) => {
        //     if ($(elem).attr("data-value") == value) {
        //         localStorage.Classname = "active";
        //         localStorage.Value = value;
        //     }
        // })
        var url = new URL(window.location.href);
        console.log("Old url: " + url);
        var search_params = url.searchParams;
        search_params.set("page_id", value);

        console.log("New url: " + url);
        window.location = url;
        
        return false;
    })
    console.log(window.location.href);
    var value = (new URLSearchParams(window.location.search).get("page_id"));

    $(".homepage-pagination-page-item").each((index, elem) => {
        
        if (value == null) {
            value = 1;
        }
        if ($(elem).attr("data-value") == value) {
            $(elem).addClass("active");
        }
    })

})