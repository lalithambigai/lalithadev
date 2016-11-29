<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
 <body>



<div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
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
        <li class="current"><a href="#intro">Home</a></li>
		<li><a href="#aboutus">ABOUTUS</a></li>
		<li><a href="check">SIGNUP</a></li>
		<li><a href="LOGIN">LOGIN</a></li>
		<li><a href="add">Add</a></li>
      </ul></nav>
    </div><!-- /.navbar-collapse -->
	</div>

  </div>
</div>




<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   

   <h2>Product Details</h2>
				
				  <form:form method="POST" action="productcheck22" commandName="prod">
				  
				
					<div class="form1">
      <label for="pname">Product Name:</label>
      <input type="text" class="form-control" name="pname">
    </div>
					<div class="form2">
      <label for="pdesc">Product Desc:</label>
      <input type="text" class="form-control" name="pdesc">
    </div>
					<div class="form2">
      <label for="price">Price:</label>
      <input type="text" class="form-control" name="price">
    </div>
    
    
    	<div class="form2">
      <label for="price">Quantity:</label>
      <input type="text" class="form-control" name="quantity">
    </div>
    
    <br>
  	
					<input name="_eventId_submit" type="submit" class="btn btn-success" value="Add"/><br />
			 	</form:form>
			</fieldset>
		</div></div></div>
	</body>
</html>