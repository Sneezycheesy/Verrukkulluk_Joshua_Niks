<?php
    require_once("database.php");
    require_once("./classes/ingredient.php");
    require_once("./classes/grocery_list.php");

    $db_connection = new database;

    $dbc = $db_connection->GetDatabaseConnection();

    if(mysqli_ping($dbc)) {
        echo "Connection";
    }

    $ingredient = new Ingredient($dbc);
    $grocery_list = new GroceryList();

    $food_item = ["ID" => 1, "name" => "food"];

    $grocery_list->AddFoodItemToGroceryList($food_item, 4);
    

    echo "<pre>";
    var_dump($grocery_list->GetGroceryList());
    $grocery_list->AddFoodItemToGroceryList($food_item, 4);
    var_dump($grocery_list->GetGroceryList());
    // $grocery_list->RemoveFoodItemFromGroceryList($food_item);

    var_dump($grocery_list->GetGroceryList());
    var_dump($ingredient->GetIngredient(3));


    