<?php 
require '../config.php';
require_once '../db.php';
$db = new DB;
$name = $_POST['name'];
$manu_id = $_POST['manu_id'];
$type_id = $_POST['type_id'];
$description = $_POST['description'];
$price = $_POST['price'];
$image = $_FILES["fileUpload"]["name"];
$target_dir = "../image/";
$target_file = $target_dir . basename($_FILES["fileUpload"]["name"]);
if ($db->addProduct($name, $manu_id, $type_id,$description, $price, $image)) {
    move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file);
    header('location:index.php');

}else
{

 echo "them khong thanh cong";
}
