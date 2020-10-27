<?php
    class Database {
        private $dbc;

        public function __construct() {
            $this->dbc = mysqli_connect('localhost', 'Joshii', 'thispasswordisuseless', 'Verrukkulluk_db') or die(mysqli_connect_error());
        }

        public function GetDatabaseConnection() {
            return $this->dbc;
        }

    }

