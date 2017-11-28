<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- Fonts END -->

<!-- Global styles START -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Global styles END -->

<!-- Page level plugin styles START -->
<link href="assets/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<link href="assets/plugins/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet">
<link href="assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<link
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css">
<!-- for slider-range -->
<link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet"
	type="text/css">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="assets/pages/css/components.css" rel="stylesheet">
<link href="assets/corporate/css/style.css" rel="stylesheet">
<link href="assets/pages/css/style-shop.css" rel="stylesheet"
	type="text/css">
<link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
<link href="assets/corporate/css/themes/red.css" rel="stylesheet"
	id="style-color">
<link href="assets/corporate/css/custom.css" rel="stylesheet">
<!-- Theme styles END -->
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
$(document).ready(function() {
	/* li > a.text() */
	/* alert('${category}');*/
	$('#${category}').addClass("active");
	$('#${category}').addClass("collapsed");
	$('#${category} > ul').css("display", "block");
	$('#${pname}').addClass("active");
	$('#${pname}').css("display", "block");
});
</script>
<div class="title-wrapper">
	<div class="container">
		<div class="container-inner">
			<h1>
				<!-- <span>MEN</span> CATEGORY -->
				<span>${category }</span> CATEGORY
			</h1>
			<em>Over 4000 Items are available here</em>
		</div>
	</div>
</div>

<div class="main">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="">Store</a></li>
			<!-- <li class="active">Men category</li> -->
			<li class="active">${category } category</li>
		</ul>
		<!-- BEGIN SIDEBAR & CONTENT -->
		<div class="row margin-bottom-40">
			<!-- BEGIN SIDEBAR -->
			<div class="sidebar col-md-3 col-sm-5">
				<ul class="list-group margin-bottom-25 sidebar-menu">
					<li class="list-group-item clearfix dropdown" id="outer"><a
						href="product.4jo?cmd=list&category=outer"><i class="fa fa-angle-right"></i>
							Outer</a>
						<ul class="dropdown-menu">
							<li id="jacket"><a href="product.4jo?cmd=list&pname=jacket"><i
									class="fa fa-angle-right"></i> Jacket</a></li>
							<li id="coat"><a href="product.4jo?cmd=list&pname=coat"><i
									class="fa fa-angle-right"></i> Coat</a></li>
						</ul></li>
					<li class="list-group-item clearfix dropdown"  id="top"><a
						href="product.4jo?cmd=list&category=top"> <i class="fa fa-angle-right"></i>
							Top</a>
						<ul class="dropdown-menu">
							<li id="knit"><a href="product.4jo?cmd=list&pname=knit"><i
									class="fa fa-angle-right"></i> Knit</a></li>
							<li id="tshirt"><a href="product.4jo?cmd=list&pname=tshirt"><i
									class="fa fa-angle-right"></i> T-Shirt</a></li>
							<li id="hoody"><a href="product.4jo?cmd=list&pname=hoody"><i
									class="fa fa-angle-right"></i> Hoody</a></li>
						</ul>
						</li>
					<li class="list-group-item clearfix dropdown" id="bottom"><a
						href="product.4jo?cmd=list&category=bottom"><i class="fa fa-angle-right"></i>
							Bottom</a>
							<ul class="dropdown-menu">
							<li id="slacks"><a href="product.4jo?cmd=list&pname=slacks"><i
									class="fa fa-angle-right"></i> Slacks</a></li>
							<li id="jean"><a href="product.4jo?cmd=list&pname=jean"><i
									class="fa fa-angle-right"></i> Jean</a></li>
							<li id="skirt"><a href="product.4jo?cmd=list&pname=skirt"><i
									class="fa fa-angle-right"></i> Skirt</a></li>
							</ul>
							</li>
					<li class="list-group-item clearfix dropdown" id="dress"><a
						href="product.4jo?cmd=list&category=dress"><i class="fa fa-angle-right"></i>
							Dress</a>
							<ul class="dropdown-menu">
							<li id="onepiece"><a href="product.4jo?cmd=list&pname=onepiece"><i
									class="fa fa-angle-right"></i> One-Piece</a></li>
							</ul>
							</li>
					<li class="list-group-item clearfix dropdown" id="bagnshoes"><a
						href="product.4jo?cmd=list&category=bagnshoes"><i class="fa fa-angle-right"></i>
							Bag & Shoes</a>
							<ul class="dropdown-menu">
							<li id="flat"><a href="product.4jo?cmd=list&pname=flat"><i
									class="fa fa-angle-right"></i> Flat</a></li>
							<li id="heel"><a href="product.4jo?cmd=list&pname=heel"><i
									class="fa fa-angle-right"></i> Heel</a></li>
							<li id="sneakers"><a href="product.4jo?cmd=list&pname=sneakers"><i
									class="fa fa-angle-right"></i> Sneakers</a></li>
							</ul>
							</li>
					<li class="list-group-item clearfix dropdown" id="acc"><a
						href="product.4jo?cmd=list&category=acc"><i class="fa fa-angle-right"></i>
							Acc</a>
							<ul class="dropdown-menu">
							<li id="scarf"><a href="product.4jo?cmd=list&pname=scarf"><i
									class="fa fa-angle-right"></i> Scarf</a></li>
							<li id="jewelry"><a href="product.4jo?cmd=list&pname=jewelry"><i
									class="fa fa-angle-right"></i> Jewelry</a></li>
							</ul>
							</li>
				</ul>
				<div class="sidebar-products clearfix">
					<h2>Bestsellers</h2>
					<div class="item">
						<a href="product.4jo?cmd=list&category=bottom"><img
							src="theme/assets/pages/img/products/k1.jpg"
							alt="Some Shoes in Animal with Cut Out"></a>
						<h3>
							<a href="product.4jo?cmd=list&category=bottom">JEAN</a>
						</h3>
						<div class="price">￦42000</div>
					</div>
					<div class="item">
						<a href="product.4jo?cmd=list&category=top"><img
							src="theme/assets/pages/img/products/k4.jpg"
							alt="Some Shoes in Animal with Cut Out"></a>
						<h3>
							<a href="product.4jo?cmd=list&category=top">KNIT 1</a>
						</h3>
						<div class="price">￦23000</div>
					</div>
					<div class="item">
						<a href="product.4jo?cmd=list&category=top"><img
							src="theme/assets/pages/img/products/k3.jpg"
							alt="Some Shoes in Animal with Cut Out"></a>
						<h3>
							<a href="product.4jo?cmd=list&category=top">KNIT 2</a>
						</h3>
						<div class="price">￦86000</div>
					</div>
				</div>
			</div>
			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->

			<jsp:include page="content.jsp" />

			<!-- END CONTENT -->
		</div>
		<!-- END SIDEBAR & CONTENT -->
	</div>
</div>
