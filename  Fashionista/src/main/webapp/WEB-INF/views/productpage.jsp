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
</style>
</head>
<body>


<!-- <div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
  <div class="container">

    Brand and toggle get grouped for better mobile display
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
	<li><a href="check">SIGNUP</a></li>
		<li><a href="LOGIN">LOGIN</a></li>
		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
        <ul class="dropdown-menu">
           <li><a href="cat?catt=Lakme">Lakme</a></li>
          <li><a href="cat?catt=Olay">Olay</a></li>
          <li><a href="cat?catt=Dazler">Dazler</a></li>
           <li><a href="cat?catt=Loreal">Loreal</a></li>
            <li><a href="cat?catt=Maybelline">Maybelline</a></li>
      </ul> 
       </ul></nav>
    </div>
	</div> 

  </div>
</div> 
 -->
<br>
<br>
<br>
<br>
<br>


<img src="<c:url value = "/resources/image/${showobjj.getPid()}.jpg"/>"/>

<br>
<br>
productname: ${showobjj.pname}<br><br>  <%-- ${showobjj.pdesc}<br><br> --%>
price: ${showobjj.price}<br><br>
<br>
<br>
<input name="_eventId_submit" type="submit" class="btn btn-success" value="Add to cart"/><br />
<br>
<input name="_eventId_submit" type="submit" class="btn btn-primary" value="Buynow"/><br />
</body>
</html>