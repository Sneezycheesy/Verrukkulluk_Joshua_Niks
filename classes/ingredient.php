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
                    $food_items = $this->food_item->SelectFoodItem($row['food_item_id']);

                    $ingredients[] = [
                        "id" => $row["ID"],
                        "dish_id" => $row["dish_id"],
                        "food_item_id" => $food_items[0]["ID"],
                        "amount" => $row["amount"],
                        "name" => $food_items[0]["name"],
                        "price" => $food_items[0]["price"],
                        "description" => $food_items[0]["description"],
                        "calories" => $food_items[0]["calories"],
                        "image" => $food_items[0]["image"]
                    ];
                }
            }
            return $ingredients;
        }
    }
