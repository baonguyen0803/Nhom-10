<?php  
include "../db.php";
?>

<?php
$username = "root";
$server_password = "";
$server_host = "localhost";
$database = 'users';
 
$conn = mysql($username,$server_password,$server_host,$database ) or die("không thể kết nối tới database");
mysqli_query($conn,"SET NAMES 'UTF8'");