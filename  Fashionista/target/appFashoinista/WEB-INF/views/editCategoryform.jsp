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
<c:url value="/admin/category/editCategorybyid/" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editcategoryobj">
		<table>
		<tr>
			<td><form:label path="cid">Cid</form:label></td>
			<td><form:input path="cid" disabled="true"/>
			<form:hidden path="cid" /></td>
        </tr>
        <tr>
        <td><form:label path="catname">Catname</form:label>  </td>
        <td><form:input path="catname"></form:input></td>
	    </tr>
	    
	    
	    <tr>
        <td><form:label path="catdesc">Catdesc</form:label>  </td>
        <td><form:input path="catdesc"></form:input></td>
	    </tr>
	 
	    <td colspan="2"><input type="submit" value="edit"></td>
	    </tr>
		</table>
	</form:form>
</body>
</html>