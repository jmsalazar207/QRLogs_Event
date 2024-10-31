<?php

$ext_hrmis_servername = "localhost";
$ext_hrmis_username = "root";
$ext_hrmis_password = "";
$ext_hrmis_dbname = "db_logs_registration";

try {
    $conn_ext = new PDO("mysql:host=$ext_hrmis_servername;dbname=$ext_hrmis_dbname", $ext_hrmis_username, $ext_hrmis_password);
    $conn_ext->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>