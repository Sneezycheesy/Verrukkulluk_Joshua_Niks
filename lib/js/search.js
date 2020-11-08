$(document).ready(function() {
    $("#navigation-search-button").click(function () {
        search_text = $("#nav-search-input").val();
            $.ajax({
                type: "GET",
                data: {
                    action: "search",
                    search_text: search_text
                },
                success: function () {
                    if (search_text != "") {
                        location.href = ("?action=search&search_text=" + search_text);
                    }
                }
            })

            console.log("Clicked search" + $("#nav-search-input").val()); 
    })
})