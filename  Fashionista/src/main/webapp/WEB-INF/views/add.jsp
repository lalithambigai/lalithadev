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
   <H2>Product Details</H2>
  <form:form method="POST" action="productcheck" commandName="prod" enctype="multipart/form-data" style="border-top-width: 100px;height: 500px; width: 600px; padding-top: 100px; padding-bottom: 100px;left: 100px; top: 100px;">
				 
				
					<div class="form">
      <label for="pname">Product Name:</label>
      <input type="text" class="form-control" name="pname">
    </div>
					<div class="form">
      <label for="pdesc">Product Desc:</label>
      <input type="text" class="form-control" name="pdesc">
    </div>
					<div class="form">
      <label for="price">Price:</label>
      <input type="text" class="form-control" name="price">
    </div>
    
                   <div class="form">
      <label for="quantity">Quantity:</label>
      <input type="text" class="form-control" name="quantity">
    </div>
  
    <br>
     <tr>
       <td><form:label path="category">Category:</form:label></td>
       <td><form:select path="category"  id="single1">
         <option>Lakme</option>
          <option>Olay</option>
          <option>Dazler</option>
           <option>Loreal</option>
            <option>Maybelline</option>
               <option>Chambor</option>
       </form:select></td>
    </tr>
    <br>
    <br>
    <td>
    <input type="file"  value="upload" name="files">
     </td>
     <br>
    	<input name="_eventId_submit" type="submit" class="btn btn-success" value="Add"/><br />
			 	</form:form>
			</div></div></div>
	</body>
</html>