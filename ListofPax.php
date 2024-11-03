<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	//require "essential/connection_ext.php";
	require "essential/pass_key.php";
	require "essential/plug-in-css.php";
	
	if(isset($_SESSION['empno'])){
		echo "";
	}else{
		echo("<script>location.href = 'login.php';</script>");
	}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>DSWD FO III: List of Participants</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

</head>

<body>
<audio id="notificationSound" src="library/sound/captured.wav" type="audio/wav"></audio>
	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">
		<div class="d-flex align-items-center justify-content-between">
			<a href="index.php" class="logo d-flex align-items-center">
				<img src="library/assets/img/logo.png" alt="">
				<span class="d-none d-lg-block">Attendance Log</span>
			</a>
			<i class="bi bi-list toggle-sidebar-btn"></i>
		</div><!-- End Logo -->

	</header><!-- End Header -->
	
	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">
		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item">
				<a class="nav-link collapsed" href="index.php">
					<i class="bi bi-clock"></i>
					<span>Attendance</span>
				</a>
			</li><!-- End Dashboard Nav -->
			
			<li class="nav-item">
				<a class="nav-link " data-bs-target="#tables-nav" href="ListofPax.php">
				<i class="bi bi-layout-text-window-reverse"></i><span>List of Participants</span>
				</a>
				<ul id="tables-nav" class="nav-content  " data-bs-parent="#sidebar-nav">
					<li>
						<a href="#" id='addNewPax'>
							<i class="bi bi-circle"></i><span>Add Participant</span>
						</a>
					</li>
				</ul>
			</li>
			
			
			<li class="nav-item">
				<a class="nav-link collapsed" href="monitoringReport.php">
					<i class="bi bi-grid"></i>
					<span>Monitoring Report</span>
				</a>
			</li><!-- End Log In Nav -->

		</ul>
	</aside><!-- End Sidebar-->

	<main id="main" class="main">
		
		
		<section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">List of Participants</h5>
			  
			  <div class="alert alert-primary border-light alert-dismissible fade show" role="alert" id="datainformationdiv">
					<h4 class="alert-heading">User's Guide</h4>
						<hr>
						<p class="mb-0">There are <code>three (3) major steps</code> to accomplish prior to the printing of the ID/Name Tag of Participant.<br/> 
							<b>1 </b><i class="bi bi-eye"></i> View and Update the information of the participant, especially the <b>nick name</b>, max of 10 letters.<br/>
							<b>2 </b><i class="bi bi-person-bounding-box"></i> Capture the best photo of the participant.<br/>
							<b>3 </b><i class="bi bi-person-badge"></i> Generate and print the ID/Name Tag of the participant.<br/>	
						</p>
				</div>
              
              <div id="listofpaxtbl">
				
              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
	
		  
	<div class="modal fade" id="dialogViewRecords" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Participant's Information</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" id="divdialogViewRecords">
					
				</div>
				<div class="modal-footer">
					<div class="loaderdata"></div>
					<button type="button" class="btn btn-primary" id="btnUpdate" data-bs-dismiss="modal">Update</button>
				</div>
			</div>
		</div>
	</div>
	<!-- here -->
	<div class="modal fade" id="dialogaddViewRecords" tabindex="-1"> 
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">[ADD] Participant's Information</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" id="divadddialogViewRecords">
					
				</div>
				<div class="modal-footer">
					<div class="loaderdata"></div>
					<button type="button" class="btn btn-primary" id="btnSave" data-bs-dismiss="modal">Save</button>
				</div>
			</div>
		</div>
	</div>
		
		  
	<div class="modal fade" id="InfoMessage" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Information</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" id="InfoMessageBody">
					
				</div>
				<div class="modal-footer">
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="capturedPhoto" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Participant's Photo Capturing</h5>
					<input type="hidden" class="form-control" id="pax_control_id">
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				
				<div class="modal-body" id="divPhotoCapturing">
					<center>
					<section id="capturedLog" style="width: 350px;height: 350px">
						<center>
							<video id="interactive" class="viewport" style="width: 350px;height: 350px;object-fit: cover;">
						</center>
					</section>
					</center>
					<br/>
					<center><h2 id="pax_full_name"></h2></center>
					
					<center><button type="button" class="btn btn-primary" id="btnCapturedPhoto">Capture Photo</button></center>
					
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="fullscreenModalGenerationID" tabindex="-1">
		<div class="modal-dialog modal-fullscreen">
		  <div class="modal-content">
			<div class="modal-header">
			  <h5 class="modal-title">Generation of ID for <b id="gen_fname"></b></h5>
			  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body" id="embedID">
				
			</div>
			<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			</div>
		  </div>
		</div>
	  </div><!-- End Full Screen Modal-->
		
	</main><!-- End #main -->

</body>

<?php
	require "essential/plug-in-js.php";
?>

<script>

	let scanner;

	$(document).ready(function(){
		
		var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading data...</center>';
		
		generateDataTable();
		
		$("#btnUpdate").click(function(){
		
			var control_id		=	$("#info_control_id").val();
			var full_name		=	$("#info_full_name").val();
			var position		=	$("#info_position").val();
			var office			=	$("#info_office").val();
			var sex				=	$("#info_sex").val();
			var email_address	=	$("#info_email_address").val();
			var contact_number	=	$("#info_contact_number").val();
			var nickname		=	$("#info_nickname").val();
			
			$(".loaderdata").empty().html(imgloader);
			
			$.ajax({
				url: "updateInfo.php?control_id="+control_id+"&full_name="+full_name+"&position="+position+"&office="+office+"&sex="+sex+"&email_address="+email_address+"&contact_number="+contact_number+"&nickname="+nickname,
				success:function(data){
					$("#dialogViewRecords").modal('hide');
					$("#infoName").text(full_name);
					$(".loaderdata").empty().html();
					
					if(data == 1){
						$("#InfoMessage").modal('toggle');
						$("#InfoMessageBody").empty().html("<b>"+full_name+"</b> was successfully updated.");
						generateDataTable();
						$("#divdialogViewRecords").empty().html("");
						full_name		=	"";
						position		=	"";
						office			=	"";
						sex				=	"";
						email_address	=	"";
						contact_number	=	"";
						nickname		=	"";
					}else{
						alert("There's a problem detected. Please try again.");
					}
					
					
				}
			});
			
		});
		
		$("#addNewPax").click(function(){
			$("#dialogaddViewRecords").modal('toggle');
			
			addRecordsForm();
		});
	
		$("#btnSave").click(function(){
			
			var full_name		=	$("#add_info_full_name").val();
			var position		=	$("#add_info_position").val();
			var office			=	$("#add_info_office").val();
			var sex				=	$("#add_info_sex").val();
			var email_address	=	$("#add_info_email_address").val();
			var contact_number	=	$("#add_info_contact_number").val();
			var nickname		=	$("#add_info_nickname").val();
			if(full_name ==''){
				alert("Mulala ka ne tin neng * eme pa dinan laman");
			}else if(position==''){
				alert("Mulala ka ne tin neng * eme pa dinan laman");
			}else if(office==''){
				alert("Mulala ka ne tin neng * eme pa dinan laman");
			}else{
				$(".loaderdata").empty().html(imgloader);
			
				$.ajax({
					url: "addInfo.php?full_name="+full_name+"&position="+position+"&office="+office+"&sex="+sex+"&email_address="+email_address+"&contact_number="+contact_number+"&nickname="+nickname,
					success:function(data){
						$("#adddialogViewRecords").modal('hide');
						$("#infoName").text(full_name);
						$(".loaderdata").empty().html();
						
						if(data == 1){
							$("#InfoMessage").modal('toggle');
							$("#InfoMessageBody").empty().html("<b>"+full_name+"</b> was successfully added.");
							generateDataTable();
							$("#divadddialogViewRecords").empty().html("");
							full_name		=	"";
							position		=	"";
							office			=	"";
							sex				=	"";
							email_address	=	"";
							contact_number	=	"";
							nickname		=	"";
						}else{
							alert("There's a problem detected. Please try again.");
						}
					}
				});
			}
		});
		
		$("#btnCapturedPhoto").click(function(){
			var cap_full_name = $("#pax_full_name").text();
			doCapture(cap_full_name);
			scanner.stop();
		});
		
	});
	
	function startScanner() {
		scanner = new Instascan.Scanner({ video: document.getElementById('interactive') });

		Instascan.Camera.getCameras()
			.then(function (cameras) {
				if (cameras.length > 0) {
					scanner.start(cameras[0]);
				} else {
					console.error('No cameras found.');
					alert('No cameras found.');
				}
			})
			.catch(function (err) {
				console.error('Camera access error:', err);
				alert('Camera access error: ' + err);
			});
	}
	
	function doCapture(cap_full_name){

			html2canvas(document.getElementById("capturedLog")).then(function (canvas) {
		 
				// Create an AJAX object
				var ajax = new XMLHttpRequest();
		 
				// Setting method, server file name, and asynchronous
				ajax.open("POST", "actions/add-photo.php", true);

				// Setting headers for POST method
				ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

				// Sending image data to server
				ajax.send("control_id="+$("#pax_control_id").val()+"&capturedimage=" + canvas.toDataURL("image/jpeg", 0.5));

				// Receiving response from server
				// This function will be called multiple times
				ajax.onreadystatechange = function () {
		 
					// Check when the requested is completed
					if (this.readyState == 4 && this.status == 200) {
						$("#InfoMessage").modal('toggle');
						$("#InfoMessageBody").empty().html("<b>"+cap_full_name+"</b> photo was captured and uploaded.");
						generateDataTable();
						$("#capturedPhoto").modal('hide');
					}
				};
			});
	}
	
	function generateDataTable(){
		var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading data...</center>';
		$("#listofpaxtbl").empty().html(imgloader);

		$.ajax({
			url: "datatable_pax.php?",
			success:function(data){
				$("#listofpaxtbl").empty().html(data);
				
				$(".btnView").click(function(){
					$("#dialogViewRecords").modal('toggle');
					var controlId = $(this).attr('attr');
					viewRecordsForm(controlId);
				});
				
				$(".btnGenerateID").click(function(){
					$("#fullscreenModalGenerationID").modal('toggle');
					var controlId = $(this).attr('attr');
					var fname = $(this).attr('fname');
					
					var embData = "<embed type='text/html' src='generateID.php?control_id="+controlId+"' width='100%' height='100%'>";
					
					$("#gen_fname").text(fname);
					$("#embedID").empty().html(embData);
					
				});
				
				$(".btnCamera").click(function(){
					
					var pax_control_id = $(this).attr('attr');
					var pax_full_name = $(this).attr('fname');
					
					$("#pax_control_id").val(pax_control_id);
					$("#pax_full_name").text(pax_full_name);
					
					$("#capturedPhoto").modal('toggle');
					startScanner();
				});
				
				$(".btn-close").click(function(){
					$("#dialogViewRecords").modal('hide');
					var video = document.querySelector("#videoElement");

					if (navigator.mediaDevices.getUserMedia) {
					  navigator.mediaDevices.getUserMedia({ video: true })
						.then(function (stream) {
						  video.srcObject = stream;
						})
						.catch(function (err0r) {
						  console.log("Something went wrong!");
						});
					}
				});
			}
		});
	}
	
	function viewRecordsForm(controlId){
		var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading...</center>';
		$("#divdialogViewRecords").empty().html(imgloader);

		$.ajax({
			url: "viewRecordsForm.php?controlId="+controlId,
			success:function(data){
				$("#divdialogViewRecords").empty().html(data);
			}
		});
	}
	
	function addRecordsForm(){
		var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading...</center>';
		$("#divadddialogViewRecords").empty().html(imgloader);

		$.ajax({
			url: "addRecordsForm.php?",
			success:function(data){
				$("#divadddialogViewRecords").empty().html(data);
			}
		});
	}

</script>

</html>