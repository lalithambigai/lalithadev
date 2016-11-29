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
 
	 <style>
body
{
background-image: url("<c:url value='/resources/image/m2.jpg'/>");
  background-repeat: no-repeat; 
background-size:cover; 
} 
form
{

width:400px;
background-color:white;
padding:40px;
margin:40px;
}
fieldset
{

width:500px;
/* background-color:pink;
 */padding:40px;
margin:40px;
}
span
{
color:red;
}
</style> 
</head>
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
        <li class="current"><a href="index">Home</a></li>
		<li><a href="#aboutus">ABOUTUS</a></li>
		<li><a href="check">SIGNUP</a></li>
		<li><a href="LOGIN">LOGIN</a></li>
		
      </ul></nav>
    </div><!-- /.navbar-collapse -->
	</div>

  </div>
</div>




<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   

   <h2>Category Details</h2>
				
				  <form:form method="POST" action="productcheck1" commandName="prod">
				 
				 
				  <div class="form">
      <label for="cid">Category Id:</label>
      <input type="text" class="form-control" name="cid">
    </div>
				 
					<div class="form">
      <label for="catname">Category Name:</label>
      <input type="text" class="form-control" name="catname">
    </div>
					<div class="form">
      <label for="catdesc">Category Desc:</label>
      <input type="text" class="form-control" name="catdesc">
    </div>
	
    
    <br>
  	
					<input name="_eventId_submit" type="submit" class="btn btn-success" value="Add"/><br />
			 	</form:form>
			</fieldset>
		</div></div></div>
	</body>
</html>