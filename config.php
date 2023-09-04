<?php
date_default_timezone_set("Asia/Jakarta");
error_reporting(0);

	
	$host 	= 'localhost'; 
	$user 	= 'root';
	$pass 	= ''; 
	$dbname = 'syahrul_toko'; 
	
	try{
		$config = new PDO("mysql:host=$host;dbname=$dbname;", $user,$pass);
		
	}catch(PDOException $e){
		echo 'KONEKSI GAGAL' .$e -> getMessage();
	}
	
	$view = 'fungsi/view/view.php'; 
?>

