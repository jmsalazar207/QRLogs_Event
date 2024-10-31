<?php
	session_start();
	set_time_limit(0);
?>

<form>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Full Name</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_full_name" autocapitalize="on" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Nick Name</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_nickname" maxlength="10" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Position</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_position" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Office</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_office" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Sex</label>
		<div class="col-sm-9">
			<select class="form-select" aria-label="sex" id="info_sex">
				<option selected>Open this select menu</option>
				<option value='MALE' >Male</option>
				<option value='FEMALE'>Female</option>
			</select>
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Email</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_email_address">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Contact Number</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="info_contact_number">
		</div>
	</div>

</form>