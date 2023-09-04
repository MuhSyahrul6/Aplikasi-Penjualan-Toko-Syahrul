<?php
	@ob_start();
	session_start();
	if(isset($_POST['proses'])){
		require 'config.php';
			
		$user = strip_tags($_POST['user']);
		$pass = strip_tags($_POST['pass']);

		$sql = 'select member.*, login.user, login.pass
				from member inner join login on member.id_member = login.id_member
				where user =? and pass = md5(?)';
		$row = $config->prepare($sql);
		$row -> execute(array($user,$pass));
		$jum = $row -> rowCount();
		if($jum > 0){
			$hasil = $row -> fetch();
			$_SESSION['syahrul'] = $hasil;
			echo '<script>alert("Login Sukses");window.location="index.php"</script>';
		}else{
			echo '<script>alert("Login Gagal");history.go(-1);</script>';
		}
	}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login Akun</title>
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="rulzcss/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="rulzcss/css/style.css" rel="stylesheet">
</head>

<body class="loginp">
    <div class="container">
        <form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Login Akun</p>
            <div class="input-group">
                <input type="text" placeholder="Username" name="user" required>
            </div>
            <div class="input-group">
                <input type="password" placeholder="Password" name="pass" required>
            </div>
            <div class="input-group">
                <button name="proses" class="btn">Login</button>
            </div>
        </form>
    <!-- Bootstrap core JavaScript-->
    <script src="rulzcss/vendor/jquery/jquery.min.js"></script>
    <script src="rulzcss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="rulzcss/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="rulzcss/js/sb-admin-2.min.js"></script>
</body>

</html>