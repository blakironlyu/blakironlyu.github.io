<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>
@import url('https://fonts.googleapis.com/css?family=Great+Vibes');

body{
 background-color: rgb(0,0,0);
 background-color: rgba(0,0,0, 0.9);
color:silver;
width:100%;

}
.wrapper {    
	margin-top: 110px;
	margin-bottom: 30px;
}

.form-signin {
  max-width: 500px;
  padding: 30px 38px 66px;
  margin: 0 auto;
  
  }

.form-signin-heading {
  text-align:center;
  margin-bottom: 30px;
}

.form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
}

input[type="text"] {
  margin-bottom: 0px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
opacity:0.5;
}

input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  opacity:0.5;
}
input[type="text"]:focus{
color:white;
background:#555555;
opacity:0.7;
}
input[type="password"]:focus{
color:white;
background:#555555;
opacity:0.7;
}
#log1{
background:black;
border : 1px solid #555555;
color:white;
font-family: 'Great Vibes', cursive;
font-size:25px;

}
#log1:hover{
background:#555555;
}
#log2{
font-size:70px;
font-family: 'Great Vibes', cursive;

}
#log2:hover{
color:#996666;
}
</style>
<div class = "container">
	<div class="wrapper">
		<form action="" method="post" name="Login_Form" action="login" class="form-signin">       
		    <h3 class="form-signin-heading" id="log2">Welcome!</h3>
			  <hr class="colorgraph"><br>
			  
			  <input type="text" class="form-control" name="id" placeholder="ID" required autofocus="autofocus"/>
			  <input type="password" class="form-control" name="pwd" placeholder="Password" required/>     		  
			 
			  <input class="btn btn-lg btn-primary btn-block"  name="submit" value="Login" type="submit" id="log1">  			
		</form>			
	</div>
</div>