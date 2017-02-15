<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<%@ include file="/WEB-INF/views/adminheader.jsp" %> 
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
background-image: url("<c:url value='/resources/imag/m2.jpg'/>");
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
  h2 {
        color: #00FF00;
}
</style> 
</head>
<body>
<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
      
   <br>
   <br>
   <br>
   <br>
   <H2>Cart Details</H2>
  <form:form method="POST" action="addUserr" commandName="lallii">
				 
				
					<div class="form">
      <label for="cartitem_id">CartItem Id:</label>
      <input type="text" class="form-control" name="cartitem_id">
    </div>
					<div class="form">
      <label for="cartitem_quantity">CartItem Quantity:</label>
      <input type="text" class="form-control" name="cartitem_quantity">
    </div>
					<div class="form">
      <label for="cartitem_totalprice">CartItem Totalprice:</label>
      <input type="text" class="form-control" name="cartitem_totalprice">
    </div>
    
                  
    <br>
     
    <br>
    <br>
   <!-- <!--  <td>
    <input type="file"  value="upload" name="files">
     </td> --> 
     <br>
    	<input name="_eventId_submit" type="submit" class="btn btn-success" value="Add to Cart"/><br />
			 	</form:form>
			</div></div></div>
	</body>
</html>