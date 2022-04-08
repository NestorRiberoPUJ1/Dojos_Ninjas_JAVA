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
<title>New Dojo</title>
</head>
<body>
	<div class="container">
		<h1>New Dojos</h1>

		<form:form action="/dojos/create" method="POST" modelAttribute="dojo">

			<div class="form-group">
				<form:label path="name">Name:</form:label>
				<form:input path="name" class="form-control" />
				<form:errors path="name" />
			</div>

			<button type="submit" class="btn btn-success">Create</button>

		</form:form>
		<br> <a href="/dojos/" class="btn btn-primary">Home dojo</a>
	</div>
</body>
</html>