<?php 
require "../db.php";
require "../config.php";
$id=$_GET['id'];
$db = new DB;
$delete = $db->deletesp($id);
header('location:index.php');