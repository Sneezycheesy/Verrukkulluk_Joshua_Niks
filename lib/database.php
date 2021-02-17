<?php
class Database
{
    private $dbc;

    public function __construct()
    {
        $this->dbc = mysqli_connect('192.168.3.21:9906', 'Joshii', 'thispasswordisuseless', 'Verrukkulluk') or die(mysqli_connect_error());
    }

    public function GetDatabaseConnection()
    {
        return $this->dbc;
    }
}
