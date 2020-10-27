<?php
    require_once("ingredient.php");
    require_once("user.php");

    class GroceryList {
        private $dbc;
        private $ingredient;
        private $user;
        public function __construct($connection) {
            $this->dbc = $connection;
            $this->ingredient = new Ingredient($this->dbc);
        }

        /// START OF DATABASE FUNCTIONS
        public function GetGroceryListFromDatabase($user_id) { 
            $grocery_list = false;
            $sql = "SELECT * FROM GROCERY_LIST WHERE user_id = $user_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                $grocery_list_id = $result->fetch_assoc()["ID"];
                $sqli = "SELECT * FROM GROCERY_LIST_INGREDIENT WHERE grocery_list_id = $grocery_list_id";
                $result = mysqli_query($this->dbc, $sqli);
                if($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        $grocery_list[] = $row;
                    }
                }
            }
            return $grocery_list;
        }

        public function CheckToAddFoodItemToGroceryList($grocery_list_id, $ingredient) {
            $ingredient_id = $ingredient["id"];
            $sql = "SELECT * FROM GROCERY_LIST_INGREDIENT WHERE grocery_list_id = $grocery_list_id AND ingredient_id = $ingredient_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                return $this->UpdateGroceryListInDatabase($grocery_list_id, $ingredient);
            } 
            else {
                return $this->AddFoodItemToGroceryListInDatabase($grocery_list_id, $ingredient);
            }
        }

        private function UpdateGroceryListInDatabase($grocery_list_id, $ingredient) {
            $success = false;
            $ingredient_id = $ingredient["id"];
            $amount = $ingredient["amount"];
            $sql = "UPDATE GROCERY_LIST_INGREDIENT 
            SET amount = amount + $amount 
            WHERE grocery_list_id = $grocery_list_id AND ingredient_id = $ingredient_id";
            $result = mysqli_query($this->dbc, $sql);
            if(mysqli_affected_rows($this->dbc) > 0) {
                $success = !$success;
            }
            return $success;
        }

        private function AddFoodItemToGroceryListInDatabase($grocery_list_id, $ingredient) {
            $success = false;
            $ingredient_id = $ingredient["id"];
            $amount = $ingredient["amount"];

            $sql = "INSERT INTO GROCERY_LIST_INGREDIENT(grocery_list_id,ingredient_id,amount) VALUES($grocery_list_id,$ingredient_id,$amount)";
            $result = mysqli_query($this->dbc, $sql);
            if(mysqli_affected_rows($this->dbc) > 0) {
                $success = !$success;
            }
            return $success;
        }
        /// END OF DATABASE FUNCTIONS

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