<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php'?>
<?php
	$brand = new brand();
	if(isset($_GET['delid']))
	{
        $id = $_GET['delid'];
		$delBrand = $brand->del_brand($id);
    }
	
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Danh Sách thương hiệu sản phẩm</h2>
                <div class="block">
				<?php
                    if(isset($delBrand)){
                        echo $delBrand;
                    }
                ?>        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>STT</th>
							<th>Tên danh mục</th>
							<th>Option</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$show_brand = $brand->show_brand();
							if(isset($show_brand)){
								$i=0;
								while ($result = $show_brand->fetch_assoc()){
									$i++;
								
							
						?>
						<tr class="odd gradeX">
							<td><?php echo $i ?></td>
							<td><?php echo $result['brandName'] ?></td>
							<td><a href="brandedit.php?brandid=<?php echo $result['brandId']; ?>">Edit</a> || <a onclick="return confirm('Bạn có chắc muốn xóa không?')" href="?delid=<?php echo $result['brandId']; ?>">Delete</a></td>
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