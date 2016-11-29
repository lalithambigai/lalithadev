<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>categories</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  <style>
   .item div
  {
  display:inline;
  } 
  
  </style>
</head>
<body data-target=".navbar">
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <div class="navbar-header">
      <div class="navbar-brand">Fashion World</div>
    </div>
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
      <li class="active"><a href="pro">Home</a></li>
      <li class="active"><a href="aboutas">Abouts</a></li>
   
   
      <li class="active"><a href="images">Contact</a></li>
      
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${lali}" var="category"> 
          <li><a commandName="cat" href="categorypage?id=${category.fid}">${category.name}</a></li>
          </c:forEach>
      </ul> 
      </li> 
     <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="bangle">Bangles</a></li>
          <li><a href="bracelet">Bracelet</a></li>
      
        <li><a href="rings">Rings</a></li>
      </ul>  --> 

</ul>
</li>
    <ul class="nav navbar-nav navbar-right">
     
      <li><a href="pro"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</div>
</nav>
  </div>

      <div class="section" id="show">
      <div class="container">
    
    <div id="products" class="item">
              
          <div class="row">
                
<c:forEach items="${prodLt}" var="p">
 
<div class="col-sm-4">
<div class="box">
<img src="<c:url value="${p.imgs}"/>" width="200px" height="150px"/>

                   
                        
                           <h3>${p.name}</h3>
                              <p>${p.desc}</p>

                                <p>Rs.${p.price}</p>
                            
                     
                           <button class="btn btn-success"><a commandName="prod3" href="addToCart?id=${p.fid}">Add To Cart</a> </button>
</div></div></c:forEach></div>
                   
            
</body>
</html>