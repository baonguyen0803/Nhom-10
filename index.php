<?php
require "config.php";
require "db.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Mobile Shop</title>
	<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
<?php  
	$db = new DB;
	$page = isset($_GET['page'])?$_GET['page']:1;
    $per_page= 5;
	$getProducts = $db->getAllProducts($page,$per_page);
    foreach ($getProducts as $value) {
	?>
		<h1><a href="chitiet.php?id=<?php echo $value['id'] ?>"><?php echo $value['name'] ?></a></h1>
		<img src = 'image/<?php echo $value['image'] ?>'><br>
		<b>Giá: <?php echo $value['price'] ?>VNĐ</b>
		<p>Thong so thong ke<a href='chitiet.php?id=<?php echo $value['id'] ?>'>[...]</a></p>

	<?php
	}
	?>

				<div class="pagination">
                      <?php
                    $db = new DB;
                    $base_url = $_SERVER['PHP_SELF'];
                    $total_rows = $db->countPro();
                    
                    if (isset($_GET['page'])) {

                    	$page = $_GET['page'];
                    }
                    else
                    {
                    	$page = 1;
                    }
                    $offset = 2;
                    
                    echo $db->first_links($base_url,$total_rows,$page,$per_page);
                    
                    echo $db->pagination($base_url,$total_rows,$page,$per_page,$offset);
                    echo $db->last_links($base_url,$total_rows,$page,$per_page);
                    
                    ?>
       			</div>
</body>
</html>
