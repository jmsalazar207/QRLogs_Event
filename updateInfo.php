<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";

	date_default_timezone_set('Asia/Taipei');
	date_default_timezone_get(); 
	$currentdatetime = date("Y-m-d H:i:s");

try{
	
	if($_GET['full_name'] == ""){
		echo 2;
		exit();
	}
	
	if($_GET['position'] == ""){
		echo 2;
		exit();
	}
	
	if($_GET['office'] == ""){
		echo 2;
		exit();
	}
	
$sql = "
	
	UPDATE `tbl_participants` SET 
		
		`full_name`='".$_GET['full_name']."',
		`position`='".$_GET['position']."',
		`office`='".$_GET['office']."',
		`sex`='".$_GET['sex']."',
		`email_address`='".$_GET['email_address']."',
		`contact_number`='".$_GET['contact_number']."',
		`nickname`='".$_GET['nickname']."',
		`updated_by`='".$_SESSION['empno']."',
		`datetime_updated`='".$currentdatetime."'
		
	WHERE 
		
		`control_id`='".$_GET['control_id']."'

";

// Prepare statement
$stmt = $conn->prepare($sql);

// execute the query
$stmt->execute();

echo 1;

}catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
}

?>