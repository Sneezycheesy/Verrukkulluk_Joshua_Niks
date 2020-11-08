$(document).ready(function() {
    $("#navigation-search-button").click(function () {
        get_search_text = $("#nav-search-input").val();
            $.ajax({
                type: "GET",
                data: {
                    action: "search",
                    search_text: get_search_text
                },
                success: function () {
                    if (get_search_text != "") {
                        location.href = ("?action=search&search_text=" + get_search_text);
                    }
                    return false;
                }
            })

            console.log("Clicked search" + $("#nav-search-input").val()); 
    })
})