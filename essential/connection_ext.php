<?php

$ext_hrmis_servername = "172.31.32.57";
$ext_hrmis_username = "ERM";
$ext_hrmis_password = "P@ssw0rd1.";
$ext_hrmis_dbname = "registration";

try {
    $conn_ext = new PDO("mysql:host=$ext_hrmis_servername;dbname=$ext_hrmis_dbname", $ext_hrmis_username, $ext_hrmis_password);
    $conn_ext->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>