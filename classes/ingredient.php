<?php

require_once("./food_item.php");

    class Ingredient {
        private $dbc;

        public function GetIngredients($dish_id) {
            $ingredients = false;
            
            $sql = "SELECT * FROM INGREDIENTS WHERE dish_id = $dish_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $food_item = new FoodItem($row['food_item_id']);
                    $row['food_item'][] = $food_item;

                    $ingredients[] = $row;
                }
            }
            return $ingredients;
        }

        public function __construct($connection) {
            $this->dbc = $connection;
        }
    }