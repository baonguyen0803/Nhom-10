<?php
require "config.php";
include "db.php";
$db = new DB;
$product = $db->product();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>cart</title>
	<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
	<h1>Your cart</h1>
<table border="1" cellspacing="0" cellpadding="5">
	<tr>
		<th>#id</th>
		<th>Name</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Action</th>
	</tr>
	<?php
	$id=$_GET['id'];
	$cart = $product->addCart($id);
	//var_dump($_SESSION['cart']);
	var_dump($cart);
	foreach($cart as $key=>$value){
	?>
	<tr>
		<td><?php echo $key ?></td>
		<td><?php echo $products[$key]['name'] ?></td>	
		<td><?php echo $value ?></td>
		<td><?php echo $products[$key]['price'] ?></td>
		<td><a href="del.php?id=<?php echo $key ?>">Delete</a></td>
	</tr>
	<?php } ?>
	</table>
</body>
</html>