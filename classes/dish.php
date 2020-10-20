<?php

    require_once("./dish_info.php");
    require_once("./ingredient.php");
    require_once("./user.php");
    require_once("./food_item.php");
    require_once("./kitchen_type.php");
    
    class dish {

        private $dbc;
        private $dish_info;
        private $ingredient;
        private $user;
        private $food_item;
        private $kitchen_type;


        public function __construct($connection) {
            $this->dbc = $connection or false;
            $this->ingredient = new Ingredient($this->dbc);
            $this->user = new User($this->dbc);
            $this->food_item = new FoodItem($this->dbc);
            $this->kitchen_type = new KitchenType($this->dbc);
            $this->dish_info = new DishInfo($this->dbc);
        }

        public function SelectDishOrDishes(...$dish_id) {
            $dish = false;

            foreach($dish_id as $value) {

                $sql = "SELECT * FROM DISH WHERE ID = $value";
                $result = mysqli_query($this->dbc, $sql);

                if($result->num_rows > 0) {
                    $dish[] = $result->fetch_assoc();
                }
            }
            return $dish;
        }

        public function GetDishInfo($dish_id, $record_type) {
            $dish_info = $this->dish_info->GetDishInfo($dish_id. $record_type);
            return $dish_info;
        }

        public function GetIngredient($dish_id) {
            $ingredient = $this->ingredient->GetIngredient($dish_id);
            
            return $ingredient;
        }

        public function GetFoodItems($ingredient) {
            $food_item = false;

            foreach($ingredient as $food) {
                $food_item[] = $this->food_item->SelectFoodItem($food['food_item_id']);
            }
            return $food_item;
        }

        public function GetUser($user_id) {
            $user = $this->user->GetUser($user_id);
            return $user;
        }

        public function CalculateTotalPrice($food_items) {
            $total = 0;
            foreach($food_items as $food_item) {
                $total += $food_item['price'];
            }
            return $total;
        }

        public function CalculateCalories($food_items) {
            $total = 0;
            foreach($food_items as $food_item) {
                $total += $food_item['calories'];
            }
            return $total;
        }

        public function CalculateRating() {
            $total = 0;
            foreach($this->ratings as $rating) {
                $total += $rating['numeric_field'];
            }
            $total /= count($this->ratings);
            return $total;
        }

        public function GetKitchenType($kitchen_type_id) {
            $kitchen_type = $this->kitchen_type->GetKitchenType($kitchen_type_id);
            return $kitchen_type;
        }

        public function SearchDish($title) {
            $dish = false;

            $sql = "SELECT * FROM DISH WHERE title LIKE _\"$title\"_";
            $result = mysqli_query($this->dbc, $sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $dish[] = $row;
                }
            }
            return $dish;
        }
    }