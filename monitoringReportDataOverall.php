
<?php

	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	//require "essential/connection_ext.php";
	require "essential/pass_key.php";
	require "essential/plug-in-css.php";
	
	date_default_timezone_set('Asia/Taipei');
	date_default_timezone_get(); 

?>

<div style="width:100%;">

<div class="card">
<div class="card-body" style='overflow:auto'>
  <h5 class="card-title">List of Participants Attended</h5>

  <!-- Table with hoverable rows -->
  <table class="table table-hover">
	<thead>
	  <tr>
		<th scope="col">#</th>
		<th scope="col">Name</th>
		<th scope="col">Office</th>
		<th scope="col">Position</th>
		<th scope="col">Sex</th>
		<th scope="col">Email</th>
		<th scope="col" style='white-space: nowrap !important;'>Contact Number</th>
		<th scope="col" style='white-space: nowrap !important;'>Day 1</th>
		<th scope="col" style='white-space: nowrap !important;'>Day 2</th>
		<th scope="col" style='white-space: nowrap !important;'>Day 3</th>
		<th scope="col" style='white-space: nowrap !important;'>Day 4</th>
		<th scope="col" style='white-space: nowrap !important;'>Day 5</th>
	  </tr>
	</thead>
	<tbody>
	
<?php 
		$ctrLog = 1;
		$ctrNoLog = 1;
		$stringPresent = "";
		$stringNoPresent = "";
       $sql = "
           SELECT `control_id`, `full_name`, `position`, `office`, `sex`, `email_address`, `contact_number`
			FROM `tbl_participants`
			WHERE status = 'ARRIVED'
			ORDER BY `office`, `full_name`;
        ";
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        $result = $stmt->fetchAll();

        foreach($result as $row) {
			
			$stringPresent .= "<tr>";
			$stringPresent .= "<td>".$ctrNoLog++."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["full_name"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["office"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["position"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["sex"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["email_address"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["contact_number"]."</td>";
			
			$day1 = '';
			$day2 = '';
			$day3 = '';
			$day4 = '';
			$day5 = '';
            
            $sql_ext = "

                SELECT `log_empno`, date_format(log_time, '%m-%d-%y') as logCheck, `log_photo`, `log_address`
				FROM `tbl_timelogs` 
				WHERE log_empno = '".$row['control_id']."' AND date_format(log_time, '%m-%d-%y') BETWEEN '06-24-24' AND '06-28-24'
				ORDER BY log_time ASC

            ";
			
            $selectStmt_ext = $conn->prepare($sql_ext);

            if ($selectStmt_ext->execute()) {
                $result_ext = $selectStmt_ext->fetchAll();
				foreach($result_ext as $rowext) {
					
					if($rowext["logCheck"] == '06-24-24'){
						$day1 = 'P';
					}
					if($rowext["logCheck"] == '06-25-24'){
						$day2 = 'P';
					}
					if($rowext["logCheck"] == '06-26-24'){
						$day3 = 'P';
					}
					if($rowext["logCheck"] == '06-27-24'){
						$day4 = 'P';
					}
					if($rowext["logCheck"] == '06-28-24'){
						$day5 = 'P';
					}
					
				}
            } else {
                echo "Failed to execute the statement.";
            }	
			
			$stringPresent .= "<td style='text-align: center;'>".$day1."</td>";
			$stringPresent .= "<td style='text-align: center;'>".$day2."</td>";
			$stringPresent .= "<td style='text-align: center;'>".$day3."</td>";
			$stringPresent .= "<td style='text-align: center;'>".$day4."</td>";
			$stringPresent .= "<td style='text-align: center;'>".$day5."</td>";
			$stringPresent .= "</tr>";
        }
		
		echo $stringPresent;
				
        ?>
	  
	</tbody>
  </table>
  <!-- End Table with hoverable rows -->

</div>
</div>


<div class="card">
<div class="card-body" style='overflow:auto'>
  <h5 class="card-title">List of Expected Participant/s (Did Not Arrive)</h5>

  <!-- Table with hoverable rows -->
  <table class="table table-hover">
	<thead>
	  <tr>
		<th scope="col">#</th>
		<th scope="col">Name</th>
		<th scope="col">Office</th>
		<th scope="col">Position</th>
		<th scope="col">Sex</th>
		<th scope="col">Email</th>
		<th scope="col" style='white-space: nowrap !important;'>Contact Number</th>
	  </tr>
	</thead>
	<tbody>
	
<?php 
		$ctrLog = 1;
		$stringPresent = "";
       $sql = "
           SELECT `control_id`, `full_name`, `position`, `office`, `sex`, `email_address`, `contact_number`
			FROM `tbl_participants`
			WHERE status = 'COMING'
			ORDER BY `office`, `full_name`;
        ";
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        $result = $stmt->fetchAll();

        foreach($result as $row) {
			
			$stringPresent .= "<tr>";
			$stringPresent .= "<td>".$ctrLog++."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["full_name"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["office"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["position"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["sex"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["email_address"]."</td>";
			$stringPresent .= "<td style='white-space: nowrap !important;'>".$row["contact_number"]."</td>";
			$stringPresent .= "</tr>";

        }
		
		echo $stringPresent;
				
        ?>
	  
	</tbody>
  </table>
  <!-- End Table with hoverable rows -->

</div>
</div>


</div>
