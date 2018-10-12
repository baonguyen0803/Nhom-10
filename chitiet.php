<?php  
	include "db.php";
	include "config.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Chi tiet</title>
	<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
<?php
	$db = new DB;
	$product = $db->product1($id);
	foreach ($product as  $value) {
	?>
		<div class='sanpham'> 
		<img src='public/image/<?php echo $product[0]['image'] ?>'>
		<h1><?php echo $product[0]['name'] ?></h1>
		<b>Giá: </b> <span class='gia'><?php echo $product[0]['price']; ?></span><br>
		<p>	<?php echo $product[0]['description'] ?></p>
		<a class="addcart" href="addcart.php?id=<?php echo $id ?>">Add To Cart</a>
	</div> 
<?php } ?>
</body>
</html>