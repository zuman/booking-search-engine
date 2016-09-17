<?php 
include 'connect.php';
$data = file_get_contents("php://input");
$objData = json_decode($data);

$city=$objData->city;
$passion=$objData->passion;
$endorsement=$objData->endorsement;

$stmt = $conn->prepare("select count(City) as counter from data_table where City=? and Passion=?");
$stmt->bind_param("ss", $city, $passion);
$stmt->execute();
$stmt->bind_result($counter);
$stmt->fetch();

$conn->close();
include 'connect.php';

	if($counter){
		$q1 = $conn->prepare("UPDATE data_table set Endorsement_count=? WHERE City=? and Passion=?");
		$q1->bind_param("iss", $objData->endorsement, $objData->city, $objData->passion);
		$status=$q1->execute();
		if($status)		echo $status." row updated successfully.";
		$q1->close();
	}
	else{
		$q2 = $conn->prepare("INSERT INTO data_table (City,Passion,Endorsement_count) VALUES (?, ?, ?)");
		$q2->bind_param("sss", $objData->city, $objData->passion, $objData->endorsement);
		$status=$q2->execute();
		if($status)		echo $status." row inserted successfully.";
		$q2->close();
	}

$stmt->close();
$conn->close();
?>