
<?php
function koneksiToko(){
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "syahrul_toko";

  // menciptakan koneksi
  $config = mysqli_connect($servername, $username, $password, $dbname);

  // Cek koneksi
  if (!$config) {
    die("Koneksi gagal: " . mysqli_error());
  }
  return $config;
}
