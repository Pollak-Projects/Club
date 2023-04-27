<?php
require_once(".../global/database_connection/global_connect.php");

$DatabaseConnect = new DatabaseConnect();
$mysqli = $DatabaseConnect->ConnectToDatabaseTable();

$quizId = $_POST['quizId'];

$sql = "SELECT * FROM `questions` where `quiz_id` = " . $quizId . "";

$result = $mysqli->query($sql);

$data = [];

while ($row = $result->fetch_assoc()) {
    $sor = [];

    $sor['question_id'] = $row['question_id'];
    $sor['registration_id'] = $row['registration_id'];
    $sor['quiz_id'] = $row['quiz_id'];
    $sor['question_question'] = $row['question_question'];
    $sor['question_answers'] = $row['question_answers'];
    $sor['question_markable_answers'] = $row['question_markable_answers'];
    $sor['question_correct_answers'] = $row['question_correct_answers'];
    $sor['question_description'] = $row['question_description'];
    $sor['question_type'] = $row['question_type'];

    $data[] = $sor;
}

echo json_encode($data);
