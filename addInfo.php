<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	
	date_default_timezone_set('Asia/Taipei');
	date_default_timezone_get(); 
	$currentdatetime = date("Y-m-d H:i:s");

try{
	// var_dump($_GET);
	// die();
	if($_GET['full_name'] == ""){
		echo 2;
		exit();
	}
	if($_GET['nickname'] == ""){
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

	INSERT INTO `tbl_participants`(
		`full_name`, 
		`position`, 
		`office`, 
		`sex`, 
		`email_address`, 
		`contact_number`,
		`added_by`, 
		`status`, 
		`nickname`,
		photo,
		added_datetime,
		updated_by,
		datetime_updated
	) VALUES (
		'".$_GET['full_name']."',
		'".$_GET['position']."',
		'".$_GET['office']."',
		'".$_GET['sex']."',
		'".$_GET['email_address']."',
		'".$_GET['contact_number']."',
		'".$_SESSION['empno']."',
		'COMING',
		'".$_GET['nickname']."',
		'noimg.jpg',
		'".$currentdatetime."',
		'".$_SESSION['empno']."',
		'".$currentdatetime."'
	)

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