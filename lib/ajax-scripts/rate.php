<?php
require_once("../database.php");
require_once("../classes/dish.php");

$database = new Database();
$dbc = $database->GetDatabaseConnection();

if(isset($_POST["action"])) {
    switch($_POST["action"]) {
        case "AddRating":
            $dish = new Dish($dbc);
            $dish->AddRating($_REQUEST["dish_id"], $_REQUEST["rating"]);
            break;
    }
}
