<?php
    require_once("database.php");
    require_once("food_item.php");

    $db_connection = new database;

    $dbc = $db_connection->GetDatabaseConnection();

    $food_item = new FoodItem($dbc);

    $food_item_data = $food_item->SelectFoodItem(60);

        foreach($food_item_data as $array) {
            foreach($array as $key=>$value) {
                echo "Key: $key; Value: $value <br/>";
            }
        }

    $food_item_data = $food_item->SelectFoodItem(99);

        foreach($food_item_data as $array) {
            foreach($array as $key=>$value) {
                echo "Key: $key; Value: $value <br/>";
            }
        }


    