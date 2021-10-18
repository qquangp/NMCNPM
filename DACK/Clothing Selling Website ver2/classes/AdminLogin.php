<?php
	$filepath = realpath(dirname(__FILE__));
	include ($filepath.'/../lib/session.php');
	Session::checkLogin();
	include_once($filepath.'/../lib/database.php');
	include_once($filepath.'/../helpers/format.php');
?>
<?php
	class AdminLogin
	{
		private $db;
		private $format;

		public function __construct()
		{
			$this->db = new Database();
			$this->format = new Format();
		}
		public function LoginAdmin($AdminUser,$AdminPass)
		{
			$AdminUser = $this->format->validation($AdminUser);
			$AdminPass = $this->format->validation($AdminPass);

			$AdminUser = mysqli_real_escape_string($this->db->link,$AdminUser);
			$AdminPass = mysqli_real_escape_string($this->db->link,$AdminPass);

			if(empty($AdminUser)||empty($AdminPass))
			{
				$error1 = "Username and Password cannot be empty";
				return $error1;
			}
			else
			{
				$qr = "SELECT * FROM tbl_admin WHERE AdminUser = '$AdminUser'AND AdminPass = '$AdminPass' LIMIT 1 ";
				$rs = $this->db->select($qr);
				if($rs != false)
				{
					$val = $rs->fetch_assoc();
					Session::set('AdminLogin',true);
					Session::set('AdminID',$val['AdminID']);
					Session::set('AdminUser',$val['AdminUser']);
					Session::set('AdminName',$val['AdminName']);
					header('Location:index.php');
				}
				else
				{
					$error1 = "Invalid Username and Password";
					return $error1;
				}
			}
		}
	}
?>