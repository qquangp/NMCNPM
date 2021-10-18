<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
?>
<?php
	class Brand
	{
		private $db;
		public function __construct()
		{
			$this->db = new Database();
		}
		public function show_brand(){
			$query = "SELECT * FROM tbl_brand order by BrandID desc";
			$result = $this->db->select($query);
			return $result;
		}
	}
?>