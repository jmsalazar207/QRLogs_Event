<?php
// Your Google Maps API key
$apiKey = 'AIzaSyAy-PXsjr7WrzK4JC3yCz8uBoSergGNpxE';

session_start();
set_time_limit(0);
include("../essential/connection.php");
//include("../essential/connection_ext.php");
include("../essential/pass_key.php");
date_default_timezone_set('Asia/Taipei');
date_default_timezone_get(); 
$currentdatetime = date("Y-m-d His");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['qr_code'])) {
		
        $qrCode = $_POST['qr_code'];
        $latitude = $_POST['la'];
        $longitude = $_POST['lo'];

        // Get Log Address
        // Google Maps API endpoint for Reverse Geocoding
        $url = "https://maps.googleapis.com/maps/api/geocode/json?latlng={$latitude},{$longitude}&key={$apiKey}";

        // Fetch the JSON response
        $response = file_get_contents($url);

        if ($response === false) {
            die('Error fetching data');
        }

        // Decode the JSON
        $data = json_decode($response);

        if ($data === null || $data->status !== 'OK') {
            die('Invalid data or status');
        }

        // Get the formatted address
        $log_address = $data->results[0]->formatted_address;
        // Captured Log Adress (End Here)
		
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
		$empno = decrypt(base64url_decode($qrCode), $key);
		$attendance_log_id = $empno.date("Y-m-d His");
		$filename = $attendance_log_id.".jpeg";
		
        $sql_ext = "

            SELECT `control_id`, `full_name`, `position`, `office`
            FROM tbl_participants
            WHERE control_id = '".$empno."'

        ";

        $selectStmt_ext = $conn->prepare($sql_ext);

        if ($selectStmt_ext->execute()) {
            $result = $selectStmt_ext->fetch();
            if ($result !== false) {
                $log_empno = $result["control_id"];
                $employee_name = $result["full_name"];
                $employee_position = $result["position"];
                $employee_office = $result["office"];
                $log_time =  date("Y-m-d H:i:s");
            } else {
                echo "No records found in QR Code.";
            }
        } else {
            echo "Failed to execute the statement.";
        }
		
		$sql_checker = "SELECT log_empno, log_time FROM tbl_timelogs WHERE log_empno = '".$log_empno."' AND log_time = '".$log_time."'";
		$stmtC = $conn->prepare($sql_checker);
		 if ($stmtC->execute()) {
            $resultC = $stmtC->fetch();
            if ($resultC !== false) {
                echo "Already log!";
				exit();
            } else {
                
            


        try {
			
            $sql = "
                INSERT INTO tbl_timelogs (
                    log_empno, log_time, log_photo, log_ip, log_latitude, log_longitude, log_address
                ) VALUES (
                    :log_empno, :log_time, :log_photo, :log_ip, :log_latitude, :log_longitude, :log_address
                )         
            ";
            $stmt = $conn->prepare($sql);
            
            $stmt->bindParam(":log_empno", $log_empno, PDO::PARAM_STR); 
            $stmt->bindParam(":log_time", $log_time, PDO::PARAM_STR); 
            $stmt->bindParam(":log_photo", $filename, PDO::PARAM_STR); 
            $stmt->bindParam(":log_ip", $ip_address, PDO::PARAM_STR); 
            $stmt->bindParam(":log_latitude", $latitude, PDO::PARAM_STR); 
            $stmt->bindParam(":log_longitude", $longitude, PDO::PARAM_STR); 
            $stmt->bindParam(":log_address", $log_address, PDO::PARAM_STR); 
            $stmt->execute();
			
			file_put_contents("../upload/".$filename, $image);

            $_SESSION['successful_empno']   =   $log_empno;
            $_SESSION['successful_name']    =   $employee_name;
            $_SESSION['successful_position']=   $employee_position;
            $_SESSION['successful_office']  =   $employee_office;
            $_SESSION['successful_log']     =   $log_time;
            $_SESSION['location_log']     =   $latitude.",".$longitude;
            $_SESSION['address_log']     =   $log_address;
            $_SESSION['filename']     =   $filename;
            
            $returnArr = array($log_empno,$employee_name,$employee_position,$employee_office,$log_time,$latitude,$longitude,$log_address,$filename);    
            echo json_encode($returnArr);
            exit();

        } catch (PDOException $e) {
            echo "Error:" . $e->getMessage();
        }
		
		}
        } else {
            echo "Failed to execute the statement.";
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
