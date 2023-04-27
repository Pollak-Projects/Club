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
    'email',
    'firstname',
    'lastname'
];
foreach($fields as $field){
    if(!$_POST[$field]){
        echo 'missing field: ' . $field;
        return http_response_code(400);
    }
}

// Checking if the user exists
$sql = "SELECT count(*) FROM users WHERE user_name = ? AND user_pass = ? AND user_email = ? LIMIT 1";
$stmt = $mysqli->prepare($sql);

$stmt->bind_param("sss", $_POST['username'], $_POST['password'], $_POST['email']);
$stmt->execute();
var_dump($stmt);

$lines = $stmt->num_rows;
if($lines >= 1){
    echo 'User as alias already exists!';
    return http_response_code(409);
    
}
else{
    $stmt->close();
    $mysqli->next_result();
    
    $sql = "INSERT INTO users (user_name, user_pass, user_email, user_first_name, user_last_name) VALUES (?,?,?,?,?)";
    $stmt = $mysqli->prepare($sql);
    
    
    $stmt->bind_param("sssss", $_POST['username'], $_POST['password'], $_POST['email'], $_POST['firstname'], $_POST['lastname']);
    $stmt->execute();

    $lines = $stmt->num_rows;

    var_dump($stmt);

    echo $lines;

    if($lines <= 0){
        $stmt->close();
        $mysqli->next_result();
        
        echo 'there was some issue while registering!';
    }
    else{
        $stmt->close();
        $mysqli->next_result();

        echo 'Succesful register!';
        return http_response_code(200);
    }
}
