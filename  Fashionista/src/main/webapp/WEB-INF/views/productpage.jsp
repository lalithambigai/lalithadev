<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
<%@ include file="/WEB-INF/views/Header.jsp" %>  
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
background-image: url("<c:url value='/resources/imag/bg17.jpg'/>");
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
<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   
 


<br>
<br>
<br>
<br>
<br>


<img src="<c:url value = "/resources/image/${showobjj.getPid()}.jpg"/>"/>

<br>
<br>
productname: ${showobjj.pname}<br><br>  <%-- ${showobjj.pdesc}<br><br> --%>
Rs:${showobjj.price}
<br><br>
<br>
<br>
<input name="_eventId_submit" type="submit" class="btn btn-success" value="Add to cart"/><br />
<br>
<input name="_eventId_submit" type="submit" class="btn btn-primary" value="Buynow"/><br />
</div></div></div>
</body>
</html>