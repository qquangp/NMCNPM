<?php 
	include 'inc/header.php';
?>
<?php
// neu khong ton tai productID dua ve trang 404
	if(!isset($_GET['proid']) || $_GET['proid']==NULL){
       echo "<script>window.location ='404.php'</script>";
    }else{
         $id = $_GET['proid']; 
    }
    // neu ton tai server dung phuong thuc post 
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {

        $quantity = $_POST['quantity'];
        $insertCart = $ct->add_to_cart($quantity, $id);
        
    } 
?>  
 <div class="main">
    <div class="content">
    	<div class="section group">
    		<!-- Chi tiet san pham -->
    		<?php

		$get_product_details = $product->get_details($id);
		if($get_product_details){
			while($result_details = $get_product_details->fetch_assoc()){ // lay ra gia tri
		

		?>
				<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<!-- lay ra hinh anh -->
						<img src="admin/uploads/<?php echo $result_details['image'] ?>" alt="" />
					</div>
				<div class="desc span_3_of_2">
					<!-- lay ra ten -->
					<h2><?php echo $result_details['productName'] ?></h2>
					<!-- lay ra mo ta ngan gon -->
					<p><?php echo $fm->textShorten($result_details['product_desc'],140) ?></p>					
					<div class="price">
						<!-- lay ra gia -->
						<p>Price: <span><?php echo $fm->format_currency($result_details['price'])." "."VNĐ" ?></span></p>
						<!-- lay ra loai -->
						<p>Category: <span><?php echo $result_details['catName']?></span></p>
						<!-- lay ra thuong hieu -->
						<p>Brand:<span><?php echo $result_details['brandName']?></span></p>
					</div>
				<div class="add-cart">
					<form action="" method="post">
						<input type="number" class="buyfield" name="quantity" value="1" min="1"/>
						<input type="submit" class="buysubmit" name="submit" value="Buy Now"/>
						<?php
						
							if(isset($insertCart)){
								echo "<br>";
								echo  $insertCart;
						}
						?>
					</form>				
				</div>
			</div>
			<div class="product-desc">
			<h2>Product Details</h2>
			<p><?php echo $result_details['product_desc'] ?></p>
	    </div>
				
	</div>
	<?php
			}
		}
		?>
				<div class="rightsidebar span_3_of_1">
					<h2>CATEGORIES</h2>
					<ul>
						<?php 
						$getall_category = $cat->show_category_fontend();
						if($getall_category){
							while($result_allcat = $getall_category->fetch_assoc()){
					?>
				      <li><a href="productbycat.php?catId=<?php echo $result_allcat['catId']?>"><?php echo $result_allcat['catName'] ?></a></li>
				      <?php

				      	}
				      }
				      ?>
    				</ul>
    	
 				</div>
 		</div>
 	</div>
<?php 
	include 'inc/footer.php';
?>