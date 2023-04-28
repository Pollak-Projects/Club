<?php
require_once("connect.php");

$csoportid = $_POST['csoportid'];
echo $csoportid;
$sql = "SELECT `csapatok_quizei`.`quiz_id`, `quiz`.`quiz_name`\n"

. "FROM `quiz`\n"

. "    INNER JOIN `csapatok_quizei` ON `csapatok_quizei`.`quiz_id` = `quiz`.`quiz_id` WHERE `csapatok_quizei`.`csapat_id` = ?";

$stmt = $mysqli->prepare($sql);
   
$stmt->bind_param("i", $csoportid);
$stmt->execute();

$result = $mysqli->query($sql);

$data = [];

while ($row = $result->fetch_assoc()) {
$sor = [];
$sor['id'] = $row['quiz_id'];
$sor['Nev'] = $row['quiz_name'];
$data[] = $sor;
}

echo json_encode($data);

?>
