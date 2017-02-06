<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>





<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>product</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  <!-- <style>
body
{
background-image: url("<c:url value='/resources/image/m3.jpg'/>");
  background-repeat: no-repeat; 
background-size:cover; 
} 
</style> -->
</head>


<body data-target=".navbar">
<div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <div class="navbar-header">
     <div class="navbar-brand">Women Accessories World</div>
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
      <li class="active"><a href="aboutas">About us</a></li>
      
      
        
   <li class="active"><a href="productpage">Product</a></li>
        
        
        <!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categorys <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="bangle">Bangles</a></li>
          <li><a href="bracelet">Bracelet</a></li>
        
        <li><a href="rings">Rings</a></li>
      </ul>   --> 
<!-- </ul>
</li> 
    -->
     
    
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${priy}" var="category"> 
          <li><a commandName="cat" href="categorypage?id=${category.fid}">${category.name}</a></li>
          </c:forEach>
      </ul> 
      </li>    
</ul>
</li><ul class="nav navbar-nav navbar-right">
    
     <c:if test="${pageContext.request.userPrincipal.name == null}">
   
      <li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Signup </a></li>
       <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    
    <li><security:authorize access="hasRole('ROLE_ADMIN')">
    
    <li><a href="admin"><span class="glyphicon glyphicon-log-in"></span> AdminLogin</a></li>
    </security:authorize></li>
          
</c:if>
<li>
<form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
              <h5 style=color:white>Welcome ${pageContext.request.userPrincipal.name} 
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h5> 
                <li><a href="cartpage"><span class="fa fa-shopping-cart"></span> cart</a></li>
    
                 </c:if> 
        
        </li>
    </ul>
    
  </div>

</div>
</nav>
  </div>
<div class="container">
<center><h1>SHIPPING DETAILS</h1></center>
 

 	<form:form action="./pay" commandName="ship" method="post">		 
 <div class="form">
      <label for="UserName">NAME:</label>
      <form:input type="text" class="form-control" path="sname" placeholder="Enter user name" required="true"/>
    </div></br>
    <div class="form-group">
  <label for="address">ADDRESS:</label>
  <form:textarea class="form-control" rows="5" placeholder="Enter the address" path="address" required="true"/>
</div>
    </br>
             
<div class="form">
      <label for="Email">EMAIL:</label>
      <form:input type="email" class="form-control" path="email" placeholder="Enter email" required="true"/>
    </div></br>
			<div class="form">
      <label for="Phone">Phone No:</label>
      <form:input type="number" path="number" placeholder="Enter phone number" class="form-control" pattern="[0-9]{3,}" title="not allowed character" required="true"/>
    </div></br></br>
			<input type="submit" class="btn  btn-success ribbon" value="Submit" /><br />
			
			</form:form>
			
			
			<!--  <a class="btn btn-success" href="pay">SUBMIT</a></button>
			 -->
			<%-- <button style="align:center" class="btn btn-md btn-success btn-block signup-btn"
									name="_eventId_submit" type="submit" value="Submit" >Submit</button></div></center></div>
 --%>
</div>
</div>
</div>
</div>
</body>
</html>







</body>
</html>