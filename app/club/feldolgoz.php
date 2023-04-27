<?php
// This Code is made by Imii and Gabor 

require_once("connect.php");
// Adatok lekérése
$csoport = $_POST['csoport'];
$description =  $_POST['des'];
//var_dump($description);
if (!$description == NULL)
{
    // Csapat készítés leírással együtt
    $sql = "INSERT INTO `csapat` (`group_name`,`group_description`)
    VALUES (?, ?)";
   $stmt = $mysqli->prepare($sql);
   

   $stmt->bind_param("ss", $csoport,$description);
   $stmt->execute();
   echo "Sikeres beküldés";

}
else
{
    // Csapat készítés leírás nélkül
    $sql = "INSERT INTO `csapat` (`group_name`)
    VALUES (?)";
   $stmt = $mysqli->prepare($sql);
   

   $stmt->bind_param("s", $csoport);
   $stmt->execute();
   echo "Sikeres beküldés";

}
?>