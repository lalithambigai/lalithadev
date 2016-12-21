<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/views/Header.jsp" %> 
  <title>B</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  
<style>
 body
{
background-image: url("<c:url value='/resources/images/bg19.jpg'/>"); 
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
background-color:pink;
padding:40px;
margin:40px;
}
</style>
</head>

<body>
<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   
<div id="a">
<br>
<br>
<br>
<br>
 <h3>Login Page</h3>
  <form action="Signin" method="post">
   
   
   
 <%--   
   <form:form method="post" modelAttribute="userForm" action="Signin">
	<c:set var="nameHasBindError">
		<form:errors path="name"/>
	</c:set>

	<div class="form-group ${not empty nameHasBindError?"has-error":""}">
		<label>Name</label>
		<form:input path="name" type="text" id="name" />
		${nameHasBindError}
	</div>
</form:form>
 --%>   
      <c:if test="${not empty error}">  
            <h2><left>Enter Details</left></h2>
                <div class="error" style="color: red;">${error}</div>
                </c:if>  
 <div class="form">
      <label for="UserName">Username:</label>
      <input type="text" class="form-control" name="username"  required placeholder="Enter user name">
    </div>
    <div class="form2">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password"  required  placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox">Remember me</label>
    </div>
     <input name="_eventId_submit" type="submit" id="btnSubmit" class="btn btn-success" value="Submit"/><br />
          
  <!--       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function ()
        		{
            var username = $("#txtUsername").val();
            var password = $("#txtPassword").val();
           
          {
        	  alert("valid details");
                return true;
          }
           
          alert("invalid details");
            return false;
          });
    });
</script>   -->
     
  </form>
</div></div>
</div></div>
</body>
</html>
