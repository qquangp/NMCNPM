<?php 
	include 'inc/header.php';
?>

 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3></h3>
    		</div>
    		<div class="clear"></div>
    	</div> 
	      <div class="section group">
				<?php
	      				$product_new = $product->getproduct_new_2();
	      				if($product_new){ // neu new
	      				while($result = $product_new->fetch_assoc()){ // fetch_assoc lay gia tri

	      			?>
					<div class="grid_1_of_4 images_1_of_4">
						<!-- lay ra anh san pham-->
						<a href="details.php"><img src="admin/uploads/<?php echo $result['image'] ?>" width="140px"alt="" /></a>
						<!-- lay ra ten san pham-->
						<h2><?php echo $result['productName']?> </h2>
						<!-- lay ra gia san pham-->
						<p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">DETAILS</a></span></div>
					</div>
					<?php
				}
			}
				?>	
					
 </div>

 <?php 
	include 'inc/footer.php';
?>