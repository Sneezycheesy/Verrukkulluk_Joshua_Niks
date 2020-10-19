<?php

    class User {
        private $dbc;

        public function __construct($connection) {
            $this->dbc = $connection;
        }

        public function SelectUser($user_id) {
            $user = false;
            
            $sql = 'SELECT * FROM USER WHERE ID = $user_id';
            $result = mysqli_query($this->dbc, $sql);

            $user =$result->fetch_assoc();
            return $user;
        }
    }