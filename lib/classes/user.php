<?php

    class User {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function SelectUser($user_name, $password) {
            $user = false;
            
            $sql = "SELECT * FROM USER WHERE username = '$user_name' AND password = '$password'";
            $result = mysqli_query($this->dbc, $sql);

            if($result->num_rows > 0) {
                $user = $result->fetch_assoc();
            }
            return $user;
        }
    }