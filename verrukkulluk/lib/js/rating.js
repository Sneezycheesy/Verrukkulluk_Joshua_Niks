$(document).ready(function () {

    // START CLICK EVENT FOR "STAR" RATING
    $(".star").click(function () {
        var value = $(this).attr("data-value");

        $(".star").each((index, elem) => {
            var itemValue = $(elem).attr("data-value");
            if (itemValue <= value) {
                $(elem).addClass("rated");
            }
            else {
                $(elem).removeClass("rated");
            }
        })
        $.ajax({
            url: "./index.php",
            type: "POST",
            data: {
                post_action: "AddRating",
                dish_id: (new URLSearchParams(window.location.search).get("dish_id")),
                rating: value,
            },
        });
    })
    // END CLICK EVENT FOR "STAR" RATING
    
    //START HOVER EVENT FOR "STAR" RATING
        $(".star").hover(function () {
            var value = $(this).attr("data-value");

            $(".star").each((index, elem) => {
                var itemValue = $(elem).attr("data-value");
                if (itemValue <= value) {
                    $(elem).addClass("hover-rated");
                }
            })
        });
    // END HOVER EVENT FOR "STAR" RATING

    // START MOUSEOUT (END HOVER) EVENT FOR "STAR" RATING
        $(".star").mouseout(function () {
            var value = $(this).attr("data-value");

            $(".star").each((index, elem) => {
                var itemValue = $(elem).attr("data-value");
                if (itemValue <= value) {
                    $(elem).removeClass("hover-rated");
                }
            })
        });
    // END MOUSEOUT (END HOVER) EVENT FOR "STAR" RATING

}); // END OF FILE