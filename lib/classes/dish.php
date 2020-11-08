<?php

    require_once("dish_info.php");
    require_once("ingredient.php");
    require_once("user.php");
    require_once("kitchen_type.php");

    class Dish {

        private $dbc;
        private $dish_info;
        private $ingredient;
        private $user;
        private $kitchen_type;
        private $amount_of_people;


        public function __construct($connection) {
            $this->dbc = $connection or false;
            $this->ingredient = new Ingredient($this->dbc);
            $this->user = new User($this->dbc);
            $this->food_item = new FoodItem($this->dbc);
            $this->kitchen_type = new KitchenType($this->dbc);
            $this->dish_info = new DishInfo($this->dbc);
        }

        public function SelectDishOrDishes($dish_id = "") {
            $dish = false;
            
            $sql = "SELECT * FROM DISH";
            
            if($dish_id != "") {
                $sql .= " WHERE ID = $dish_id";
            }
            
            $result = mysqli_query($this->dbc, $sql);
            
            while($row = $result->fetch_assoc()) {
                
                $ingredients = $this->GetIngredient($row["ID"]);
                $kitchen = $this->GetKitchenType($row["kitchen_id"]);
                $type = $this->GetKitchenType($row["type_id"]);
                $comments = $this->GetDishInfo($row["ID"], "comment");
                $ratings = $this->GetDishInfo($row["ID"], "rating");
                $rating = $this->CalculateRating($ratings);
                $favourites = $this->GetDishInfo($row["ID"], "favourite");
                $preparation = $this->GetDishInfo($row["ID"], "preparation");
                $calories = $this->CalculateCalories($ingredients);
                $price = $this->CalculateTotalPrice($ingredients);
                $user = $this->GetUser($row['user_id']);
                $this->amount_of_people = $row["amount_of_people"];
                
                $dish[] = [
                        "ID" => $row["ID"],
                        "kitchen_id" => $row["kitchen_id"],
                        "type_id" => $row["type_id"],
                        "user_id" => $row["user_id"],
                        "date_added" => $row["date_added"],
                        "title" => $row["title"],
                        "short_description" => $row["short_description"],
                        "long_description" => $row["long_description"],
                        "ingredients" => $ingredients,
                        "kitchen" => $kitchen,
                        "type" => $type,
                        "rating" => $rating,
                        "favourites" => $favourites,
                        "comments" => $comments,
                        "preparation" => $preparation,
                        "calories" => $calories,
                        "price" => $price,
                        "user" => $user,
                        "amount_of_people" => $this->amount_of_people,
                    ];                
            }           
            return $dish;
        }

        public function GetDishInfo($dish_id, $record_type) {
            $dish_info = $this->dish_info->SelectDishInfo($dish_id, $record_type);
            return $dish_info;
        }

        public function GetIngredient($dish_id) {
            $ingredient = $this->ingredient->GetIngredient($dish_id);
            
            return $ingredient;
        }

        public function GetUser($user_id) {
            $user = $this->user->SelectUser($user_id);
            return $user;
        }

        public function CalculateTotalPrice($food_items) {
            $total = 0;

            if($food_items != false) {
                foreach($food_items as $value) {
                    $total += $value["food_item"][0]["price"] * $value['amount'];
                }
            }
            return $total;
        }

        public function CalculateCalories($food_items) {
            /// Needs statements for different UNITS like teaspoon, tablespoon, etc.
            /// Calories are per 100 gram/ml so calculate that difference
            $total = 0;
            if($food_items != false) {
                foreach($food_items as $food_item) {
                    switch($food_item["food_item"][0]["unit"]) {
                        case "gram":
                        case "milliliter":
                            $total += ($food_item["food_item"][0]['calories'] / 100) * $food_item['amount'];
                            break;
                        case "kilo":
                        case "kilogram":
                        case "liter":
                            $total += ($food_item["food_item"][0]['calories'] * 10) * $food_item['amount'];
                            break;
                        case "milligram":
                            $total += ($food_item["food_item"][0]['calories'] / 1000) * $food_item['amount'];
                            break;
                        default:
                            $total += 0;
                    }                    
                }
            }
            if($this->amount_of_people > 0) {
                $total /= $this->amount_of_people;
            }
            return $total;
        }

        public function ToggleFavourite($dish_id, $user_id) {
            return $this->dish_info->ToggleFavourite($dish_id, $user_id);
        }

        public function CalculateRating($ratings) {
            $total = 0;
            foreach($ratings as $rating) {
                $total += $rating['numeric_field'];
            }
            if($total != 0) {
                $total /= count($ratings);
            }
            return $total;
        }

        public function AddRating($dish_id, $rating) {
            $this->dish_info->AddRating($dish_id, $rating);
        }

        public function GetKitchenType($kitchen_type_id) {
            $kitchen_type = $this->kitchen_type->GetKitchenTypeByID($kitchen_type_id);
            return $kitchen_type;
        }

        public function SearchDish($keyword) {
            $return_value = false;

            $dishes = $this->SelectDishOrDishes();
            foreach($dishes as $dish) {
                $dish_text = json_encode($dish);
                if(strpos($dish_text, $keyword) !== false) {
                    $dishes[] = $dish;
                }
            }
            return $return_value;
        }
    }