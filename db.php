<?php
class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		//self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[]=$row;
		}
		return $arr;
	}
	//Viet ham lay ra tên và giá sản phẩm của hãng “Apple”
	/*public function product(){
		//Viet cau SQL
		$sql = "SELECT * FROM `products` ORDER BY id DESC LIMIT 0,4";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}*/


	
	public function products(){
		//Viet cau SQL
		$sql = "SELECT id,image,name,manu.manu_name ,protypes.type_name,description,price FROM products,manu,protypes WHERE products.manu_id = manu.manu_id AND products.type_id = protypes.type_id ORDER BY id DESC
			";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	function search($key){
	$sql = "SELECT image,name,manu.manu_name ,protypes.type_name,description,price FROM products,manu,protypes WHERE products.manu_id = manu.manu_id AND products.type_id = protypes.type_id AND name LIKE '%$key%' ";
	$result = self::$conn->query($sql);
	return $this->getData($result);
	}
	function deleteSP($id){
	$sql= " DELETE FROM products WHERE id = $id" ;
	var_dump($sql);
	$result = self::$conn->query($sql);
	return $result;
	}
public function getAllProducts($page, $per_page)
{
 
   
$first_link = ($page - 1) * $per_page; 
  
$sql = "SELECT * FROM products ORDER BY id  DESC LIMIT $first_link, $per_page"; 
     
$result = self::$conn->query($sql);      
  
return $this->getData($result);     
} 

function countPro(){

	$sql = "SELECT * FROM products";
	$result = self::$conn->query($sql);
	return $result->num_rows;
}
function pagination ($base_url, $total_rows, $page, $per_page, $offset)
{
	if($total_rows <= 0) {
		return "";
	}
	$total_pages = ceil($total_rows/$per_page);
	if($total_pages <= 1) {
		return "";
	}
	$from = $page - $offset;
	$to = $page + $offset;
	if($from <= 0) {
		$from = 1;
		$to = $page * 2;
	}
	if($to > $total_pages) {
		$to = $total_pages;
	}
	$link = "";

	for ($j = $from; $j <= $to; $j++) {
		$link = $link."<a href = '$base_url?page=$j'> $j </a>";
	}
	return $link;
}

function first_links ($base_url, $total_rows, $page, $per_page)
{
	$total_links=1;
	if($total_rows <= 0) {
		return "";
	}
	$total_pages = ceil($total_rows/$per_page);
	if($total_pages <= 1) {
		return "";
	}
	$first_link = ""; $prev_link =""; $last_link=""; $next_link="";
	if ($page > 1) {
		$first_link = "<a href='$base_url'> << </a>";
		$prev = $page - 1;
		$prev_link = "<a href='$base_url?page=$prev'> < </a>";
	}
	if($page < $total_pages) {
		$last_link = "<a href='$base_url?page=$total_pages'> >> </a>";
		$next = $page + 1;
		$next_link = "<a href ='$base_url?page=$next'>>></a>";
	}
	return $first_link.$prev_link;
}

function last_links ($base_url, $total_rows, $page, $per_page)
{
	$total_links=1;
	if($total_rows <= 0) {
		return "";
	}
	$total_pages = ceil($total_rows/$per_page);
	if($total_pages <= 1) {
		return "";
	}
	$first_link = ""; $prev_link =""; $last_link=""; $next_link="";
	if ($page > 1) {
		$first_link = "<a href='$base_url'> << </a>";
		$prev = $page - 1;
		$prev_link = "<a href='$base_url?page=$prev'> < </a>";
	}
	if($page < $total_pages) {
		$last_link = "<a href='$base_url?page=$total_pages'>>> </a>";
		$next = $page + 1;
		$next_link = "<a href ='$base_url?page=$next' >> </a>";
	}
	return $next_link.$last_link;
}
function addProduct($name, $manu_id, $type_id , $description, $price, $image) {

	$sql = "INSERT INTO products( name, manu_id, type_id, description, price, image ) 
			VALUES ('$name','$manu_id','$type_id','$description','$price','$image')";
			var_dump($sql);
	
	$result = self::$conn->query($sql);
	return $result;
}
public function getproduct($id){
		//Viet cau SQL
		$sql = "SELECT * FROM products WHERE id = $id";
		var_dump($sql);
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
}
?>