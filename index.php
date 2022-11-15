<?php
	include 'inc/header.php';
	include 'inc/slider.php';
?>
<div class="main">
    <div class="content">
        <div class="content_top">
            <div class="heading">
                <h3>Sản phẩm nổi bật</h3>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group">


            <?php 
	      	$product_featheread = $product->getproduct_featheread2();
	      	if($product_featheread){
	      		while ($result = $product_featheread->fetch_assoc()) {
	      			      	
	      	 ?>
            <div style=" margin : 10px 5px 5px 11px;" class=" grid_1_of_4 images_1_of_4">
                <a href="details.php?proid=<?php echo $result['productId'] ?>"><img
                        src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
                <h2><?php echo $result['productName'] ?></h2>
                <p><?php echo $fm->textShorten($result['product_desc'], 100) ?></p>
                <p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VND" ?></span></p>
                <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>"
                            class="details">Chi tiết</a></span></div>
            </div>
            <?php 
				}
				}
				 ?>

        </div>
        <div class="content_bottom">
            <div class="heading">
                <h3>Sản phẩm mới</h3>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group">
            <?php 
	      	$product_featheread = $product->getproduct_featheread1();
	      	if($product_featheread){
	      		while ($result = $product_featheread->fetch_assoc())  {
	      			      	
	      	?>
            <div style=" margin : 10px 5px 5px 11px;" class="grid_1_of_4 images_1_of_4">
                <a href="details.php?proid=<?php echo $result['productId'] ?>"><img
                        src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
                <h2><?php echo $result['productName'] ?></h2>
                <p><?php echo $fm->textShorten($result['product_desc'], 100) ?></p>
                <p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VND"?></span></p>
                <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>"
                            class="details">Chi tiết</a></span></div>
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