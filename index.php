<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	require "essential/connection_ext.php";
	require "essential/pass_key.php";
	require "essential/plug-in-css.php";

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>DSWD FO III: Attendance Log Module</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


</head>

<body class="toggle-sidebar">
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
				<a class="nav-link " href="index.php">
					<i class="bi bi-clock"></i>
					<span>Attendance</span>
				</a>
			</li><!-- End Dashboard Nav -->
			
			<li class="nav-item">
				<a class="nav-link collapsed" href="ListofPax.php">
					<i class="bi bi-grid"></i>
					<span>List of Participants</span>
				</a>
			</li><!-- End Log In Nav -->
			
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

			<div class="col-lg-4">
				<div class="card">
					<div class="card-body">
						<br/>
						<div style="width:100%; overflow:hidden">
							<table width=100%>
								<tr>
									<td style="text-align:right">
										<iframe src="https://free.timeanddate.com/clock/i9cdz6cq/n2280/szw160/szh160/hocbbb/hbw6/cf100/hgr0/fas16/fdi64/mqc000/mqs4/mql20/mqw2/mqd94/mhc000/mhs3/mhl20/mhw2/mhd94/mmc000/mml10/mmw1/mmd94/hwm1/hmr7/hsc000/hss1/hsl90" frameborder="0" width="160" height="160"></iframe>
									</td>
									<td style="text-align:left">
										<iframe src="https://free.timeanddate.com/clock/i9cdz6cq/n2280/fs18/tt0/tw1/td2/th2/ta1/tb4" frameborder="0" width="212" height="44"></iframe>
									</td>
								</tr>
							</table>
						</div>
						<h5 class="card-title" style="font-size:14px">Scan you QR Code here, wait for the tone and check if your log was reflected on the table logs.</h5>

							<section id="capturedLog">
								<video id="interactive" class="viewport" width="100%">
							</section>

						<div class="qr-detected-container" id="divDisplayLastLog" style="padding-top: 5px">
							<input type="hidden" id="detected-qr-code" name="qr_code">
							
							<div class="alert alert-success alert-dismissible fade show lastlogdiv" role="alert" >
								<i class="bi bi-person me-1"></i>
									<b>Name: </b><span id="spName"></span></br>
								<i class="bi bi-pin-map me-1"></i>
									<b>Position: </b><span id="spPosition">..</span></br>
								<i class="bi bi-pin-map me-1"></i>
									<b>Office: </b><span id="spOffice">..</span></br>
								<i class="bi bi-clock me-1"></i>
									<b>Time Log: </b><span id="spLogDateTime">..</span></br>
								<i class="bi bi-pin-map me-1"></i>
									<b>Captured Location: </b><span id="spLocation">..</span></br></br>
								<center><img src="" id="spImgLocation" /></center>
							</div>
							
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-8">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Last Partcipant Who Log</h5>
						<table style="width: 100%;text-align: center;">
							<tr>
								<td><img id="imgLastLog" src="upload/noimg.jpg" width="200"/></td>
								<td>
									<h1 style='margin: 0;'><b id="spName2">No Record</b></h1>
									<span id="spPosition2">..</span><br>
									<span id="spOffice2">..</span><br>
									<span id="spLogDateTime2">..</span>
								</td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="card">
					<div class="card-body">
					
					<h5 class="card-title">Today's Time Logs</h5>

					<!-- Table with stripped rows -->
					<div style="width:100%; height:600px; overflow:auto" id="divTopLogs">
							
					</div>
					<!-- End Table with stripped rows -->

					</div>
				</div>
			</div>
		</div>
	</section>
	</main><!-- End #main -->

</body>

<?php
	require "essential/plug-in-js.php";
	
?>

<script>

	let scanner;
	var latitude = 0;
	var longitude = 0;

	$(document).ready(function(){
		
		if ("geolocation" in navigator){ //check geolocation available 
			//try to get user current location using getCurrentPosition() method
			navigator.geolocation.getCurrentPosition(function(position){ 
				
				latitude = position.coords.latitude;
				longitude = position.coords.longitude;

				if(latitude == 0){
					console.log("Browser doesn't support geolocation!");
					alert("Can get your location. Please check the browser settings.");
					location.reload();
				}

			});
		}else{
			console.log("Browser doesn't support geolocation!");
			alert("Can get your location. Please check the browser settings.");
			location.reload();
		}

		loadTopLogs();

	});

	function startScanner() {
		scanner = new Instascan.Scanner({ video: document.getElementById('interactive') });
		scanner.addListener('scan', function (content) {
			$("#detected-qr-code").val(content);
			console.log(content);
			//scanner.stop();
			doCapture();
			document.querySelector(".qr-detected-container").style.display = '';
			//document.querySelector(".scanner-con").style.display = 'none';
			$("#btnAutoSubmit").hide();
			//$("#btnAutoSubmit").click();
		});

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

	document.addEventListener('DOMContentLoaded', startScanner);

	function doCapture(){
		if(latitude == 0){
			console.log("Browser doesn't support geolocation!");
			alert("Can get your location. Please check the browser settings.");
			location.reload();
		}else{
			$('#notificationSound').get(0).play();
			window.scrollTo(0, 0);
			
			html2canvas(document.getElementById("capturedLog")).then(function (canvas) {
		 
				// Create an AJAX object
				var ajax = new XMLHttpRequest();
		 
				// Setting method, server file name, and asynchronous
				ajax.open("POST", "actions/add-logs.php", true);

				// Setting headers for POST method
				ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

				// Sending image data to server
				ajax.send("la="+latitude+"&lo="+longitude+"&qr_code="+$("#detected-qr-code").val()+"&capturedimage=" + canvas.toDataURL("image/jpeg", 0.5));

				// Receiving response from server
				// This function will be called multiple times
				ajax.onreadystatechange = function () {
		 
					// Check when the requested is completed
					if (this.readyState == 4 && this.status == 200) {

						var data = JSON.parse(this.responseText);
						$("#spName").text(data[1]);
						$("#spPosition").text(data[2]);
						$("#spOffice").text(data[3]);
						$("#spLogDateTime").text(formatDateTime(data[4]).toUpperCase());
						$("#spLocation").text(data[7]);
						
						$("#spName2").text(data[1]);
						$("#spPosition2").text(data[2]);
						$("#spOffice2").text(data[3]);
						$("#spLogDateTime2").text(formatDateTime(data[4]).toUpperCase());
						var imgSrcLastLog = "upload/"+data[8];
						$("#imgLastLog").attr("src",imgSrcLastLog);
						
						speakTime(data[1], formatTime(data[4]));
						loadTopLogs();

						var lo = data[5];
						var la = data[6];
						var imgDataSRC = "https://maps.googleapis.com/maps/api/staticmap?center="+lo+","+la+"&markers=color:red%7Clabel:Here%7C"+lo+","+la+"&zoom=16&size=400x120&key=AIzaSyAy-PXsjr7WrzK4JC3yCz8uBoSergGNpxE";
						$("#spImgLocation").attr("src",imgDataSRC);

					}
				};
			});
		}
	}

	function loadTopLogs(){
		var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading...</center>';
		$("#divTopLogs").empty().html(imgloader);

		$.ajax({
			url: "toplogs.php",
			success:function(data){
				$("#divTopLogs").empty().html(data);
			}
		});
	}

function formatDateTime(inputDateTime) {
    // Parse input date and time string
    const dateTime = new Date(inputDateTime);
    
    // Define month names array
    const monthNames = [
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    ];
    
    // Get day, month, year, hours, and minutes
    const day = dateTime.getDate();
    const month = monthNames[dateTime.getMonth()];
    const year = dateTime.getFullYear();
    let hours = dateTime.getHours();
    const minutes = dateTime.getMinutes();
    
    // Convert hours to 12-hour format and determine AM/PM
    const ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // Handle midnight (0 hours)
    
    // Add leading zero to minutes if necessary
    const formattedMinutes = minutes < 10 ? '0' + minutes : minutes;

    // Construct formatted date and time string
    const formattedDateTime = `${day} ${month} ${year}, ${hours}:${formattedMinutes} ${ampm}`;

    return formattedDateTime;
}

function formatTime(inputDateTime) {
    // Parse input date and time string
    const dateTime = new Date(inputDateTime);
    
    let hours = dateTime.getHours();
    const minutes = dateTime.getMinutes();
    
    // Convert hours to 12-hour format and determine AM/PM
    const ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // Handle midnight (0 hours)
    
    // Add leading zero to minutes if necessary
    const formattedMinutes = minutes < 10 ? '0' + minutes : minutes;

    // Construct formatted date and time string
    const formattedTime = `${hours}:${formattedMinutes} ${ampm}`;

    return formattedTime;
}

// Check if Speech Synthesis is supported by the browser
if ('speechSynthesis' in window) {

    // Function to read the time aloud
    function speakTime(empName, gettime) {
		var speakObj = new SpeechSynthesisUtterance();
		var AMorPM = "";

		if(gettime.substring(gettime.length - 2) == 'AM'){
			AMorPM = "Good morning ";
		}else{
			AMorPM = "Good afternoon ";
		}

		speakObj.text = AMorPM + empName + ", you are log at "+ gettime;
		speakObj.lang = "en-GB";
		window.speechSynthesis.speak(speakObj);
    }

} else {
    // Speech Synthesis is not supported
    console.error("Speech Synthesis is not supported by this browser.");
}

</script>

</html>