<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<!DOCTYPE html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<html lang="ko">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
<meta charset="EUC-KR">
<title>Metronic Shop UI</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta content="Metronic Shop UI description" name="description">
<meta content="Metronic Shop UI keywords" name="keywords">
<meta content="keenthemes" name="author">

<meta property="og:site_name" content="-CUSTOMER VALUE-">
<meta property="og:title" content="-CUSTOMER VALUE-">
<meta property="og:description" content="-CUSTOMER VALUE-">
<meta property="og:type" content="website">
<meta property="og:image" content="-CUSTOMER VALUE-">
<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<link rel="shortcut icon" href="favicon.ico">

<!-- Fonts START -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<!--- fonts for slider on the index page -->
<!-- Fonts END -->

<!-- Global styles START -->
<link href="theme/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="theme/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Global styles END -->

<!-- Page level plugin styles START -->
<link href="theme/assets/pages/css/animate.css" rel="stylesheet">
<link href="theme/assets/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<link href="theme/assets/plugins/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="theme/assets/pages/css/components.css" rel="stylesheet">
<link href="theme/assets/pages/css/slider.css" rel="stylesheet">
<link href="theme/assets/pages/css/style-shop.css" rel="stylesheet"
	type="text/css">
<link href="theme/assets/corporate/css/style.css" rel="stylesheet">
<link href="theme/assets/corporate/css/style-responsive.css" rel="stylesheet">
<link href="theme/assets/corporate/css/themes/red.css" rel="stylesheet"
	id="style-color">
<link href="theme/assets/corporate/css/custom.css" rel="stylesheet">
<!-- Theme styles END -->
<style>
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: #e6400c;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 10px;
  opacity: 0.9;
}

#myBtn:hover {
  background-color: #555;
}
header-navigation li{
	height: 120px;
}
</style>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>

</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

	<!-- BEGIN TOP BAR -->
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline">
						<li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
						<!-- BEGIN CURRENCIES -->
						<li class="shop-currencies">
						</li>
						<!-- END LANGS -->
					</ul>
				</div>
				<!-- END TOP BAR LEFT PART -->
				<!-- BEGIN TOP BAR MENU -->
				<div class="col-md-6 col-sm-6 additional-nav">
					<ul class="list-unstyled list-inline pull-right">
						<c:choose>
							<c:when test="${loginuser ne null }">
							<li style="color:#e6400c;font-weight:bold;">${loginuser.id }´Ô</li>
							<c:choose>
								<c:when test="${loginuser.id ne 'admin' }">
									<li><a href="main.4jo?view=modify">My Page</a></li>
									<li><a href="purchasing.4jo?cmd=list&id=${loginuser.id }">History</a></li>
									<li><a href="login.4jo">logout</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="main.4jo?view=chart">Chart</a></li>
									<li><a href="user.4jo?cmd=list">User List</a></li>
									<li><a href="main.4jo?view=padd">Add Product</a></li>
									<li><a href="login.4jo">logout</a></li>
								</c:otherwise>
							</c:choose>
							</c:when>
							<c:otherwise>
								<li><a href="main.4jo?view=register">Register</a></li>
								<li><a href="main.4jo?view=login">Log In</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<!-- END TOP BAR MENU -->
			</div>
		</div>
	</div>
	<!-- END TOP BAR -->

	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="container">
			<a class="site-logo" href="main.4jo"><img
				src="theme/assets/corporate/img/logos/logo-shop-red.png"
				alt="Metronic Shop UI" id="logo"></a> <a href="javascript:void(0);"
				class="mobi-toggler"><i class="fa fa-bars"></i></a>

			<!-- BEGIN CART -->
			<div class="top-cart-block">
				<div class="top-cart-info">
					<a href="javascript:void(0);" class="top-cart-info-count">3
						items</a> <a href="javascript:void(0);" class="top-cart-info-value">£Ü143000</a>
				</div>
				<i class="fa fa-shopping-cart"></i>

				<div class="top-cart-content-wrapper">
					<div class="top-cart-content">
						<ul class="scroller" style="height: 250px;">
							<li><a href="shop-item.html"><img
									src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch"
									width="37" height="34"></a> <span class="cart-content-count">x
									1</span> <strong><a href="shop-item.html">knit</a></strong> <em>45000</em>
								<a href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch"
									width="37" height="34"></a> <span class="cart-content-count">x
									1</span> <strong><a href="shop-item.html">Pants</a></strong> <em>32000</em>
								<a href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch"
									width="37" height="34"></a> <span class="cart-content-count">x
									1</span> <strong><a href="shop-item.html">Dress</a></strong> <em>66000</em>
								<a href="javascript:void(0);" class="del-goods">&nbsp;</a></li>

						</ul>
						<div class="text-right">
							<a href="shop-shopping-cart.html" class="btn btn-default">View
								Cart</a> <a href="shop-checkout.html" class="btn btn-primary">Checkout</a>
						</div>
					</div>
				</div>
			</div>
			<!--END CART -->

			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation">
				<ul>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="product.4jo?cmd=list&category=outer" href="product.4jo?cmd=list&category=outer">
							Outer </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li><a href="product.4jo?cmd=list&pname=jacket">Jacket</a></li>
							<li><a href="product.4jo?cmd=list&pname=coat">Coat</a></li>
						</ul> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="product.4jo?cmd=list&category=top" href="product.4jo?cmd=list&category=top">
							Top </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li><a href="product.4jo?cmd=list&pname=knit">Knit</a></li>
							<li><a href="product.4jo?cmd=list&pname=tshirt">T-Shirt</a></li>
							<li><a href="product.4jo?cmd=list&pname=hoody">Hoody</a></li>
						</ul> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="product.4jo?cmd=list&category=bottom" href="product.4jo?cmd=list&category=bottom">
							Bottom </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li><a href="product.4jo?cmd=list&pname=slacks">Slacks</a></li>
							<li><a href="product.4jo?cmd=list&pname=jean">Jean</a></li>
							<li><a href="product.4jo?cmd=list&pname=skirt">Skirt</a></li>
						</ul> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="product.4jo?cmd=list&category=dress" href="product.4jo?cmd=list&category=dress">
							Dress </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li><a href="product.4jo?cmd=list&pname=onepiece">One-Piece</a></li>
							<li style="visibility:none;height:0;display:none;"><a style="visibility:none;"></a></li>
						</ul> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="product.4jo?cmd=list&category=bagnshoes" href="product.4jo?cmd=list&category=bagnshoes">
							Bag &#38; Shoes </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li><a href="product.4jo?cmd=list&pname=flat">Flat</a></li>
							<li><a href="product.4jo?cmd=list&pname=heel">Heel</a></li>
							<li><a href="product.4jo?cmd=list&pname=sneakers">Sneakers</a></li>
						</ul> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="product.4jo?cmd=list&category=acc" href="product.4jo?cmd=list&category=acc">
							ACC </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li><a href="product.4jo?cmd=list&pname=scarf">Scarf</a></li>
							<li><a href="product.4jo?cmd=list&pname=jewelry">Jewelry</a></li>
						</ul> <!-- END DROPDOWN MENU --></li>

					<!-- BEGIN TOP SEARCH -->
					<li class="menu-search"><span class="sep"></span> <i
						class="fa fa-search search-btn"></i>
						<div class="search-box">
							<form action="#">
								<div class="input-group">
									<input type="text" placeholder="Search" class="form-control">
									<span class="input-group-btn">
										<button class="btn btn-primary" type="submit">Search</button>
									</span>
								</div>
							</form>
						</div></li>
					<!-- END TOP SEARCH -->
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->

	<c:choose>
		<c:when test="${center != null }">
			<jsp:include page="${center }.jsp"/>
		</c:when>
		<c:otherwise>
			<jsp:include page="center.jsp"/>
		</c:otherwise>
	</c:choose>



	<!-- BEGIN PRE-FOOTER -->
	<div class="pre-footer">
		<div class="container">
			<div class="row">
				<!-- BEGIN BOTTOM ABOUT BLOCK -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2>About us</h2>
					<p>@ 2017 FourStyle ALL RIGHT RESERVED</p>
					<p>This is 4jo's Project. we make shoopingmall site. We used
						JAVA, JAVASCRIPT,SQL,HTML5</p>
				</div>
				<!-- END BOTTOM ABOUT BLOCK -->
				<!-- BEGIN BOTTOM INFO BLOCK -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2>Information</h2>
					<ul class="list-unstyled">
						<li><i class="fa fa-angle-right"></i> <a href="javascript:;">Delivery
								Information</a></li>
						<li><i class="fa fa-angle-right"></i> <a href="javascript:;">Customer
								Service</a></li>
						<li><i class="fa fa-angle-right"></i> <a href="javascript:;">Order
								Tracking</a></li>
						<li><i class="fa fa-angle-right"></i> <a href="javascript:;">Shipping
								&amp; Returns</a></li>
						<li><i class="fa fa-angle-right"></i> <a href="contacts.html">Contact
								Us</a></li>
					</ul>
				</div>
				<!-- END INFO BLOCK -->

				<!-- BEGIN TWITTER BLOCK -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2 class="margin-bottom-0">Latest Tweets</h2>
				</div>
				<!-- END TWITTER BLOCK -->

				<!-- BEGIN BOTTOM CONTACTS -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2>Our Contacts</h2>
					<address class="margin-bottom-40">
						212, Teheran-ro, Gangnam-gu <br> Seoul, Republic of Korea<br>
						Phone: 02 123 3456<br> Fax: 300 323 1456<br> Email: <a
							href="mailto:info@metronic.com">fourstyle@fourstyle.com</a><br>
						Instagram: <a href="skype:metronic">fourstyle</a>
					</address>
				</div>
				<!-- END BOTTOM CONTACTS -->
			</div>
			<hr>
			<div class="row">
				<!-- BEGIN SOCIAL ICONS -->
				<div class="col-md-6 col-sm-6"></div>
				<!-- END SOCIAL ICONS -->
			</div>
		</div>
	</div>
	<!-- END PRE-FOOTER -->

	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<!-- BEGIN COPYRIGHT -->
				<div class="col-md-4 col-sm-4 padding-top-10">2017 &#169; 4Á¶. ALL
					Rights Reserved.</div>
				<!-- END COPYRIGHT -->
			</div>
		</div>
	</div>
	<!-- END FOOTER -->

	<!-- BEGIN fast view of a product -->
	<div id="product-pop-up" style="display: none; width: 700px;">
		<div class="product-page product-pop-up">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-3">
					<div class="product-main-image">
						<img src="theme/assets/pages/img/products/model7.jpg"
							alt="Cool green dress with red bell" class="img-responsive">
					</div>
					<div class="product-other-images">
						<a href="javascript:;" class="active"><img
							alt="Berry Lace Dress" src="theme/assets/pages/img/products/model3.jpg"></a>
						<a href="javascript:;"><img alt="Berry Lace Dress"
							src="theme/assets/pages/img/products/model4.jpg"></a> <a
							href="javascript:;"><img alt="Berry Lace Dress"
							src="theme/assets/pages/img/products/model5.jpg"></a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-9">
					<h2>Cool green dress with red bell</h2>
					<div class="price-availability-block clearfix">
						<div class="price">
							<strong><span>$</span>47.00</strong> <em>$<span>62.00</span></em>
						</div>
						<div class="availability">
							Availability: <strong>In Stock</strong>
						</div>
					</div>
					<div class="description">
						<p>Lorem ipsum dolor ut sit ame dolore adipiscing elit, sed
							nonumy nibh sed euismod laoreet dolore magna aliquarm erat
							volutpat Nostrud duis molestie at dolore.</p>
					</div>
					<div class="product-page-options">
						<div class="pull-left">
							<label class="control-label">Size:</label> <select
								class="form-control input-sm">
								<option>L</option>
								<option>M</option>
								<option>XL</option>
							</select>
						</div>
						<div class="pull-left">
							<label class="control-label">Color:</label> <select
								class="form-control input-sm">
								<option>Red</option>
								<option>Blue</option>
								<option>Black</option>
							</select>
						</div>
					</div>
					<div class="product-page-cart">
						<div class="product-quantity">
							<input id="product-quantity" type="text" value="1" readonly
								name="product-quantity" class="form-control input-sm">
						</div>
						<button class="btn btn-primary" type="submit">Add to cart</button>
						<a href="shop-item.html" class="btn btn-default">More details</a>
					</div>
				</div>

				<div class="sticker sticker-sale"></div>
			</div>
		</div>
	</div>
	<script src="theme/assets/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="theme/assets/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script src="theme/assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- <script src="theme/assets/corporate/scripts/back-to-top.js"
		type="text/javascript"></script> -->
	<script src="theme/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
	<script src="theme/assets/plugins/fancybox/source/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<!-- pop up -->
	<script src="theme/assets/plugins/owl.carousel/owl.carousel.min.js"
		type="text/javascript"></script>
	<!-- slider for products -->
	<script src='theme/assets/plugins/zoom/jquery.zoom.min.js'
		type="text/javascript"></script>
	<!-- product zoom -->
	<script src="theme/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
		type="text/javascript"></script>
	<!-- Quantity -->

	<script src="theme/assets/corporate/scripts/layout.js" type="text/javascript"></script>
	<script src="theme/assets/pages/scripts/bs-carousel.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			Layout.init();
			Layout.initOWL();
			Layout.initImageZoom();
			Layout.initTouchspin();
			Layout.initTwitter();
		});
	</script>
	<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>