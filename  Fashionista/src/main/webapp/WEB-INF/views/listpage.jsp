<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>


<html>
<head>
<%@ include file="/WEB-INF/views/adminheader.jsp" %> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	
	 <style>
body
{
background-image: url("<c:url value='/resources/image/bg18.jpg'/>");
  background-repeat: no-repeat; 
background-size:cover; 
} 
</style>
</head>
<body>
<!-- 
<!-- 
<!-- <!-- 
<div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
  <div class="container">

    Brand and toggle get grouped for better mobile display
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">Fashionista</a>
    </div>

	<div class="navigation">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><nav>
      <ul class="nav navbar-nav navbar-right">
        <li class="current"><a href="index">Home</a></li>
		<!-- <li><a href="check">SIGNUP</a></li>
		<li><a href="LOGIN">LOGIN</a></li>
  -->
<br>
<br>

	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<style>
h1 {
  text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;}
  
  </style>
</head>
<body>
<br>
<br>
<br>
<H2> List of Products</H2>
<!-- <table class="table" border="2"> -->
	 <table border="2" class="table table-striped table-hover"> 
		<tr> 
		  
			<th>PRODUCT ID</th>
			<th>PRODUCT NAME</th>
			<th>PRODUCT DESC</th>
			<th>PRICE</th>
			<th>QUANTITY</th>
			<th>CATEGORY</th>
			<th>edit/delete</th>
		</tr>
		<!--  for Each book b in books -->
		<c:forEach items="${lobj}" var="b">
	    <tr>
			<th>${b.pid}</th>
			<th>${b.pname}</th>
			<th>${b.pdesc}</th>
			<th>${b.price}</th>
	        <th>${b.quantity}</th>
	        <th>${b.category}</th>
	  
		<td><a href="getproductbyid/${b.pid}" ></a>
		<a href="admin/product/editProduct/${b.pid}"><span class="glyphicon glyphicon-pencil"></span></a>
		<a href="admin/product/delete/${b.pid}"><span class="glyphicon glyphicon-remove"></span></a>
		</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>