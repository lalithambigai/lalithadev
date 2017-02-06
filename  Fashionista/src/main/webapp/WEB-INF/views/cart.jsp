<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<td>${pd.product.name} <%-- <form:hidden path="product" value="${pd.product}"/> --%> </td>
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

