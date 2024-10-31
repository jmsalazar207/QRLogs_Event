<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	//require "essential/connection_ext.php";
	//require "essential/pass_key.php";
	//require "essential/plug-in-css.php";
?>
<!-- Table with stripped rows -->
	  <table class="table datatable">
		<thead>
		  <tr>
			<th>Actions</th>
			<th>#</th>
			<th>Full Name</th>
			<th>Position</th>
			<th>Office</th>
			<th>Status</th>
		  </tr>
		</thead>
		<tbody>
		  
		  <?php 
		
		
        $sql = "
            SELECT *
				FROM tbl_participants
			ORDER BY datetime_updated DESC
        ";
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        $result = $stmt->fetchAll();

        foreach ($result as $row) {
            
        ?>

        <tr>
            <td style='white-space: nowrap;'>
				<button type="button" class="btn btn-success btnView" attr="<?php echo $row[0]; ?>"><i class="bi bi-eye"></i></button>
				<button type="button" class="btn btn-secondary btnCamera" attr="<?php echo $row[0]; ?>" fname="<?php echo $row[1]; ?>" 
				<?php
				
					if($row[11] == ""){
						echo "disabled";
					}
				
				?>
				><i class="bi bi-person-bounding-box"></i></button>
				<button type="button" class="btn btn-primary btnGenerateID" attr="<?php echo $row[0]; ?>" fname="<?php echo $row[1]; ?>"
				<?php
				
					if($row[10] == "COMING"){
						echo "disabled";
					}
				
				?>
				><i class="bi bi-person-badge"></i></button>
			</td>
            <td><?php echo $row[0]; ?></td>
            <td><?php echo $row[1]; ?></td>
            <td><?php echo $row[2]; ?></td>
            <td><?php echo $row[3]; ?></td>
            <td>
				<?php 
					if($row[10] == "COMING"){
						echo '<span class="badge bg-info"><i class="bi bi-info-circle me-1"></i> '.$row[10].'</span>';
					}else{
						echo '<span class="badge bg-success"><i class="bi bi-check-circle me-1"></i> '.$row[10].'</span>';
					}
				?>
			</td>
        </tr>

        <?php
        }
        ?>
		  
		</tbody>
	  </table>
	  <!-- End Table with stripped rows -->
	 
	  
<?php
//	require "essential/plug-in-js.php";
?>
<!-- Vendor JS Files -->

<!-- Template Main JS File -->
<script src="library/assets/js/main.js"></script>

