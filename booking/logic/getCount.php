<?php 
include 'connect.php';
$data = file_get_contents("php://input");
$objData = json_decode($data);

$city=$objData->city;
$passion=$objData->passion;

$stmt = $conn->prepare("select Endorsement_count from data_table where City=? and Passion=?");
$stmt->bind_param("ss", $city, $passion);
$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
if($count)	echo $count;
else		echo 0;
?>