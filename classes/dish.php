<?php

    require_once("./dish_info.php");
    
    class dish {

        private $dbc;
        private $dish_info;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function GetDishInfo($dish_id) {
            $this->dish_info = new DishInfo($this->dbc);

            $comment = $this->dish_info->GetDishInfo($dish_id, "comment");
            $favourite = $this->dish_info->GetDishInfo($dish_id, "favourite");
            $rating = $this->dish_info->GetDishInfo($dish_id, "rating");
            $preparation = $this->dish_info->GetDishInfo($dish_id, "preparation");

            if($rating) {
                $totalRating = 0;
                foreach($rating as $rate) {
                    $totalRating += $rate['numeric_field'];
                }
                $totalRating /= $rating->count();
            }
        }

        public function GetIngredient($dish_id) {
            $ingredient = false;

            $sql = "SELECT * FROM INGREDIENT WHERE dish_id = $dish_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $ingredient[] = $row;
                }
            }
            return $ingredient;
        }

        public function GetUser($user_id) {
            $user = false;

            $sql = "SELECT * FROM USER WHERE ID = $user_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $user[] = $row;
                }
            }
            return $user;
        }

        public function CalculateTotalPrice($food_items) {
            $total = 0;
            foreach($food_items as $food_item) {
                $total += $food_item['price'];
            }
        }
    }