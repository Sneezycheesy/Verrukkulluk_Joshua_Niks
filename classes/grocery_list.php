<?php

    class GroceryList {
        private $grocery_list;
        public function __construct() {

        }

        public function AddFoodItemToGroceryList($food_item, $amount) {
            for($amount; $amount > 0; $amount--) {
                $this->grocery_list[] = $food_item;
            }
        }

        public function RemoveFoodItemFromGroceryList($food_item) {
            if ($this->grocery_list->delete($food_item)) {
                return true;
            }
            else {
                return false;
            }
        }

        public function CheckProducts($food_item) {
            $amount = 0;
            foreach($this->grocery_list as $item) {
                if ($item == $food_item) {
                    $amount++;
                }
            }
            return $amount;
        }

        public function GetGroceryList() {
            return $this->grocery_list or false;
        }

    }