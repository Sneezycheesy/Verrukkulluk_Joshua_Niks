<?php

    class GroceryList {
        private $grocery_list = [];
        public function __construct() {

        }

        /// Store food items in list as key=>value pairs
        /// (storing $food_item x amount of times could also work, is this better?)
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

        public function RemoveFoodItemFromGroceryList($food_item) { /// Work In Progress
            foreach($this->grocery_list as $key=>$value) {
                if ($value["ID"] == $food_item["ID"]) {
                    unset($this->grocery_list[$key]);
                }
            }
            return $this->GetGroceryList();
        }

        public function CheckProducts($food_item_id) {
            $food_item = false;
            foreach($this->grocery_list as $food) {
                if($food["ID"] == $food_item_id) {
                    $food_item != $food_item; 
                }
            }

            return $food_item;
        }

        public function UpdateAmountOfProduct($food_item, $amount) {
            $this->grocery_list[$food_item]["amount"] = $amount;
            return $this->GetGroceryList();
        }

        public function GetGroceryList() {
            return $this->grocery_list;
        }

    }