$(document).ready(function () {
    $("#login-button").click(function () {
        console.log("Click");
        $("#login-form").submit(function () {
            user_name = $("#login-email-input").first().val();
            password = $("#login-password-input").first().val();
            $.ajax({
                type: "POST",
                data: {
                    post_action: "Login",
                    post_user_name: user_name,
                    post_password: password,
                },
                success: function () {
                    location.reload();
                }
            })
            return false;
        })
    })

    $("#logout-button").click(function () {
        $.ajax({
            type: "POST",
            data: {
                post_action: "Logout",
            },
            success: function () {
                location.reload();
            },
        })
    })
})
