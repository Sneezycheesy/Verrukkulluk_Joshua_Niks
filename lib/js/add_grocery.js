$(document).ready(function () {
    $("#dish-grocery-button").click(function () {
        $.ajax({
            url: "./index.php",
            type: "POST",
            data: {
                post_action: "AddGrocery",
            },
        })
    })
})