<?php
	include '../classes/AdminLogin.php';
	
?>
<?php
	$class = new AdminLogin();
	if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    	$AdminUser = $_POST['AdminUser'];
    	$AdminPass = md5($_POST['AdminPass']);

    	$check_login = $class->LoginAdmin($AdminUser,$AdminPass);
}
?>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
		<!-- Login -->
		<form action="login.php" method="post">
			<h1>Admin Login</h1>
			<span>
			<?php 
				if(isset($check_login))
				{
					echo $check_login;
				}
			?>	
			</span>
			<div>
				<input type="text" placeholder="Username" required="" name="AdminUser"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" name="AdminPass"/>
			</div>
			<div>
				<input type="submit" value="Log in" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Training with live project</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>