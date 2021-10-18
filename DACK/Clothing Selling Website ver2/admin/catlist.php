<?php
    /* list all the items in cart at current*/
?>
<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Category List</h2>
                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr class="odd gradeX">
							<td>01</td>
							<td>Men</td>
							<td><a href="">Edit</a> || <a href="">Delete</a></td>
						</tr>
						<tr class="even gradeC">
							<td>02</td>
							<td>Woman </td>
							<td><a href="">Edit</a> || <a href="">Delete</a></td>
						</tr>
						<tr class="odd gradeX">
							<td>03</td>
							<td>Thumbnail</td>
							<td><a href="">Edit</a> || <a href="">Delete</a></td>
						</tr>
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

