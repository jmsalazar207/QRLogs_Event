<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	
	$sql_ext = "

		SELECT `control_id`, `full_name`, `position`, `office`, `sex`, `email_address`, `contact_number`, photo, nickname
		FROM tbl_participants
		WHERE control_id  = '".$_GET["controlId"]."'

	";
	$selectStmt_ext = $conn->prepare($sql_ext);

	if ($selectStmt_ext->execute()) {
		$result = $selectStmt_ext->fetch();
		if ($result !== false) {

			$control_id = $result["control_id"];
			$full_name = $result["full_name"];
			$position = $result["position"];
			$office = $result["office"];
			$sex = $result["sex"];
			$email_address = $result["email_address"];
			$contact_number = $result["contact_number"];
			$photo = $result["photo"];
			$nickname = $result["nickname"];

		} else {
			echo "No record found.";
		}
	} else {
		echo "Failed to execute the statement.";
	}
?>

<form>
	<div class="row mb-3">
		<center>
			<img src="pax_images/<?= $photo ?>" width="200" height="200">
		</center>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Event<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_nickname" value="<?= $nickname ?>" maxlength="100" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Full Name<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_full_name" required value="<?= $full_name ?>" oninput="this.value = this.value.toUpperCase()">
			<input type="hidden" class="form-control" id="info_control_id" value="<?= $control_id ?>">
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Position<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_position" required value="<?= $position ?>" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Office<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_office" required value="<?= $office ?>" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Sex</label>
		<div class="col-sm-9">
			<select class="form-select" aria-label="sex" id="info_sex">
				<option >Open this select menu</option>
				<?php
				
					if($sex == "MALE"){
						echo "
							<option value='MALE' selected>Male</option>
							<option value='FEMALE'>Female</option>
						";
					}else{
						echo "
							<option value='MALE' >Male</option>
							<option value='FEMALE' selected>Female</option>
						";
					}
				
				?>
				
			</select>
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Email</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_email_address" value="<?= $email_address ?>">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Contact Number</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_contact_number" value="<?= $contact_number ?>">
		</div>
	</div>

</form>