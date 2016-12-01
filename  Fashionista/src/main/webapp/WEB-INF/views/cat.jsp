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
	<style>
h1 {
  text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;}
  
  </style>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<H2> List of Categories</H2>

<table border="2" class="table table-striped table-hover"> 
<tr> 
  <th>PRODUCT NAME</th>
   <th>PRODUCT DESC</th>
   <th>PRICE</th>
   <th>QUANTITY</th>
   <th>VIEW</th>
</tr>
<c:forEach items="${prot}"  var="catt">
 <tr>
      <th>${catt.getPname()}</th>
      <th>${catt.getPdesc()}</th>
      <th>${catt.getPrice()}</th>
     <th>${catt.getQuantity()}</th>
 <td><a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
  </td>
 </tr> 
</c:forEach>
</table>
</body>
</html>