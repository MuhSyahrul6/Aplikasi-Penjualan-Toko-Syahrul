<?php 
	@ob_start();
	session_start();

	if(!empty($_SESSION['syahrul'])){
		require 'config.php';
		include $view;
		$lihat = new view($config);
		$toko = $lihat -> toko();
		//  syahrul
			include 'syahrul/template/header.php';
			include 'syahrul/template/sidebar.php';
				if(!empty($_GET['page'])){
					include 'syahrul/module/'.$_GET['page'].'/index.php';
				}else{
					include 'syahrul/template/home.php';
				}
			include 'syahrul/template/footer.php';
		// end syahrul
	}else{
		echo '<script>window.location="login.php";</script>';
	}
?>

