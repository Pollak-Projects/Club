<?php

require_once("connect.php");
// Adatok lekérése
    if(!empty($_POST['csoport-csat'])) {
        $selected = intval($_POST['csoport-csat']);
        $id = 1;
        $sql = "INSERT INTO `tagok` (`csop_id`, `user_id`) VALUES (?, ?);";


        $stmt = $mysqli->prepare($sql);
   

        $stmt->bind_param("ii", $selected,$id);
        $stmt->execute();
        echo "Sikeres csatlakozás a csapathoz!";
    }
?>