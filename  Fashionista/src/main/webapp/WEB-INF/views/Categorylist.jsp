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

<%-- <div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
  <div class="container">

    <!-- Brand and toggle get grouped for better mobile display -->
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
		<li><a href="LOGIN">LOGIN</a></li> -->

		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="add">CATEGORY <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${lali}" var="category"> 
          <li><a commandName="prod" >${category.catname}</a></li>
          </c:forEach>
      </ul> 
      </li> 
      <ul class="nav navbar-nav navbar-right">
      <li><a href="index"><span class="glyphicon glyphicon-log-out"></span>Logout</a>      
      </li>
      </ul>
       </ul></nav>
    </div>
	</div>  </div>
</div>
<br>
<br>
<br>

      
  </div>
</div>
</nav>
  </div> --%>
  <body>
<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
<body>
<H1> List of Category</H1>

<br>
<br>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0" class="table table-striped table-hover">
		<tr>
		  
			<th>CATEGORY ID</th>
			<th>CATEGORY NAME</th>
			<th>CATEGORY DESC</th>
			
			<th>delete/edit</th>
		</tr>
		<!--  for Each book b in books -->
		<c:forEach items="${lali}" var="category">
	    <tr>
			<th>${category.cid}</th>
			<th>${category.catname}</th>
			<th>${category.catdesc}</th>
			
	    <%-- <td><a href="getproductbyid/${b.pid}" ></a></td> --%>
		 <td><a href="getcategorybyid/${category.cid}" ></a>
		<a href="admin/category/delete/${category.cid}"><span class="glyphicon glyphicon-remove"></span></a>
		<a href="admin/category/editCategory/${category.cid}"><span class="glyphicon glyphicon-pencil"></span></a>
		</td>
		</tr>
		</c:forEach>
	</table>
	</
	
</body>
</html>