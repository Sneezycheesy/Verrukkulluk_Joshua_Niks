<?php

    class DishInfo {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function SelectDishInfo($record_type) {
            $dish_info = false;

            $sql = "SELECT * FROM DISH_INFO WHERE record_type = \"$record_type\"";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<pre> Row:";
                    var_dump($row["ID"]);

                    $dish_info[] = $row;

                    echo "<pre> DishInfo:";
                    var_dump($dish_info);

                    if($record_type == "comment" || $record_type == "favourite") {
                        $user_id = $row['user_id'];
                        $sql = "SELECT * FROM USER WHERE ID = $user_id";
                        $result = mysqli_query($this->dbc, $sql);
    
                        if($result->num_rows > 1) {
                            while($value = $result->fetch_assoc()) {
                                $row[5] = $value;
                            }
                        }
                    }
                }
            }

            return $dish_info;
        }
    }