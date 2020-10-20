<?php

class FoodItem {


    private $db;

    public function __construct($connection) {
        $this->db = $connection;
    }

    public function GetALLFoodItems() {
        $FoodItem = false;

        $sql = 'SELECT * FROM FOOD_ITEM';
        $result = mysqli_query($this->db, $sql);

        if($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $FoodItem[] = $row;
                }
        }
        return $FoodItem;
    }

    public function SelectFoodItem($food_item_id) {
        
        $FoodItem = false;
        $sql = "select * from FOOD_ITEM where ID = $food_item_id";
        $result = mysqli_query($this->db, $sql);
        
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {

                $FoodItem[] = $row;
            }
        }
        return($FoodItem);
    }





}