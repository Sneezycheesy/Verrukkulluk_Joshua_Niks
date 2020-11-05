<?php

require_once("food_item.php");

    class Ingredient {
        private $dbc;
        private $food_item;

        public function __construct($connection) {
            $this->dbc = $connection;
            $this->food_item = new FoodItem($this->dbc);
        }

        public function GetIngredient($dish_id) {
            $ingredients = false;
            
            $sql = "SELECT * FROM INGREDIENT WHERE dish_id = $dish_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $food_item = $this->food_item->SelectFoodItem($row['food_item_id']);

                    $ingredients[] = [
                        "ID" => $row["ID"],
                        "dish_id" => $row["dish_id"],
                        "food_item" => $food_item,
                        "amount" => $row["amount"],
                    ];
                }
            }
            return $ingredients;
        }
    }
