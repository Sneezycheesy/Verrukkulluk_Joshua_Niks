<?php

class FoodItem {


    private $db;

    public function __construct($connection) {
        $this->db = $connection;
    }

    public function GetALLFoodItems() {
        $FoodItem = array();

        $sql = 'SELECT * FROM FOOD_ITEM';
        $result = mysqli_query($this->db, $sql);

        if($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                foreach($row as $field=>$value) {
                    $FoodItem[$row['ID']][$field] = $value;
                }
            }
        }
        else {
            echo "No data found!";
        }


        return $FoodItem;
    }

    public function SelectFoodItem($FoodItemId) {
        
        $FoodItem = array();
        $sql = "select * from FOOD_ITEM where ID = $FoodItemId";
        $result = mysqli_query($this->db, $sql);
        
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                foreach($row as $field=>$value) {
                        $FoodItem[$row['ID']][$field] = $value;
                }

                /* Old method DO NOT REPEAT!!!
                $FoodItem[$row['ID']]['ID'] = $row['ID'];
                $FoodItem[$row['ID']]['food_item_id'] = $row['food_item_id'];
                $FoodItem[$row['ID']]['name'] = $row['name'];
                $FoodItem[$row['ID']]['price'] = $row['price'];
                $FoodItem[$row['ID']]['description'] = $row['description'];
                $FoodItem[$row['ID']]['calories'] = $row['calories'];
                $FoodItem[$row['ID']]['image'] = $row['image']; */
            }
        }

        else {
            echo "No data found.";
        }
        return($FoodItem);
    }





}