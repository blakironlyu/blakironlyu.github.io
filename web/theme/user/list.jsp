<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<!DOCTYPE html>
<style>
@import
   url('https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css')
   ;
   td:hover{
   background: #e6400c;
   color:white;
   text-align: center;
   }
   td{
   text-align: center;
   }
   th{
   text-align: center;

   
   }
   #container{
   width:1100px;
   color:white;
   margin:0 auto;
   }
</style>
<script>
	'use strict';
	var $ = jQuery;
	 $.getScript("https://cdn.datatables.net/v/dt/dt-1.10.13/datatables.min.js", function() {

		$('#example').DataTable({
			"paging" : true,
			"ordering" : true,
			"info" : false
		});
	}); 

</script>
<div id="container">
	<table id="example" class="display" cellspacing="0">
		<thead>
			<tr>
				<th>ID</th>
				<th>PWD</th>
				<th>Name</th>
				<th>Birthdate</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>ID</th>
				<th>PWD</th>
				<th>Name</th>
				<th>Birthdate</th>
			</tr>
		</tfoot>
		<!-- 사용자id (키)             USERID
			비밀번호                   PWD
			이름                          NAME
			생년월일                   BDATE -->
		<tbody>
		<c:forEach var="u" items="${list }">
			<tr>
				<td>${u.id }</td>
				<td>${u.pwd }</td>
				<td>${u.name }</td>
				<td>${u.bdate }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>