$(document).ready(function () {
    $("#favourite-button").click(function () {
        $("#favourite-button").toggleClass("favourite-yes");
        $("#favourite-button").toggleClass("favourite-no");

        $.ajax({
            type: "POST",
            data: {
                post_action: "Favourite",
            }
        })
    })

    favourite = $("#favourite-button").attr("data-value");
    if (favourite == 1 ) {
        $("#favourite-button").addClass("favourite-yes");
        $("#favourite-button").removeClass("favourite-no");
    }
    else {
        $("#favourite-button").addClass("favourite-no");
        $("#favourite-button").removeClass("favourite-yes");
    }
})