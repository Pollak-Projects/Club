<?php
require_once("connect.php");
$table = $_POST['tableName'];
$id = 1
$sql = "SELECT * FROM `".$table. "`";

$result = $mysqli->query($sql);
$data = [];
while ($row = $result->fetch_assoc()) {
    $sor = [];
    $sor['id'] = $row['group_id'];
    $sor['Nev'] = $row['group_name'];
    $data[] = $sor;
}
echo json_encode($data);
?>