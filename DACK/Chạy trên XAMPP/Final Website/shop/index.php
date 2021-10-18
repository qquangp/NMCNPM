<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
?> 
		<div class="main">
			
			<div class="content">
				<div class="content_top">
					<div class="heading">
						<h3>Top hottest items</h3>
					</div>
					<div class="clear"></div>
				</div>
				<div class="section group">
					<!-- San pham noi bat -->
					<?php
	      				$product_hottest = $product->getproduct_hottest();
	      				if($product_hottest){ // neu hottest
	      				while($result = $product_hottest->fetch_assoc()){ // fetch_assoc lay gia tri

	      			?>
					<div class="grid_1_of_4 images_1_of_4">
						<!-- lay ra anh san pham-->
						<a href="details.php"><img src="admin/uploads/<?php echo $result['image'] ?> " width="140px" alt="" /></a>
						<!-- lay ra ten san pham -->
						<h2><?php echo $result['productName']?> </h2>
						<!-- lay ra mo ta san pham -->
						<p><?php echo $fm->textShorten($result['product_desc'],20)?> </p>
						<!-- lay ra gia san pham -->
						<p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">DETAILS</a></span></div>
					</div>
					<?php
				}
			}
				?>
				</div>
				<div class="content_bottom">
					<div class="heading">
						<h3>New Products</h3>
					</div>
					<div class="clear"></div>
				</div>
				<div class="section group">
					<!-- San pham moi nhat -->
					<?php
	      				$product_new = $product->getproduct_new();
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
			</div>
		</div>
<?php 
	include 'inc/footer.php';
?>