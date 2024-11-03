<?php
session_start();
set_time_limit(0);
require "essential/connection.php";
require "essential/pass_key.php";
require('library/fpdf/fpdf.php');

class PDF extends FPDF
{
    // Page header
    function Header()
    {
        // Arial bold 15
        $this->SetFont('Arial','B',15);
        // Move to the right
        $this->Cell(80);
        // Title
        //$this->Cell(30,10,'ARTA ID WITH QR CODE',1,0,'C');
        // Line break
        $this->Ln(20);
    }

    // Page footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Page number
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}

 $sql = "
		SELECT *
		FROM tbl_participants
		WHERE control_id = '".$_GET['control_id']."'
        ";
$selectStmt_ext = $conn->prepare($sql);

if ($selectStmt_ext->execute()) {
    $result = $selectStmt_ext->fetch();
    if ($result !== false) {

        $full_name = $result[1];
        $position = $result[2];
        $office = $result[3];
        $photo = $result[7];
        $event_name = $result[11];
        $control_id = base64url_encode(encrypt($_GET['control_id'], $key));
        $control_id = "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=".$control_id;

    } else {
        echo "No record found.";
    }
} else {
    echo "Failed to execute the statement.";
}

// Set font size
$name_length = strlen($full_name);

$font_size = 25;
$font_size_FRONT = 20;
$font_size_title = 13;
$font_size_x = 10;

$font_size2 = 12;
$font_size_x2 = 9;


if($name_length >= 35){
	$font_size = 11;
	$font_size_x = 10;
    $font_size_FRONT = 13;

	$font_size2 = 10;
	$font_size_x2 = 8;
}else if($name_length >= 33){
	$font_size = 13;
	$font_size_x = 10;
    $font_size_FRONT = 15;

	$font_size2 = 10;
	$font_size_x2 = 8;
}else if($name_length >= 30){
	$font_size = 14;
	$font_size_x = 11;
    $font_size_FRONT = 16;

	$font_size2 = 10;
	$font_size_x2 = 9;
}else if($name_length >= 27){
	$font_size = 15;
	$font_size_x = 10;
    $font_size_FRONT = 17;

	$font_size2 = 10;
	$font_size_x2 = 9;
}else if($name_length >= 24){
	$font_size = 16;
	$font_size_x = 10;
    $font_size_FRONT = 18;

	$font_size2 = 10;
	$font_size_x2 = 9;
}else if($name_length >= 21){
	$font_size = 17;
	$font_size_x = 10;
    $font_size_FRONT = 19;

	$font_size2 = 10;
	$font_size_x2 = 9;
}else if($name_length >= 18){
	$font_size = 18;
	$font_size_x = 10;
    $font_size_FRONT = 20;

	$font_size2 = 10;
	$font_size_x2 = 9;
}



// Instanciation of inherited class
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->addPage('L');

$pdf->SetTextColor(0, 0, 0);
$pdf->Image('library/assets/img/front.png', 10, 10,100);
// $pdf->Image('pax_images/'.$photo, 65, 18,35,0,'JPG');
$pdf->SetY(30);
$pdf->SetX(10);
$pdf->SetFont('Arial', 'B', $font_size_title);
$pdf->SetTextColor(0, 16, 118); // Set text color to blue

// Display event title with specific font size and color
$pdf->MultiCell(100, 4, strtoupper($event_name), 0, 'C');

// Reset text color back to black for any following content
$pdf->SetTextColor(0, 0, 0);
// After setting Y position for the front side text
$pdf->SetY(48);
$pdf->SetFont('Arial', 'B', $font_size_FRONT);
$pdf->MultiCell(100, 7, $full_name, 0, 'C'); // Use MultiCell for full name
$pdf->Ln(1); // Adjust line spacing if necessary
$pdf->SetFont('Arial', 'B', $font_size_x);
$pdf->MultiCell(100, 5, $position, 0, 'C'); // Position with minimal spacing
$pdf->SetY(76); // Minimal spacing for office
$pdf->MultiCell(100, 8, $office, 0, 'C'); // Office with minimal spacing


$pdf->SetTextColor(0, 0, 0);
$pdf->Image('library/assets/img/back.png', 111, 10,100);
$pdf->Image($control_id, 135, 15,50,0,'PNG');
$pdf->SetY(70);
$pdf->SetX(135);
$pdf->SetFont('Arial', 'B', $font_size2);
$pdf->Cell(50, 0, $full_name, 0, 0, 'C');
$pdf->Ln(5);
$pdf->SetFont('Arial', 'B', $font_size_x2);
$pdf->SetX(110);
$pdf->Cell(100, 0, $position, 0, 2, 'C');
$pdf->Ln(5);
$pdf->SetFont('Arial', 'B', $font_size_x2);
$pdf->SetX(110);
$pdf->Cell(100, 0, $office, 0, 2, 'C');

$pdf->Output();
