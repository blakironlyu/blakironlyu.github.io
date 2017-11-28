<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link href="theme/assets/corporate/css/style.css" rel="stylesheet">
<style>
#first {
	margin-top: 0px;
	height: 50px;
	background: black;
}
.add2cart {
	width: 50px;
}
</style>
<!-- BEGIN SLIDER -->
<div class="page-slider margin-bottom-35">
	<div id="carousel-example-generic"
		class="carousel slide carousel-slider">
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<!-- First slide -->
			<div class="item carousel-item-four active">
				<div class="container">
					<div class="carousel-position-four text-center">
						<h2
							class="margin-bottom-20 animate-delay carousel-title-v3 border-bottom-title text-uppercase"
							data-animation="animated fadeInDown">
							<br />
							<span class="color-red-v2"></span><br />
						</h2>
						<p class="carousel-subtitle-v2" data-animation="animated fadeInUp">
							Find your style <br />
						</p>
					</div>
				</div>
			</div>



			<!-- Third slide -->
			<div class="item carousel-item-six">
				<div class="container">
					<div class="carousel-position-four text-center">
						<span class="carousel-subtitle-v3 margin-bottom-15"
							data-animation="animated fadeInDown"> French &amp; Chic </span>

						<p class="carousel-subtitle-v3"
							data-animation="animated fadeInDown">We suggest trendy style
						</p>
					</div>
				</div>
			</div>

			<!-- Fourth slide -->
			<div class="item carousel-item-seven">
				<div class="center-block">
					<div class="center-block-wrap">
						<div class="center-block-body">
							<h2 class="carousel-title-v1 margin-bottom-20"
								data-animation="animated fadeInDown">
								The most <br /> wanted Style
							</h2>
							<a class="carousel-btn" href="#"
								data-animation="animated fadeInUp">But It Now!</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control carousel-control-shop"
			href="#carousel-example-generic" role="button" data-slide="prev">
			<i class="fa fa-angle-left" aria-hidden="true"></i>
		</a> <a class="right carousel-control carousel-control-shop"
			href="#carousel-example-generic" role="button" data-slide="next">
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</a>
	</div>
</div>
<!-- END SLIDER -->
<div class="main">
	<div class="container">
		<!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
		<div class="row margin-bottom-40">
			<!-- BEGIN SALE PRODUCT -->
			<div class="col-md-12 sale-product">
				<h2>New Arrivals</h2>
				<div class="owl-carousel owl-carousel5">
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model1.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model1.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!--  <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=dress">Classic Dress</a>
							</h3>
							<div class="pi-price">￦72000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
							<div class="sticker sticker-sale"></div>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model2.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model2.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=outer">kate handmade
									coat</a>
							</h3>
							<div class="pi-price">￦285000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model3.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model3.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=outer">Pinky Coat</a>
							</h3>
							<div class="pi-price">￦220000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model4.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model4.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=bottom">Sky denim</a>
							</h3>
							<div class="pi-price">￦46800</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
							<div class="sticker sticker-new"></div>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model5.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model5.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=outer">Overfit denim
									jacket</a>
							</h3>
							<div class="pi-price">￦98000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model3.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model3.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=bottom">vintage boy
									denim</a>
							</h3>
							<div class="pi-price">￦46800</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/model7.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/model7.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">celine pola</a>
							</h3>
							<div class="pi-price">￦52000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END SALE PRODUCT -->
		</div>
		<!-- END SALE PRODUCT & NEW ARRIVALS -->

		<!-- BEGIN SIDEBAR & CONTENT -->
		<div class="row margin-bottom-40 ">
			<!-- BEGIN SIDEBAR -->
			<div class="sidebar col-md-3 col-sm-4">
				<ul class="list-group margin-bottom-25 sidebar-menu">
					<li class="list-group-item clearfix dropdown" id="outer"><a
						href="product.4jo?cmd=list&category=outer"><i
							class="fa fa-angle-right"></i> Outer</a>
						<ul class="dropdown-menu">
							<li id="jacket"><a href="product.4jo?cmd=list&pname=jacket"><i
									class="fa fa-angle-right"></i> Jacket</a></li>
							<li id="coat"><a href="product.4jo?cmd=list&pname=coat"><i
									class="fa fa-angle-right"></i> Coat</a></li>
						</ul></li>
					<li class="list-group-item clearfix dropdown" id="top"><a
						href="product.4jo?cmd=list&category=top"> <i
							class="fa fa-angle-right"></i> Top
					</a>
						<ul class="dropdown-menu">
							<li id="knit"><a href="product.4jo?cmd=list&pname=knit"><i
									class="fa fa-angle-right"></i> Knit</a></li>
							<li id="tshirt"><a href="product.4jo?cmd=list&pname=tshirt"><i
									class="fa fa-angle-right"></i> T-Shirt</a></li>
							<li id="hoody"><a href="product.4jo?cmd=list&pname=hoody"><i
									class="fa fa-angle-right"></i> Hoody</a></li>
						</ul></li>
					<li class="list-group-item clearfix dropdown" id="bottom"><a
						href="product.4jo?cmd=list&category=bottom"><i
							class="fa fa-angle-right"></i> Bottom</a>
						<ul class="dropdown-menu">
							<li id="slacks"><a href="product.4jo?cmd=list&pname=slacks"><i
									class="fa fa-angle-right"></i> Slacks</a></li>
							<li id="jean"><a href="product.4jo?cmd=list&pname=jean"><i
									class="fa fa-angle-right"></i> Jean</a></li>
							<li id="skirt"><a href="product.4jo?cmd=list&pname=skirt"><i
									class="fa fa-angle-right"></i> Skirt</a></li>
						</ul></li>
					<li class="list-group-item clearfix dropdown" id="dress"><a
						href="product.4jo?cmd=list&category=dress"><i
							class="fa fa-angle-right"></i> Dress</a>
						<ul class="dropdown-menu">
							<li id="onepiece"><a
								href="product.4jo?cmd=list&pname=onepiece"><i
									class="fa fa-angle-right"></i> One-Piece</a></li>
						</ul></li>
					<li class="list-group-item clearfix dropdown" id="bagnshoes"><a
						href="product.4jo?cmd=list&category=bagnshoes"><i
							class="fa fa-angle-right"></i> Bag & Shoes</a>
						<ul class="dropdown-menu">
							<li id="flat"><a href="product.4jo?cmd=list&pname=flat"><i
									class="fa fa-angle-right"></i> Flat</a></li>
							<li id="heel"><a href="product.4jo?cmd=list&pname=heel"><i
									class="fa fa-angle-right"></i> Heel</a></li>
							<li id="sneakers"><a
								href="product.4jo?cmd=list&pname=sneakers"><i
									class="fa fa-angle-right"></i> Sneakers</a></li>
						</ul></li>
					<li class="list-group-item clearfix dropdown" id="acc"><a
						href="product.4jo?cmd=list&category=acc"><i
							class="fa fa-angle-right"></i> Acc</a>
						<ul class="dropdown-menu">
							<li id="scarf"><a href="product.4jo?cmd=list&pname=scarf"><i
									class="fa fa-angle-right"></i> Scarf</a></li>
							<li id="jewelry"><a
								href="product.4jo?cmd=list&pname=jewelry"><i
									class="fa fa-angle-right"></i> Jewelry</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->
			<div class="col-md-9 col-sm-8">
				<h2>New items</h2>
				<div class="owl-carousel owl-carousel3">
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k1.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k1.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=bottom">vintage boy
									denim</a>
							</h3>
							<div class="pi-price">￦48000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
							<div class="sticker sticker-new"></div>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k2.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k2.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">Berry MTM</a>
							</h3>
							<div class="pi-price">￦22000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k3.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k3.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">Golgi Knit</a>
							</h3>
							<div class="pi-price">￦56000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k4.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k4.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">Colorful Knit</a>
							</h3>
							<div class="pi-price">￦42000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
							<div class="sticker sticker-sale"></div>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k1.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k1.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">Berry MTM</a>
							</h3>
							<div class="pi-price">￦22000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k2.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k2.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=dress">Berry Lace
									Dress6</a>
							</h3>
							<div class="pi-price">$29.00</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END CONTENT -->
		</div>
		<!-- END SIDEBAR & CONTENT -->

		<!-- BEGIN TWO PRODUCTS & PROMO -->
		<div class="row margin-bottom-35 ">
			<!-- BEGIN TWO PRODUCTS -->
			<div class="col-md-6 two-items-bottom-items">
				<h2>Best items</h2>
				<div class="owl-carousel owl-carousel2">
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k4.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k4.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">Colorful Knit</a>
							</h3>
							<div class="pi-price">￦42000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k2.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k2.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=top">Berry MTM</a>
							</h3>
							<div class="pi-price">￦22000</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k3.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k3.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=dress">Berry Lace
									Dress</a>
							</h3>
							<div class="pi-price">$29.00</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k1.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k1.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=dress">Berry Lace
									Dress</a>
							</h3>
							<div class="pi-price">$29.00</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k4.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k4.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=dress">Berry Lace
									Dress</a>
							</h3>
							<div class="pi-price">$29.00</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
					<div>
						<div class="product-item">
							<div class="pi-img-wrapper">
								<img src="theme/assets/pages/img/products/k3.jpg"
									class="img-responsive" alt="Berry Lace Dress">
								<div>
									<a href="theme/assets/pages/img/products/k3.jpg"
										class="btn btn-default fancybox-button">Zoom</a>
									<!-- <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a> -->
								</div>
							</div>
							<h3>
								<a href="product.4jo?cmd=list&category=dress">Berry Lace
									Dress</a>
							</h3>
							<div class="pi-price">$29.00</div>
							<a href="javascript:;" class="btn btn-default add2cart">BUY</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END TWO PRODUCTS -->
			<!-- BEGIN PROMO -->
			<div class="col-md-6 shop-index-carousel">
				<div class="content-slider">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="theme/assets/pages/img/index-sliders/slide1.jpg"
									class="img-responsive" alt="Berry Lace Dress">
							</div>
							<div class="item">
								<img src="theme/assets/pages/img/index-sliders/slide2.jpg"
									class="img-responsive" alt="Berry Lace Dress">
							</div>
							<div class="item">
								<img src="theme/assets/pages/img/index-sliders/slide3.jpg"
									class="img-responsive" alt="Berry Lace Dress">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PROMO -->
		</div>
		<!-- END TWO PRODUCTS & PROMO -->
	</div>
</div>
