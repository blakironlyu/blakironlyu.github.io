<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<!DOCTYPE html>
<style>
.container_hlist {
	margin: 50px 100px;
}
.container_hlist > h1{
	margin-bottom: 30px;
}
</style>
<div class="container_hlist">
	<h1>Purchase History</h1>
	<div class="goods-page">
		<div class="goods-data clearfix">
			<div class="table-wrapper-responsive">
				<table summary="Shopping cart">
					<tr>
						<th class="goods-page-image">Image</th>
						<th class="goods-page-description">Description</th>
						<th class="goods-page-stock">Date</th>
						<th class="goods-page-price" colspan="2">Unit price</th>
					</tr>
					<c:forEach var="p" items="${list}">
					<tr>
						<td class="goods-page-image"><a href="javascript:;"><img
								src="img/${p.imgname}"
								alt="${p.name }"></a></td>
						<td class="goods-page-description">
							<h3>
								<a href="j#">${p.name}</a>
							</h3>
							<!-- <p>
								<strong>Item 1</strong> - Color: Green; Size: S
							</p> <em>More info is here</em> -->
						</td>
						<td class="goods-page-stock">${p.pdate}</td>
						<td class="goods-page-price"><strong><span>￦</span>${p.price}</strong>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
