<?php
$database = 'fosmenta';
$mysqli = new mysqli("localhost", "tanulo", "tanulo",$database); 

if (!$mysqli) {
    die('Unable to coonnect to the MySql server' . $mysqli->connect_errno);
}
$db= $mysqli->select_db($database);
if (!$db) {
   die('Unable to coonnect to the MySql server' . $mysqli->connect_errno);
}
@$mysqli->query('SET NAMES utf8mb4');
