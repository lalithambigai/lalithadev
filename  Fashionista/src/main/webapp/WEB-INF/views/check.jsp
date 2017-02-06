<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<%@ include file="/WEB-INF/views/Header.jsp" %> 
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
background-image: url("<c:url value='/resources/imag/m3.jpg'/>");
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
            <h2>Registration</h2>
			   <form:form method="POST"  action="addUser" commandName="lalli">
				 
				 
				   
 <div class="form">
        <label for="username">UserName:</label>
        <input type="text" class="form-control" name="username" pattern="[A-Za-z]+" title="only letters" required />
         </div>
		
		
		<div class="form">
<label for="Email">Email:</label>
<input type="email" class="form-control" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="xyz@something.com" required />
</div>	

<div class="form">
<label for="password">Password:</label>
<input type="password" class="form-control" name="password"    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters" id="txtPassword" required="true" />
</div>
  
<div class="form">
      <label for="conform_password">Conform Password:</label>
      <input type="password" class="form-control" name="password_confirm" id="txtConfirmPassword" onkeyup="checkPass()">
   </div>
    


	
    <br>
     <!-- <input class="button" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> --> 	 
       <input name="_eventId_submit" type="submit" id="btnSubmit" class="btn btn-success" value="Sign me up!"/><br />
				 <!-- <input name="_eventId_submit" type="submit" value="Submit" /><br /> -->
					     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#txtPassword").val();
            var confirmPassword = $("#txtConfirmPassword").val();
            if (password != confirmPassword) {
                alert("Password do not match.");
                return false;
            }
            return true;
        });
    });
</script>
				
				</form:form>
		</div></div></div>
	</body>
</html>






 
	 
	 
    
				 
				 
				 
	<!-- 			 
      <label for="userName">UserName:</label>
     <!--  <input id="field_username" title="Username must not be blank and contain only letters, numbers and underscores." type="text" required pattern="\w+" name="username">
       <input type="text"  title="Username must not be blank and contain only letters, numbers and underscores." class="form-control" name="username"  required  pattern="\w+" placeholder="Enter user name"> 
    </div> -->
					<!-- <div class="form1">
      <label for="email">Email:</label>
      <input type="email" class="form-control" name="email" required  placeholder="Enter the email">
    </div> -->
					<!-- <div class="form2">
      <label for="password">Password:</label>
      <input type="password" class="form-control" name="password" required placeholder="Enter the password">
    </div> --><!-- 
					<div class="form2">
      <label for="conform_password">Conform Password:</label>
      <input type="password" class="form-control" name="password_confirm" required placeholder="Enter the Confirm password">
    </div>
     -->