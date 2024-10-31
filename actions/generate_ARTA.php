<?php
include("../essential/connection.php");
include("../essential/connection_ext.php");
date_default_timezone_set('Asia/Taipei');
date_default_timezone_get(); 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['capturedimage'])) {
		
		// Get the incoming image data
		$image = $_POST["capturedimage"];
		 
		// Remove image/jpeg from left side of image data
		// and get the remaining part
		$image = explode(";", $image)[1];
		 
		// Remove base64 from left side of image data
		// and get the remaining part
		$image = explode(",", $image)[1];
		 
		// Replace all spaces with plus sign (helpful for larger images)
		$image = str_replace(" ", "+", $image);
		 
		// Convert back from base64
		$image = base64_decode($image);
		 
		// Save the image as filename.jpeg
		$empno = '03-9079';
		$attendance_log_id = date("Y-m-d His");
		$filename = $attendance_log_id.".jpeg";
		
        file_put_contents("../ARTAID/".$filename, $image);
    }}
?>
