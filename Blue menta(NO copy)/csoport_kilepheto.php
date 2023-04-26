<?php
require_once("connect.php");
//$table = $_POST['tableName'];

/*$sql = "SELECT `tagok`.`csop_id`\n"

    . "FROM `tagok` WHERE `tagok`.`user_id` = ?;";

    $stmt = $mysqli->prepare($sql);
   

   $stmt->bind_param("i",$id);
*/

$sql = "SELECT `tagok`.`csop_id`, `csapat`.`group_name`\n"

    . "FROM `csapat`\n"

    . "    LEFT JOIN `tagok` ON `tagok`.`csop_id` = `csapat`.`group_id` WHERE `tagok`.`user_id` = 1;";

$result = $mysqli->query($sql);

$data = [];
while ($row = $result->fetch_assoc()) {
    $sor = [];
    $sor['id'] = $row['csop_id'];
    $sor['Nev'] = $row['group_name'];
    $data[] = $sor;
}
echo json_encode($data);
?>