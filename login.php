<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	require "essential/connection_ext.php";
	require "essential/pass_key.php";
	require "essential/plug-in-css.php";
	
	if(isset($_SESSION['empno'])){
		echo("<script>location.href = 'index.php';</script>");
	}
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

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.php" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">National WFP</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">Enter your registered credentials</p>
                  </div>
					
					<?php
					

					if(isset($_POST['submit'])){
						
								$empno = '03-'.$_POST['employee_number'];
								$sql_ext = "
									SELECT 
										empno, account_status
									FROM userprofile 
										WHERE empno = '".$empno."' and password=md5('".$_POST['employee_password']."')
								";
								$selectStmt_ext = $conn_ext->prepare($sql_ext);

								if ($selectStmt_ext->execute()) {
									$result = $selectStmt_ext->fetch();
									if ($result !== false) {

										$account_status = $result["account_status"];
										if($account_status == 1){
											echo '<div class="alert alert-danger bg-danger text-light border-0 alert-dismissible fade show" role="alert">';
												echo "Your account is waiting for Personnel's approval.";
											echo '</div>';
										}else if($account_status == 2){
											
											$_SESSION['empno'] = $empno;
											
											echo("<script>location.href = 'index.php';</script>");
											
										}else if($account_status == 4){
											echo '<div class="alert alert-danger bg-danger text-light border-0 alert-dismissible fade show" role="alert">';
												echo "Your account is locked.";
											echo '</div>';
										}else{
											echo '<div class="alert alert-danger bg-danger text-light border-0 alert-dismissible fade show" role="alert">';
												echo "Please contact the Personnel Section relative to your account.";
											echo '</div>';
										}

									} else {
										echo "No record found.<br/>";
									}
								} else {
									echo "Failed to execute the statement.";
								}
								//$_POST['submit'] = null;
							}
							
						?>
					
					

                  <form action='#' method='post' autocomplete="off" class="row g-3 needs-validation" novalidate>

                    <div class="col-12">
					
                      <label for="employee_number" class="form-label">Employee Number</label>
                      <div class="input-group has-validation">
					  <span class="input-group-text" id="inputGroupPrepend">03-</span>
                        <input type="text" name="employee_number" class="form-control" id="employee_number" required>
                        <div class="invalid-feedback">Please enter your employee number.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="employee_password" class="form-label">Password</label>
                      <input type="password" name="employee_password" class="form-control" id="employee_password" required>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" name="submit">Login</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Don't have account? <a href="http://172.31.32.57/registration/">Create an account</a></p>
                    </div>
                  </form>
				  
				  

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
               
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/js/jquery-3.6.0.min.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
<script>
	
	$(document).ready(function(){
		$("#employee_number").val("");
		$("#employee_password").val("");
	});

	</script>
</html>