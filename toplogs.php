<?php
	session_start();
	set_time_limit(0);
	require "essential/connection.php";
	//require "essential/connection_ext.php";
	require "essential/pass_key.php";
	require "essential/plug-in-css.php";
	
	date_default_timezone_set('Asia/Taipei');
	date_default_timezone_get(); 
?>

<table class="table table-striped table-hover tblLogs">
    <thead>
        <tr>
        <th scope="col">Photo Log</th>
        <th scope="col">Name / Position / Office</th>
        <th scope="col">Time</th>
        </tr>
    </thead>
    <tbody>
        
    <?php 
		
		
        $sql = "
            SELECT tl.*
            FROM tbl_timelogs tl
            INNER JOIN (
                SELECT log_id, log_empno, MAX(log_time) AS latest_log_time
                FROM tbl_timelogs 
                WHERE date_format(log_time, '%m-%d-%y') = '".date('m-d-y')."'
                GROUP BY log_empno
            ) latest_logs
            ON tl.log_empno = latest_logs.log_empno AND tl.log_time = latest_logs.latest_log_time
            WHERE date_format(log_time, '%m-%d-%y') = '".date('m-d-y')."'
            ORDER BY latest_log_time DESC
        ";
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        $result = $stmt->fetchAll();

        foreach ($result as $row) {
            
            $sql_ext = "

                SELECT `control_id`, `full_name`, `position`, `office`
                FROM tbl_participants 
                WHERE control_id = '".$row["log_empno"]."'

            ";
            $selectStmt_ext = $conn->prepare($sql_ext);

            if ($selectStmt_ext->execute()) {
                $result = $selectStmt_ext->fetch();
                if ($result !== false) {

                    $employee_name = $result["full_name"];
                    $employee_position = $result["position"];
                    $employee_office = $result["office"];

                    $log_photo = "upload/".$row["log_photo"];
                    $log_time = date('h:i A', strtotime($row["log_time"]));

                    $log_address = $row["log_address"];

                } else {
                    echo "No record found.";
                }
            } else {
                echo "Failed to execute the statement.";
            }	
        ?>

        <tr>
            <td><img src="<?= $log_photo ?>" width="100"/></td>
            <td style="white-space: nowrap !important;">
                <?= $employee_name ?><br>
                <?= $employee_position ?><br>
                <?= $employee_office ?>
            </td>
            <td><?= $log_time ?></td>
        </tr>

        <?php
        }
        ?>

    </tbody>
    </table>