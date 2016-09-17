<?php 
include 'connect.php';
$data = file_get_contents("php://input");
$objData = json_decode($data);

$stmt = $conn->prepare("SELECT city, passion, Endorsement_count FROM data_table WHERE passion like ?");

$searches=explode(" ",$objData->search);
foreach ($searches as &$search){
	$input="%".$search."%";
	//echo $input;
	$stmt->bind_param("s", $input);
	$stmt->execute();
	$stmt->bind_result($city,$passion,$endorsement);
	while($stmt->fetch()){
		//$rows[]=array($endorsement,$city,$passion);
		$rows[]=array($city,$passion,$endorsement);
	}
}

if(!isset($rows)){
	echo "No such passion in our database.";
	die();
}
array_multisort($rows, SORT_DESC);

//echo count($rows);
//Cities array
$oldcity="";
$passion=array();
foreach ($rows as $row){
	$newcity=$row[0];
	
	if(strcmp("",$oldcity)==0 || strcmp($newcity,$oldcity)){
		if(strcmp("",$oldcity)!=0 && strcmp($newcity,$oldcity))	$cities[$oldcity]=$passion;
		$oldcity=$newcity;
		$passion=array();
		$passion[$row[1]]=$row[2];
		if(isset($passions[$row[1]]))	$passions[$row[1]]+=$row[2];
		else							$passions[$row[1]]=$row[2];
	}
	else{
		$flag=1;
		foreach($passion as $k=>$v)
			if(strcmp($row[1],$k)==0){
				$flag=0;
				break;
			}
		if($flag){
			$passion[$row[1]]=$row[2];
			if(isset($passions[$row[1]]))	$passions[$row[1]]+=$row[2];
			else							$passions[$row[1]]=$row[2];
		}
	}
}
$cities[$oldcity]=$passion;
unset($row);

//echo json_encode($cities);
//echo json_encode($passions);

foreach($cities as $city => &$data){
	$score[$city]=0;
	foreach($data as $passion => &$count){
		$data[$passion]=$count/$passions[$passion];
		$score[$city]+=$data[$passion];
	}
	$data['score']=$score[$city];
	$volume[$city]=$data['score'];
}
array_multisort($volume, SORT_DESC, $cities);
echo json_encode($cities);
//echo json_encode($passions);

//array_multisort($score, SORT_DESC);
//echo json_encode($score);
?>