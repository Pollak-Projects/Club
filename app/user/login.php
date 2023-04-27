<?php

//require_once realpath(__DIR__ . '/vendor/autoload.php');

require_once('connect.php');

// Looing for .env at the root directory
//$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
//$dotenv->load();

// Checking if the inputs are filled
$fields = [
    'username',
    'password',
];
foreach($fields as $field){
    if(!$_POST[$field]){
        echo 'missing field: ' . $field;
        return http_response_code(400);
    }
}

// Checking if the user exists
$sql = "SELECT count(*) FROM `users` WHERE `user_name` = ? AND `user_pass` = ?";
$stmt = $mysqli->prepare($sql);

$stmt->bind_param("ss", $_POST['username'], $_POST['password']);
$stmt->execute();

if(mysqli_affected_rows($mysqli) < 1){
    echo 'No user found!';
    return http_response_code(401);
}
else{
    return http_response_code(200);
}

?>
