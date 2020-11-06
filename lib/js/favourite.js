$(document).ready(function () {
    $("#favourite-button").click(function () {
        $("#favourite-button").toggleClass("favourite-yes");
        $.ajax({
            type: "POST",
            data: {
                post_action: "Favourite",
            }
        })
    })
})