$(document).ready(function () {
    $("#dish-grocery-button").click(function () {
        if ($("#dish-grocery-button").attr("data-user-id") != 0) {
            $.ajax({
                type: "POST",
                data: {
                    post_action: "AddGrocery",
                },
                async: false,
            });
            location.href = ("?action=groceries");
        }
        else {
            alert("Log alstublieft eerst in! (Default: username: user_1 password: Qwerty1");
        }
    })
    
    $(".update-grocery-amount-button").click(function () {
        var food_item_id = $(this).attr("data-value");
        var amount = 0;
        $("#grocery-item-update-form" + food_item_id).submit(function () {
            $(".grocery-list-item-update-field").each((index, elem) => {
                if ($(elem).attr("data-value") == food_item_id) {
                    amount = $(elem).first().val();
                }
            });

            $.ajax({
                type: "POST",
                data: {
                    post_action: "UpdateGroceryAmount",
                    food_item_id: food_item_id,
                    post_amount: amount,
                },
                async: false,
                success: function () {
                    location.reload();
                }
            })

            return false;
        });
    });

    $(".remove-grocery-button").click(function () {
        let food_item_id = $(this).attr("data-value");
        $.ajax({
            type: "POST",
            data: {
                post_action: "RemoveGrocery",
                food_item: food_item_id,
            },
            async: false,
            success: function () {
                location.reload();
            }
        })
    });

    $("#remove-all-groceries-button").click(function () {
        $.ajax({
            type: "POST",
            data: {
                post_action: "RemoveAllGroceries"
            },
            async: false,
            success: function () {
                location.reload();
            }
        })
    })
})