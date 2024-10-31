
<?php

	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	//require "essential/connection_ext.php";
	require "essential/pass_key.php";
	require "essential/plug-in-css.php";
	
	date_default_timezone_set('Asia/Taipei');
	date_default_timezone_get(); 
	
$originalDate = $_GET['specificdate'];
$newDate = date("l jS \of F Y", strtotime($originalDate));
$sqlDate = date("m-d-y", strtotime($originalDate));

?>

<div style="width:100%; overflow:auto;">

<div class="card">
<div class="card-body" style='overflow:auto'>
  <h5 class="card-title">List of Participants with Log on <?php echo $newDate; ?></h5>

  <!-- Table with hoverable rows -->
  <table class="table table-hover">
	<thead>
	  <tr>
		<th scope="col">#</th>
		<th scope="col">Captured Photo</th>
		<th scope="col">Name</th>
		<th scope="col">Office</th>
		<th scope="col">Position</th>
		<th scope="col">Time</th>
        <th scope="col">Log Location</th>
	  </tr>
	</thead>
	<tbody>
	
<?php 
		$ctrLog = 1;
		$ctrNoLog = 1;
		$stringPresent = "";
		$stringNoPresent = "";
       $sql = "
           SELECT `control_id`, `full_name`, `position`, `office`, `photo`
			FROM `tbl_participants`
			WHERE status = 'ARRIVED'
			ORDER BY `office`, `full_name`;
        ";
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        $result = $stmt->fetchAll();

        foreach ($result as $row) {
            
            $sql_ext = "

                SELECT `log_empno`, `log_time`, `log_photo`, `log_address`
				FROM `tbl_timelogs` 
				WHERE log_empno = '".$row['control_id']."' AND date_format(log_time, '%m-%d-%y') = '".$sqlDate."'
				ORDER BY log_time DESC
				LIMIT 1

            ";
            $selectStmt_ext = $conn->prepare($sql_ext);

            if ($selectStmt_ext->execute()) {
                $result = $selectStmt_ext->fetch();
                if ($result !== false) {
					
                    $employee_name = $row["full_name"];
                    $employee_position = $row["position"];
                    $employee_office = $row["office"];

                    $log_photo = "upload/".$result["log_photo"];
                    $log_time = date('h:i A', strtotime($result["log_time"]));

                    $log_address = $result["log_address"];
					
					$stringPresent .= "<tr>";
					$stringPresent .= "<td>".$ctrNoLog++."</td>";
					$stringPresent .= "<td><img src='".$log_photo."' width='100'/></td>";
					$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["full_name"]."</td>";
					$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["office"]."</td>";
					$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["position"]."</td>";
					$stringPresent .= "<td style='white-space: nowrap !important;'>".$log_time."</td>";
					$stringPresent .= "<td style='white-space: nowrap !important;'>".$log_address."</td>";
					$stringPresent .= "</tr>";

                } else {
					
					$stringNoPresent .= "<tr>";
					$stringNoPresent .= "<td>".$ctrLog++."</td>";
					$stringNoPresent .= "<td>".$row["full_name"]."</td>";
					$stringNoPresent .= "<td>".$row["office"]."</td>";
					$stringNoPresent .= "<td>".$row["position"]."</td>";
					$stringNoPresent .= "</tr>";
					
                }
            } else {
                echo "Failed to execute the statement.";
            }	
        }
			if($stringPresent == ""){
				echo "<tr><td colspan=7>*** No Records Found ***</td></tr>";
			}else{
				echo $stringPresent;
			}
				
        ?>
	  
	</tbody>
  </table>
  <!-- End Table with hoverable rows -->

</div>
</div>

<div class="card">
<div class="card-body">
  <h5 class="card-title">List of Participants with No Logs on <?php echo $newDate; ?></h5>

  <!-- Table with hoverable rows -->
  <table class="table table-hover">
	<thead>
	  <tr>
		<th scope="col">#</th>
		<th scope="col">Name</th>
		<th scope="col">Office</th>
		<th scope="col">Position</th>
	  </tr>
	</thead>
	<tbody>
	
		<?php 
		
			if($stringNoPresent == ""){
				echo "<tr><td colspan=4>*** No Records Found ***</td></tr>";
			}else{
				echo $stringNoPresent;
			}
		
		?>
		
	</tbody>
  </table>
  <!-- End Table with hoverable rows -->

</div>
</div>
</div>
