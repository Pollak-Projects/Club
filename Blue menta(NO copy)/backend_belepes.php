<?php
// This Code is made by Gabor 

require_once("connect.php");
// Adatok lekérése
$id = $_POST['id'];
$nev =  $_POST['nev'];

$permissionlvl = 2;

if ($permissionlvl == 1)
{
    header("Location: http://localhost/HG/Blue%20Menta(No%20COPY)/tanuloi-felulet.html");
    exit();
}
elseif ($permissionlvl == 2)
{
    header("Location: http://localhost/HG/Blue%20Menta(No%20COPY)/csoport-kezeles.html");
    exit();
}

?>