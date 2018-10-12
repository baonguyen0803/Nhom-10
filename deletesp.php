<?php 
require '../db.php';
$id=$_GET['id'];
$db = new DB;
$delete = $db->deleteSP($id);
header('location:index.php');