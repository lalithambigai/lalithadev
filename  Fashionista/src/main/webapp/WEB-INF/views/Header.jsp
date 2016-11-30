<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page isELIgnored="false" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    </head>
<body>
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
      <a class="navbar-brand" href="index.html">COSMIC GALLERY</a>
    </div>
    <div class="navigation"><nav>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
       <li class="current"><a href="index">Home</a></li>
	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="cat?catt=Lipstick">Lipstick</a></li>
          <li><a href="cat?catt=Maskara">Maskara</a></li>
          <li><a href="cat?catt=Eyeliner">Eyeliner</a></li>
           <li><a href="cat?catt=kajal">Kajal</a></li>
         </ul>  
    </li> 
       
    <c:if test ="${sessionScope.name eq null}">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="check">SIGNUP</a></li>
	     <li><a href="LOGIN">LOGIN</a></li>
	</ul>
	</c:if>
	 </ul> 
     <c:if test="${sessionScope.name  ne null}">
         <ul class="nav navbar-nav navbar-right">
         <h1> "Hai" ${sessionScope.name}</h1>
            <li> <a href="logout">LOGOUT</a></li> 
         </ul>
       </c:if>
      </div>
      </nav>
	</div>
  </div>
</div>
</header>
</body>
</html>