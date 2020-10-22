<?php
    require_once("database.php");
    require_once("./classes/ingredient.php");
    require_once("./classes/grocery_list.php");
    require_once("./classes/dish.php");

    $db_connection = new database;

    $dbc = $db_connection->GetDatabaseConnection();

    if(mysqli_ping($dbc)) {
        echo "Connection";
    }

    $dish = new Dish($dbc);

    echo "<pre>";

    $food_item = [
        "ID" => 1,
        "name" => "food",
    ];

    $grocery_list = new GroceryList();

    $grocery_list->AddFoodItemToGroceryList($food_item, 4);
    var_dump($grocery_list->GetGroceryList());

    $grocery_list->UpdateAmountOfProduct($food_item, 6);
    var_dump($grocery_list->GetGroceryList());

    


    