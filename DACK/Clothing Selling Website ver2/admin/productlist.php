<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/Brand.php';?>
<?php include '../classes/Category.php';?>
<?php include '../classes/Product.php';?>
<?php include_once '../helpers/format.php';?>
<?php
	$pd = new Product();
	$fm = new Format();
	if(isset($_GET['ProductID'])){
        $id = $_GET['ProductID']; 
        $delpro = $pd->del_product($id);
    }
?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block">
        <?php
        if(isset($delpro)){
        	echo $delpro;
        }
        ?>   
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Catagory</th>
					<th>Brand</th>
					<th>Action</th>  
				</tr>
			</thead>
			<tbody>
				<?php
			
				$pdlist = $pd->show_product();
				if($pdlist){
					$i = 0;
					while($result = $pdlist->fetch_assoc()){
						$i++;
				?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['ProductName'] ?></td>
					<td><?php echo $result['Price'] ?></td>
					<td><?php echo $result['CateName'] ?></td>
					<td><?php echo $result['BrandName'] ?></td>
					<td><a href="ProductedID.php?ProductID=<?php echo $result['ProductID'] ?>">Edit</a> || <a href="?ProductID=<?php echo $result['ProductID'] ?>">Delete</a></td>
				</tr>
				<?php
					}
				}
				?>
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
