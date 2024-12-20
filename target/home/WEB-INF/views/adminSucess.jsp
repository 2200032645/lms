<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Success Page</title>
</head>
<body bgcolor="lightgreen">
	<h1>${msg}</h1>
	<hr>
	|
	<a href="${pageContext.request.contextPath }/showLogin"> Logout</a>
	<hr>
	Hello , ${loginObj.username }
	<hr>
	Welcome , ${loginObj.role }
	<br>Congratulations!
	<hr>
	<spring-form:form action="" modelAttribute="customer">
		<spring-form:select path="appId">
			<spring-form:options items="${idList}" />
		</spring-form:select>
	</spring-form:form>
 <table border="4">
 	<tr>
 		<th>Application ID</th>
 	</tr>
 	<c:forEach items="${idList}"  var="appId">
 	<tr>
 		<td>${appId}</td>
 		<td><a href="${pageContext.request.contextPath }/admin/verifycustomer/${appId}">Verify</a></td>
 	</tr>
 	</c:forEach>
 	</table>
 </body>
</html>