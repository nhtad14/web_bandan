<?php
    ob_start();
    include 'lib/session.php';
    Session::init();
?>
<?php
    include_once 'lib/database.php';
    include_once 'helpers/format.php';

	spl_autoload_register(function($className){
		include_once "classes/".$className.".php";
	});
	$db = new Database();
	$fm = new Format();
	$ct = new cart();
	$cat = new category();
	$cs = new customer();
	$product = new product();
	$news = new news();
	$lhe = new lhe();
?>
<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>
<?php 
if(isset($_GET['timkiem'])){
    $tukhoa= $_GET['tukhoa'];
}
    ?>
<!DOCTYPE HTML>

<head>
    <title>Store Website</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/jquerymain.js"></script>
    <script src="js/script.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/nav.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/nav-hover.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
    $(document).ready(function($) {
        $('#dc_mega-menu-orange').dcMegaMenu({
            rowItems: '4',
            speed: 'fast',
            effect: 'fade'
        });
    });
    </script>
</head>

<body>
    <div class="wrap">
        <div class="header_top">
            <div class="logo">
                <a style="text-transform: uppercase;font-weight: bold;font-size: 2.5rem;letter-spacing: 2px"
                    href="index.php"><img src="admin/img/logo1.jpg" height="100px" alt="" />NN SHOP</a>
            </div>
            <div class="header_top_right">
                <div class="search_box">
                    <form action="products.php?quanly=timkiem" method="GET">
                        <input type="text" name="tukhoa" placeholder="T??m ki???m s???n ph???m">
                        <input type="submit" name="timkiem" value="SEARCH">
                    </form>

                </div>
                <div class="shopping_cart">
                    <div class="cart">
                        <a href="orderdetails.php" title="View my shopping cart" rel="nofollow">
                            <span class="cart_title">Gi??? h??ng</span>
                            <span class="no_product">(empty)</span>
                        </a>
                    </div>
                </div>
                <?php 
				if(isset($_GET['customer_id'])){
					$customer_id = $_GET['customer_id'];
					$delCart = $ct->del_all_data_cart();
					$delCompare = $ct->del_compare($customer_id);
					Session::destroy();
				}
			?>
                <div class="login">
                    <?php 
			$login_check = Session::get('customer_login');
			if ($login_check==false) {
				echo '<a href="login.php">????ng nh???p</a></div>'; 
			}else {
				echo '<a href="?customer_id='.Session::get('customer_id').' ">????ng xu???t</a></div>'; 
			}
			 ?>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="menu">

                <ul id="dc_mega-menu-orange" class="dc_mm-orange">
                    <li><a href="index.php">Trang ch???</a></li>
                    <li><a href="products.php">S???n ph???m</a> </li>

                    <?php 
	  $check_cart = $ct->check_cart();
	  if ($check_cart==true) {
	  	echo '<li><a href="cart.php">Gi??? h??ng</a></li>';
	  }else {
	  	echo '';
	  }
	   ?>

                    <?php 
	  $customer_id = Session::get('customer_id'); 
	  $check_order = $ct->check_order($customer_id);
	  if ($check_order==true) {
	  	echo '<li><a href="orderdetails.php">????n h??ng</a></li>';
	  }else {
	  	echo '';
	  }
	   ?>

                    <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check==false) {
	  	echo '';
	  }else {
	  	echo '<li><a href="profile.php">Th??ng tin</a></li>';
	  }
	   ?>
                    <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check) {
	  	echo '<li><a href="compare.php">So s??nh</a> </li>';
	  }
	   ?>
                    <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check) {
	  	echo '<li><a href="wishlist.php">Y??u th??ch</a> </li>';
	  }
	   ?>

                    <li><a href="contact.php">Li??n h???</a> </li>
                    <div class="clear"></div>
                </ul>
            </div>