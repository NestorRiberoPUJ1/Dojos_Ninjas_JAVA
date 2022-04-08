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
		<h1>Dojos</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dojo" items="${dojos}">
					<tr>
						<td><c:out value="${dojo.getName()}"/></td>
						<td><a href="/dojos/${dojo.getId()}" class="btn btn-warning">Ver Dojo</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<a href="/dojos/create" class="btn btn-primary">Create dojo</a>
		<a href="/ninjas/create" class="btn btn-primary">Create ninja</a>
	</div>
</body>
</html>