<?php
// Your Google Maps API key
$apiKey = 'AIzaSyAy-PXsjr7WrzK4JC3yCz8uBoSergGNpxE';

session_start();
set_time_limit(0);
include("../essential/connection.php");
date_default_timezone_set('Asia/Taipei');
date_default_timezone_get(); 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['control_id'])) {
		
        $control_id = $_POST['control_id'];
		
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
	
		$filename = $control_id.".jpeg";
		

        try {
			$sql = "UPDATE `tbl_participants` SET `photo`='".$filename."', status='ARRIVED' WHERE `control_id`='".$_POST['control_id']."'";
			
            // Prepare statement
			$stmt = $conn->prepare($sql);

			// execute the query
			$stmt->execute();
			
			file_put_contents("../pax_images/".$filename, $image);

            echo 1;
            exit();

        } catch (PDOException $e) {
            echo "Error:" . $e->getMessage();
        }

    } else {
        echo "
            <script>
                alert('A system problem was found. Please contact ICTMS.');
                window.location.href = '';
            </script>
        ";
    }
}
?>
