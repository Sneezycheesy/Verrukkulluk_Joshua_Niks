<?php
    require_once("database.php");
    require_once("./classes/food_item.php");
    require_once("./classes/user.php");
    require_once("./classes/kitchen_type.php");
    require_once("./classes/dish_info.php");

    $db_connection = new database;

    $dbc = $db_connection->GetDatabaseConnection();

    if(mysqli_ping($dbc)) {
        echo "Connection";
    }

    $kitchen_type = new KitchenType($dbc);
    echo "<pre>";
    var_dump($kitchen_type->SelectKitchenType("kitchen"));

    $dish_info = new DishInfo($dbc);

    echo "<pre>";
    var_dump($dish_info->SelectDishInfo('comment'));

    $dish_info->AddFavourite(2, 2);

    // $food_item = new FoodItem($dbc);



        // for($i = 1; $i < 101; $i++) {

        //         $rnd = rand(1, 101);
        //     $sql = "INSERT INTO DISH (kitchen_id,type_id,user_id,date_added,title,short_description,long_description,image) VALUES ('$i','$i', '$rnd', NOW(),'Title for dish_$i','Short description for Dish_$i','A slightly longer description for Dish_$i','Dish_$i')";

        //     $result = mysqli_query($dbc, $sql);

        //     if(mysqli_affected_rows($dbc) != 1) {
        //         echo "Error: " . mysqli_error($dbc);
        //         mysqli_close($dbc);
        //         break;
        //     } 
        // }


    