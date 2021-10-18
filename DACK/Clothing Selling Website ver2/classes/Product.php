<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
?>
<?php
	class Product
	{
		private $db;
		

		public function __construct()
		{
			$this->db = new Database();
			
		}
		// Them san pham
		public function InsertProduct($data, $files)
		{

			$ProductName = mysqli_real_escape_string($this->db->link,$data['ProductName']);
			$Category = mysqli_real_escape_string($this->db->link,$data['Category']);
			$Brand = mysqli_real_escape_string($this->db->link,$data['Brand']);
			$ProductDesc = mysqli_real_escape_string($this->db->link,$data['ProductDesc']);
			$Price = mysqli_real_escape_string($this->db->link,$data['Price']);
			$Type = mysqli_real_escape_string($this->db->link,$data['Type']);

			// Kiem tra hinh anh
			$permited  = array('jpg', 'jpeg', 'png', 'gif');
			$file_name = $_FILES['Image']['name'];
			$file_size = $_FILES['Image']['size'];
			$file_temp = $_FILES['Image']['tmp_name'];

			$div = explode('.', $file_name);
			$file_ext = strtolower(end($div));
			$unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
			$uploaded_image = "uploads/".$unique_image; // dua file anh vao muc uploads trong admin
			// Kiem tra nhap lieu rong
			if($ProductName==""||$Category==""||$Brand==""||$ProductDesc==""||$Price==""||$Type=="") 
			{
				$error1 = "<span class='error'>Information cannot be empty</span>"; // Loi nhap lieu rong
				return $error1;
				
			}
			else 
			{
				// Them vao data
				move_uploaded_file($file_temp,$uploaded_image);
				$qr = "INSERT INTO tbl_product(ProductName,CateID,BrandID,ProductDesc,Type,Price,Image) values ('$ProductName','$Category','$Brand','$ProductDesc','$Type','$Price','$unique_image')";
				$result = $this->db->insert($qr); // them du lieu cau truy van insert vao database
				// Kiem tra them
				if($result){
					$erroe1 = "<span class='success'>Insert Product Successfully</span>"; // Them thanh cong
					return $error1;
				}else{
					$error1 = "<span class='error'>Insert Product Not Success</span>"; // Them that bai
					return $error1;
				}
			}
		}
		public function show_product(){
			// truy van select du lieu tu bang product, ten loai tu bang Category, ten nhan hieu tu bang Brand
			$query = " SELECT tbl_product.*, tbl_category.CateName, tbl_brand.BrandName 
					FROM tbl_product 
					INNER JOIN tbl_category 
					ON tbl_product.CateID = tbl_category.CateID 
					INNER JOIN tbl_brand 
					ON tbl_product.BrandID = tbl_brand.BrandID
					order by tbl_product.ProductID desc";

			$result = $this->db->select($query); // lay du lieu cau truy van select tu database
			return $result;
		}
	}
?>