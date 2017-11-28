<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
#container_chart{
margin-top: 140px;
margin-bottom: 140px;
width:100%;
height:600px;
}
body {
    margin: 0;
    font-family: 'Lato', sans-serif;
}

.overlay {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
    overflow-x: hidden;
    transition: 0.5s;
}

.overlay-content {
    position: relative;
    top: 25%;
    width: 100%;
    text-align: center;
    margin-top: 30px;
}

.overlay a {
    padding: 8px;
    text-decoration: none;
    font-size: 36px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
    color: pink;
}

.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}
</style>
<script>
function charts(data) {
	Highcharts.chart('container_chart', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: 'Monthly-Item'
	    },
	    subtitle: {
	        text: 'Source: Survey'
	    },
	    xAxis: {
	        categories: [
	            'Jan',
	            'Feb',
	            'Mar',
	            'Apr',
	            'May',
	            'Jun',
	            'Jul',
	            'Aug',
	            'Sep',
	            'Oct',
	            'Nov',
	            'Dec' 
	        ],
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: '갯수'
	        }
	    },
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0;font-size:13px;">{series.name}: </td>' +
	            '<td style="padding:0;font-size:13px;width:50px;"><b>{point.y:.0f}개</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        }
	    },
	    series: data
	});
	
};

function requestData() {
	$.ajax({
		url : 'chart.4jo?cmd=get',
		success : function(data) {
			charts(data);
		},
		error : function() {
			alert('error');
		}
	});
};
$(document).ready(function() {
		 requestData();
		 });
		 
		 
function openNav() {
    document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
    document.getElementById("myNav").style.width = "0%";
}		 

</script>
</head>

<body>
	<div id="container_chart"></div>
</body>