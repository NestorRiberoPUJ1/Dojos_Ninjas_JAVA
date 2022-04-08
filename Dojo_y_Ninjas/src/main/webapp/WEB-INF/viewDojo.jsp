<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- para errores de renderizado en rutas PUT -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Main</title>
</head>
<body>
	<div class="container">
		<h1>
		<c:out value="${dojo.getName()}"></c:out>
		</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ninja" items="${ninjas}">
					<tr>
						<td><c:out value="${ninja.getFirst_name()}" /></td>
						<td><c:out value="${ninja.getLast_name()}" /></td>
						<td><c:out value="${ninja.getAge()}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <a href="/dojos/" class="btn btn-primary">Home dojo</a>
	</div>
</body>
</html>