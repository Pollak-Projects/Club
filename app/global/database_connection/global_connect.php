<?php
class DatabaseConnect
{
    public function ConnectToDatabaseTable()
    {
        $mysqli = new mysqli("localhost", "tanulo", "tanulo", "Bluementa");

        if (!$mysqli) {
            die('Unable to coonnect to the MySql server' . $mysqli->connect_errno);
        }
        @$mysqli->query('SET NAMES utf8mb4');

        return $mysqli;
    }
}
