<?php
    require_once("./ingredient.php");

    class GroceryList {
        private $dbc;
        private $ingredient;
        private $grocery_list = [];
        public function __construct($connection) {
            $this->dbc = $connection;
            $this->ingredient = new Ingredient($this->dbc);
        }

       public function AddFoodItemToGroceryList($food_item, $amount) {
           $item_in_array = false;
            foreach($this->grocery_list as $key=>$value) {
                if($value["ID"] == $food_item["ID"]) {
                    $this->grocery_list[$key]["amount"] += $amount;
                    $item_in_array = true;
                }                
            }
            if(!$item_in_array) {
                $food_item["amount"] = $amount;
                $this->grocery_list[] = $food_item;
            }
       }

        public function RemoveFoodItemFromGroceryList($food_item) { 
            foreach($this->grocery_list as $key=>$value) {
                if ($value["ID"] == $food_item["ID"]) {
                    unset($this->grocery_list[$key]);
                }
            }
            return $this->GetGroceryList();
        }

        public function UpdateAmountOfProduct($food_item, $amount) {
            foreach($this->grocery_list as $key=>$value) {
                if ($value["ID"] == $food_item["ID"]) {
                    $this->grocery_list[$key][$value["amount"]] = $amount;
                }
            }
            return $this->GetGroceryList();
        }

        public function GetGroceryList() {
            return $this->grocery_list;
        }

    }