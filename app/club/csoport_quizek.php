<?php

require_once("connect.php");
// Adatok lekérése
$csoportid = $_POST['csoport'];
$sql = "SELECT `csapatok_quizei`.`csapat_id`\n"

    . "FROM `csapatok_quizei` WHERE `csapatok_quizei`.`csapat_id` = ?";

$stmt = $mysqli->prepare($sql);
   
$stmt->bind_param("i", $csoportid);
$stmt->execute();

$stmt->store_result(); 

$sorok = $stmt->num_rows;
$stmt->close();
$mysqli->next_result();
$mysqli -> close();
if($sorok == 0)
{
    echo "Ennek a csapatnak nincsenek quizei!";
}
else
{
    sleep(1);
    header("Location: http://localhost/HG/Blue%20Menta(No%20COPY)/quizek-kiir.html?clubid=".$csoportid);
    exit();
}
?>