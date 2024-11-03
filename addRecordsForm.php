<?php
	session_start();
	set_time_limit(0);
?>

<form>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Event<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="add_info_nickname" maxlength="100" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Full Name<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="add_info_full_name" required autocapitalize="on" oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Position<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="add_info_position" required oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Office<span style="color:red"> *</span></label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="add_info_office" required oninput="this.value = this.value.toUpperCase()">
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Sex</label>
		<div class="col-sm-9">
			<select class="form-select" aria-label="sex" id="add_info_sex">
				<option selected>Open this select menu</option>
				<option value='MALE' >Male</option>
				<option value='FEMALE'>Female</option>
			</select>
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Email</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="add_info_email_address">
		</div>
	</div>

	<div class="row mb-3">
		<label class="col-sm-3 col-form-label">Contact Number</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="add_info_contact_number">
		</div>
	</div>

</form>