<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link href="<c:url value='/resources/css/jquery.fancybox.css'/>" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/resources/assets/css/bootstrap.css'/>"/>
	<link rel="stylesheet" href="<c:url value='/resources/assets/css/bootstrap-theme.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/assets/css/slippry.css'/>">
	<link href="<c:url value='/resources/assets/color/default.css'/>" rel="stylesheet"> 
	<link href="<c:url value='/resources/assets/css/style.css'/>" rel="stylesheet" />	
    <script src="<c:url value='/resources/assets/js/modernizr.custom.js'/>" ></script>

</head>
<body>
<style>
h1 {
  text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;}
   </style>

<header>

<div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
  <div class="container">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">Cosmic Gallery</a>
    </div>

	<div class="navigation">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <nav>
    <ul class="nav navbar-nav navbar-left">
        <li class="current"><a href="index">Home</a></li>
        <li><a href="listpage">Viewproduct</a></li>
	    <li><a href="add">Addproduct</a></li>
		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="cat?catt=Lakme">Lakme</a></li>
          <li><a href="cat?catt=Olay">Olay</a></li>
          <li><a href="cat?catt=Dazler">Dazler</a></li>
           <li><a href="cat?catt=Loreal">Loreal</a></li>
           <li><a href="cat?catt=Maybelline">Maybelline</a></li>
           <li><a href="cat?catt=Dazler">Chambor</a></li>
      </ul>  
      </ul> 
      <c:if test ="${sessionScope.name eq null}">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="check">SIGNUP</a></li>
	     <li><a href="LOGIN">LOGIN</a></li>
	</ul>
     </c:if>
        <c:if test="${sessionScope.name  ne null}">
         <ul class="nav navbar-nav navbar-right">
            <h1> "Hai" ${sessionScope.name}</h1>
            <li> <a href="logout">LOGOUT</a></li>
            </ul>
            </c:if>
       </nav>
    </div>
	</div>

  </div>
</div>

</header>	   
</body>
</html>