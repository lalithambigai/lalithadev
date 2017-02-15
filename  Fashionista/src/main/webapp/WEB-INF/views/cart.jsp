<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>In Cart</h4>
<table class="table">
<h5>${modi}</h5>
<thead>
<tr class="info">
<th>Image</th>
<th>Name</th>
<th>Quantity</th>
<th>Price per unit</th>
<th>Price</th>
<th></th>
</tr>
</thead>
<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
<tbody>
<tr>
<form:form action="./updateItem?id=${pd.product.fid}" commandName="lalli" method="post">
<td><form:hidden path="itemId" value="${pd.itemId}"/>  <img src="<c:url value="${pd.product.imgs}"/>" height="80px" width="50px"></td>
<td>${pd.product.name} <form:hidden path="product" value="${pd.product}"/> </td>
<td> ${pd.quantity}</td>
<td>Rs.${pd.product.price}</td>
<td>Rs.${pd.product.price*pd.quantity}</td>
<!-- <td><input type="submit" class="btn link" value="update"/>
</td> -->
<td><a commandName="item" href="deleteItem?id=${pd.itemId}">Delete</a></td>
<td></td>
</form:form>
</tr>
</tbody>
</c:forEach>
<tr class="info">
<td colspan="4" align=right><strong>Total Price</strong></td>
<td>Rs.${totalPrice}</td>
<td></td>
<tr>
</table>
<div align="center">
<button class="btn btn-success"><a href="productpage" style="color:white">Continue Shopping</a></button>
<button class="btn btn-success"><a href="ShippingForm" style="color:white">Order Now</a></button>
</div>
<div align="right">
</div>
</body>
</html>

 --%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
background-image: url("<c:url value='/resources/imag/bg18.jpg'/>");
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
<H2> List of Products</H2>
<table border="2" class="table table-striped table-hover"> 
		<tr> 
		  
			<th>CartItem ID</th>
		     <th>CartItem Quantity</th>
	         <th>CartItem TotalPrice</th>
			<th>View</th>
		</tr>
		<!--  for Each book b in books -->
		<c:forEach items="${prott}" var="cott">
	    <tr>
			 <th>${cott.getCartitem_id()}</th>
      <th>${cott.getCartitem_quantity()}</th>
      <th>${cott.getCartitem_totalprice())}</th>
   
	       
		<td><a href="getcartbyid?cartitem_id=${cott.cartitem_id}"></a>
	
		</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>