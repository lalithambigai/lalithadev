<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<div  align="center" >
<table border="1" cellpadding="5">
<H1>list of categories</H1>
 <tr>
   <th>PRODUCT NAME</th>
   <th>PRODUCT DESC</th>
   <th>PRICE</th>
   <th>QUANTITY</th>
  <th>VIEW</th>
</tr>

<c:forEach var="catt" items="${prot}">
<tr>
       <td>${catt.getPname()}</td>
       <td>${catt.getPdesc()}</td>
      <td>${catt.getPrice()}</td>
     <td>${catt.getQuantity()}</td>
 <td><a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
  </td>
    </tr> 
</c:forEach>

</table></div>
</body>
</html>