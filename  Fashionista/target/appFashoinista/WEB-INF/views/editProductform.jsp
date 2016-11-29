<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/product/editProductbyid/" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editproductobj">
		<table>
		<tr>
			<td><form:label path="pid">Pid</form:label></td>
			<td><form:input path="pid" disabled="true"/>
			<form:hidden path="pid" /></td>
        </tr>
        <tr>
        <td><form:label path="pname">Pname</form:label>  </td>
        <td><form:input path="pname"></form:input></td>
	    </tr>
	    
	    
	    <tr>
        <td><form:label path="pdesc">Pdesc</form:label>  </td>
        <td><form:input path="pdesc"></form:input></td>
	    </tr>
	    
	     <tr>
        <td><form:label path="price">Price</form:label>  </td>
        <td><form:input path="price"></form:input></td>
	    </tr>
	    
	    <tr>
        <td><form:label path="quantity">Quantity</form:label>  </td>
        <td><form:input path="quantity"></form:input></td>
	    </tr>
	     <tr>
	    <td colspan="2"><input type="submit" value="edit"></td>
	    </tr>
		</table>
	</form:form>
</body>
</html>