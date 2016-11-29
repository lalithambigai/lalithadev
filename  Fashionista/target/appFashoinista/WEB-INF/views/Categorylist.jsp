<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>


<html>
<head>
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
<H1> List of Category</H1>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0" class="table table-striped table-hover">
		<tr>
		  
			<th>CATEGORY ID</th>
			<th>CATEGORY NAME</th>
			<th>CATEGORY DESC</th>
			
			<th>View/edit/delete</th>
		</tr>
		<!--  for Each book b in books -->
		<c:forEach items="${lali}" var="category">
	    <tr>
			<th>${category.cid}</th>
			<th>${category.catname}</th>
			<th>${category.catdesc}</th>
			
	    <%-- <td><a href="getproductbyid/${b.pid}" ></a></td> --%>
		 <td><a href="getcategorybyid/${category.cid}" ><span class="glyphicon glyphicon-info-sign"></span></a>
		<a href="admin/category/delete/${category.cid}"><span class="glyphicon glyphicon-trash"></span></a>
		<a href="admin/category/editCategory/${category.cid}"><span class="glyphicon glyphicon-edit"></span></a>
		</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>