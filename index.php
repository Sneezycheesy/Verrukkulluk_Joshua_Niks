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
$grocery_list = new GroceryList($dbc);
var_dump($grocery_list->GetGroceryListFromDatabase(1));

$ingredient = new Ingredient($dbc);
$ingredient = $ingredient->GetIngredient(3);
var_dump($ingredient);

var_dump($grocery_list->CheckToAddFoodItemToGroceryList(1, $ingredient[0]));
    


    