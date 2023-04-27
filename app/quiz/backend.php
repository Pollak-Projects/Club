<?php
$conn = mysqli_connect("localhost", "tanulo", "tanulo", "bluementa");


if (!$conn) {
  die("Kapcsolódási hiba: " . mysqli_connect_error());
}


$sql = "SELECT * from quiz";


if ($result = mysqli_query($conn, $sql)) {
  $rowcount = mysqli_num_rows( $result );
}


mysqli_close($conn); 
?>
