<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<header>
       <div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
        <div class="container">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">Cosmic gallery</a>
 </div>
     <div class="navigation">
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><nav>
     <ul class="nav navbar-nav navbar-right">
        <li class="current"><a href="index">Home</a>
        <li><a href="listpage">Viewproduct</a></li>
	    <li><a href="add">Addproduct</a></li>
	    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="category">Categories<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="categories">Lakme</a></li>
        <li><a href="categories">olay</a></li>
        <li><a href="categories">dazler</a></li>
        </ul>
        </li>	
	    <ul class="nav navbar-nav navbar-right">
         <li><a href="index"><span class="glyphicon glyphicon-log-out"></span>Logout</a>      
         </li>
         </ul></header>
</body>
</html>