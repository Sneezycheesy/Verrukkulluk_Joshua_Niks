<?php

    class GroceryList {
        private $grocery_list;
        public function __construct() {

        }

        /// Store food items in list as key=>value pairs
        /// (storing $food_item x amount of times could also work, is this better?)
        public function AddFoodItemToGroceryList($food_item, $amount) {
            $this->grocery_list[] = $food_item;
            $this->grocery_list[$food_item]["amount"] = $amount;
        }

        public function RemoveFoodItemFromGroceryList($food_item) {
            unset($this->grocery_list[$food_item]);
        }

        public function CheckProducts($food_item) {
            return $this->grocery_list[$food_item] or false;
        }

        public function UpdateAmountOfProduct($food_item, $amount) {
            $this->grocery_list[$food_item]["amount"] = $amount;
        }

        public function GetGroceryList() {
            return $this->grocery_list;
        }

    }