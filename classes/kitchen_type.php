<?php

    class KitchenType {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function GetKitchenTypeByID($ID) {
            $kitchen_type = false;

            $sql = "SELECT * FROM KITCHEN_TYPE WHERE ID = $ID";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                $kitchen_type[] = $result->fetch_assoc();
            }
            return $kitchen_type;
        }
    }