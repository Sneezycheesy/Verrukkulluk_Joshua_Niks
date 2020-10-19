<?php

    class KitchenType {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function GetKitchenTypeByID($ID) {
            $kitchen_type = false;

            $sql = "SELECT * FROM KITCHEN_TYPE WHERE ID = $ID";
            $result = mysqli_query($dbc, $sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $kitchen_type[] = $row;
                }
            }

            return $kitchen_type;
        }
    }