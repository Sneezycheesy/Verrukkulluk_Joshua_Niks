<?php

    class User {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function SelectUser($user_id) {
            $user = false;
            
            $sql = "SELECT * FROM USER WHERE ID = $user_id";
            $result = mysqli_query($this->dbc, $sql);

            $user[] = $result->fetch_assoc();
            return $user;
        }

        public function LogIn($user_name, $password) {
            $return_value = false;

            $sql = "SELECT * FROM USER WHERE user_name = '$user_name' AND password = '$password'";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                $return_value = $result->fetch_assoc()["ID"];
            }

            return $return_value;
        }
    }