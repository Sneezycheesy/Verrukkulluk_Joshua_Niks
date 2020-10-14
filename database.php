<?php
    class database {
        private $db;

        public function __construct() {
            $this->db = mysqli_connect('localhost', 'joshii', 'thispasswordisuseless', 'Verrukkulluk_db') or die(mysqli_connect_error());
        }

        public function GetDatabaseConnection() {
            return $this->db;
        }

    }

