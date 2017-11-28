<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<style>
.img_resize {
	width: 380px;
	height: 250px;
}
.product-item {
}
</style>
<!DOCTYPE html>
<div class="col-md-9 col-sm-7">
	<div class="row list-view-sorting clearfix">
		<div class="col-md-2 col-sm-2 list-view">
			<a href="javascript:;"><i class="fa fa-th-large"></i></a> <a
				href="javascript:;"><i class="fa fa-th-list"></i></a>
		</div>
		<div class="col-md-10 col-sm-10">
			<div class="pull-right">
				<label class="control-label">Show:</label> <select
					class="form-control input-sm">
					<option value="#?limit=24" selected="selected">24</option>
					<option value="#?limit=25">25</option>
					<option value="#?limit=50">50</option>
					<option value="#?limit=75">75</option>
					<option value="#?limit=100">100</option>
				</select>
			</div>
			<div class="pull-right">
				<label class="control-label">Sort&nbsp;By:</label> <select
					class="form-control input-sm">
					<option value="#?sort=p.sort_order&amp;order=ASC"
						selected="selected">Default</option>
					<option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
					<option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
					<option value="#?sort=p.price&amp;order=ASC">Price (Low
						&gt; High)</option>
					<option value="#?sort=p.price&amp;order=DESC">Price (High
						&gt; Low)</option>
					<option value="#?sort=rating&amp;order=DESC">Rating
						(Highest)</option>
					<option value="#?sort=rating&amp;order=ASC">Rating
						(Lowest)</option>
					<option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
					<option value="#?sort=p.model&amp;order=DESC">Model (Z -
						A)</option>
				</select>
			</div>
		</div>
	</div>
	<!-- BEGIN PRODUCT LIST -->
	<div class="row product-list">
	
		<c:forEach var="p" items="${list}">
		<div class="col-md-4 col-sm-4 col-xs-10">
			<div class="product-item">
				<div class="pi-img-wrapper">
					<img src="img/${p.imgname}"
						class="img-responsive img_resize" alt="${p.name}">
						<!-- TODO : substring되는지 체크 -->
					<div>
						<a href="img/${p.imgname}"
							class="btn btn-default fancybox-button">Zoom</a> 
							<a href="#product-pop-up-${p.name }" class="btn btn-default fancybox-fast-view">View</a>
					</div>
				</div>
				<h3>
					<a href="#">${p.name}</a>
				</h3>
				<div class="pi-price">￦${p.price}</div>
				<c:choose>
					<c:when test="${loginuser != null}">
						<a style="width:50px;" href="purchasing.4jo?cmd=add&pid=${p.id}" class="btn btn-default add2cart">BUY</a>
					</c:when>
					<c:otherwise>
						<a style="width:50px;" href="" onclick="alert('로그인 후 이용하실 수 있습니다. ');" class="btn btn-default add2cart">BUY</a>
					</c:otherwise>
				</c:choose>
					<!-- TODO : 할 수 있으면 카트에 넣기 -->
			</div> 
		</div>
		
			<!-- BEGIN fast view of a product -->
	<div id="product-pop-up-${p.name }" style="display: none; width: 700px;">
		<div class="product-page product-pop-up">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-3">
					<div class="product-main-image">
						<img src="img/${p.imgname}"
							alt="${p.name}" class="img-responsive">
					</div>
					<div class="product-other-images">
						<a href="javascript:;"><img
							alt="${p.name}" src="img/${p.imgname }"></a>
						<a href="javascript:;"><img alt="${p.name}"
							src="img/${p.imgname }"></a> <a
							href="javascript:;"><img alt="${p.name}"
							src="img/${p.imgname }"></a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-9">
					<h1>${p.name}</h1>
					<div class="price-availability-block clearfix">
						<div class="price">
							<strong><span>￦</span>${p.price }</strong>
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
						<c:choose>
					<c:when test="${loginuser != null}">
						<button class="btn btn-primary" onclick="location.href='purchasing.4jo?cmd=add&pid=${p.id}'">BUY</button>
					</c:when>
					<c:otherwise>
						<button class="btn btn-primary" onclick="alert('로그인 후 이용하실 수 있습니다. ');">BUY</button>
					</c:otherwise>
				</c:choose>
						<a href="shop-item.html" class="btn btn-default">More details</a>
					</div>
				</div>

				<div class="sticker sticker-sale"></div>
			</div>
		</div>
	</div>
	<!-- END fast view of a product -->
		</c:forEach>
		
		<!-- PRODUCT ITEM END -->
		
	</div>
	<!-- END PRODUCT LIST -->
	<!-- BEGIN PAGINATOR -->
	<div class="row">
		<div class="col-md-4 col-sm-4 items-info">Items 1 to 9 of 10
			total</div>
		<div class="col-md-8 col-sm-8">
			<ul class="pagination pull-right">
				<li><a href="javascript:;">&laquo;</a></li>
				<li><a href="javascript:;">1</a></li>
				<li><a href="javascript:;">2</a></li>
				<li><a href="javascript:;">3</a></li>
				<li><a href="javascript:;">4</a></li>
				<li><a href="javascript:;">5</a></li>
				<li><a href="javascript:;">&raquo;</a></li>
			</ul>
		</div>
	</div>
	<!-- END PAGINATOR -->

</div>