<?php

    class DishInfo {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function AddFavourite($dish_id, $user_id) {
            $return_value = false;

            $sql = "INSERT INTO DISH_INFO (record_type,dish_id,user_id,date) VALUES ('favourite','$dish_id','$user_id',NOW())";
            $result = mysqli_query($this->dbc, $sql);

            if(mysqli_affected_rows($this->dbc)) {
                $return_value = !$return_value;
            }

            return $return_value;
        }

        public function SelectDishInfo($record_type) {
            $dish_info = false;

            $sql = "SELECT * FROM DISH_INFO WHERE record_type = \"$record_type\"";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {

                    if ($record_type == 'comment' || $record_type == 'favourite') {
                        $user_id = $row['user_id'];
                        $sqli = "SELECT * FROM USER WHERE ID = $user_id";
                        $rslt = mysqli_query($this->dbc, $sqli);

                        if($rslt->num_rows > 0) {
                            while($user_row = $rslt->fetch_array(MYSQLI_ASSOC)) {
                                $row['user'] = $user_row;
                            }
                        }
                    }
                    $dish_info[] = $row;
                }
            }

            return $dish_info;
        }
    }