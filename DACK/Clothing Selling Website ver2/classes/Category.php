<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
?>
<?php
	class Category
	{
		private $db;
		public function __construct()
		{
			$this->db = new Database();
		}
		public function show_category(){
			$query = "SELECT * FROM tbl_category order by CateID desc";
			$result = $this->db->select($query);
			return $result;
		}
	}
?>