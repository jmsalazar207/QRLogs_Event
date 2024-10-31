<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	require "essential/connection_ext.php";
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

  <title>DSWD FO III: Monitoring Report</title>
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
				<span class="d-none d-lg-block">Monitoring Report</span>
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
				<a class="nav-link collapsed" href="ListofPax.php">
					<i class="bi bi-grid"></i>
					<span>List of Participants</span>
				</a>
			</li><!-- End Log In Nav -->
			
			<li class="nav-item">
				<a class="nav-link " href="monitoringReport.php">
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
			 
				<!-- Floating Labels Form -->
              <div class="row g-2">
                
				<div class="col-md-6">
                  <div class="col-md-12">
                    <div class="form-floating">
						<select class="form-select" id="typeofreport" aria-label="State">
							<option value="1" selected>Daily</option>
							<option value="2">Overall</option>
						</select>
                      <label for="data_limit">Type of Report</label>
                    </div>
                  </div>
                </div>
				
                <div class="col-md-6">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="specificdate" aria-label="State">
						<option value='' selected>Select status</option>
						<option value='2024-06-24'>24 June 2024</option>
						<option value='2024-06-25'>25 June 2024</option>
						<option value='2024-06-26'>26 June 2024</option>
						<option value='2024-06-27'>27 June 2024</option>
						<option value='2024-06-28'>28 June 2024</option>
                    </select>
                    <label for="searchby">Select Target Date</label>
                  </div>
                </div>
				
				<div class="col-md-12">
                    <button class="btn btn-primary w-100" type="button" id="btnFilter">Filter/Search Data</button>
					<br/><br/><button class="btn btn-secondary w-100 btnPrint" onclick="printDiv()">Print Report</button>
                </div>
              </div><!-- End floating Labels Form -->
			  <br/>
			  <div id="tableDivHandler" style="width:100%;overflow:auto">
					

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

$(document).ready(function(){
	
	$("#typeofreport").change(function(){
		$(".btnPrint").hide();
		$("#tableDivHandler").empty().html("");
	});
	
	$("#specificdate").change(function(){
		$(".btnPrint").hide();
		$("#tableDivHandler").empty().html("");
	});
	
	$(".btnPrint").hide();
	
	$("#btnFilter").click(function(){
		var typeofreport = $("#typeofreport").val();
		var specificdate = $("#specificdate").val();
		
		if(typeofreport == 1){
			if(specificdate != ""){
				generateData(specificdate);
				$(".btnPrint").show();
			}else{
				alert("Please select the specific date for Daily: Type of Report.");
			}
		}else{
			generateOverall();
			$(".btnPrint").show();
		}
		
		
		
	});
});

function generateOverall(){
	var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading...</center>';
	$("#tableDivHandler").empty().html(imgloader);

	$.ajax({
		url: "monitoringReportDataOverall.php?",
		success:function(data){
			$("#tableDivHandler").empty().html(data);
		}
	});
}

function generateData(specificdate){
	var imgloader = '<center><img src="library/assets/img/loader.gif" width="100px" alt=""><br/>Loading...</center>';
	$("#tableDivHandler").empty().html(imgloader);

	$.ajax({
		url: "monitoringReportData.php?specificdate="+specificdate,
		success:function(data){
			$("#tableDivHandler").empty().html(data);
		}
	});
}

function printDiv() { 
	var divContents = document.getElementById("tableDivHandler").innerHTML; 
	var a = window.open('', ''); 
	a.document.write('<html>'); 
	a.document.write('<body>'); 
	a.document.write('<center>'); 
	a.document.write('<h1>2024 National Work and Financial Planning Workshop</h1>'); 
	a.document.write('<b>24-28 June 2024</b><br/>'); 
	a.document.write('<b>Widus Hotel, Clark Freeport Zone</b><br/>'); 
	a.document.write('</center>'); 
	a.document.write(divContents); 
	a.document.write('</body></html>'); 
	a.document.close(); 
	a.print(); 
} 

</script>

</html>