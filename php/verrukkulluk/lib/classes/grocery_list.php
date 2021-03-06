<?php
    require_once("food_item.php");
    require_once("user.php");

    class GroceryList {
        private $dbc;
        private $food_item;
        private $user;
        public function __construct($connection) {
            $this->dbc = $connection;
            $this->food_item = new FoodItem($this->dbc);
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
                        $food_item = $this->food_item->SelectFoodItem($row["food_item_id"]);
                        $grocery_list[] = [
                            "grocery_list" => $row,
                            "food_item" => $food_item,
                        ];
                    }
                }
            }
            return $grocery_list;
        }

        public function GetGroceryListID($user_id) {
            $return_val = false;
            $sql = "SELECT * FROM GROCERY_LIST WHERE user_id = $user_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                $return_val = $result->fetch_assoc()["ID"];
            }

            return $return_val;
        }

        public function CheckToAddFoodItemToGroceryList($grocery_list_id, $food_item_id, $amount) {
            $sql = "SELECT * FROM GROCERY_LIST_INGREDIENT WHERE grocery_list_id = $grocery_list_id AND food_item_id = $food_item_id";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                return $this->UpdateGroceryListInDatabase($grocery_list_id, $food_item_id, $amount);
            } 
            else {
                return $this->AddIngredientToGroceryListInDatabase($grocery_list_id, $food_item_id, $amount);
            }
        }

        private function UpdateGroceryListInDatabase($grocery_list_id, $food_item_id, $amount) {
            $success = false;
            $sql = "UPDATE GROCERY_LIST_INGREDIENT 
            SET amount = amount + $amount 
            WHERE grocery_list_id = $grocery_list_id AND food_item_id = $food_item_id";
            $result = mysqli_query($this->dbc, $sql);
            if(mysqli_affected_rows($this->dbc) > 0) {
                $success = !$success;
            }
            return $success;
        }

        private function AddIngredientToGroceryListInDatabase($grocery_list_id, $food_item_id, $amount) {
            $success = false;

            $sql = "INSERT INTO GROCERY_LIST_INGREDIENT(grocery_list_id,food_item_id,amount) 
                    VALUES($grocery_list_id,$food_item_id,$amount)";
            $result = mysqli_query($this->dbc, $sql);
            if(mysqli_affected_rows($this->dbc) > 0) {
                $success = !$success;
            }
            return $success;
        }

        public function RemoveIngredientFromGroceryListInDatabase($grocery_list_id, $food_item_id) {
            $success = false;
            $sql = "DELETE FROM GROCERY_LIST_INGREDIENT WHERE grocery_list_id = $grocery_list_id AND food_item_id = $food_item_id";
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

        public function UpdateAmountOfProduct($grocery_list_id, $food_item_id, $amount) {
            $sql = "UPDATE GROCERY_LIST_INGREDIENT 
            SET amount = $amount 
            WHERE grocery_list_id = $grocery_list_id AND food_item_id = $food_item_id";
            
            $result = mysqli_query($this->dbc, $sql);

            if(mysqli_affected_rows($this->dbc) > 0) {
                return true;
            }
            else {
                return false;
            }
        }

        public function GetGroceryList() {
            return $this->grocery_list;
        }

    }