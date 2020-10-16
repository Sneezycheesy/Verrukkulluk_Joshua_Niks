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


    