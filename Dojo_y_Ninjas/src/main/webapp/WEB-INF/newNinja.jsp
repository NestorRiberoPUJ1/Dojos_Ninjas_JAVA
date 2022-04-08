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
<title>New Ninja</title>
</head>
<body>
	<div class="container">
		<h1>New Ninja</h1>

		<form:form action="/ninjas/create" method="POST"
			modelAttribute="ninja">

			<div class="form-group">
				<form:label path="first_name">First Name:</form:label>
				<form:input path="first_name" class="form-control" />
				<form:errors path="first_name" />
			</div>
			<div class="form-group">
				<form:label path="last_name">Last Name:</form:label>
				<form:input path="last_name" class="form-control" />
				<form:errors path="last_name" />
			</div>
			<div class="form-group">
				<form:label path="age">Age:</form:label>
				<form:input path="age" class="form-control" type="number" />
				<form:errors path="age" />
			</div>

			<div class="form-group">
				<form:label path="dojo">Dojo:</form:label>
				<form:select path="dojo" class="form-control">
					<c:forEach var="dojo" items="${dojos}">
						<form:option value="${dojo.getId()}">
							<c:out value="${dojo.getName()}" />
						</form:option>
					</c:forEach>
				</form:select>
				<form:errors path="dojo" />
			</div>

			<button type="submit" class="btn btn-success">Create</button>

		</form:form>
		<br> <a href="/dojos/" class="btn btn-primary">Home dojo</a>
	</div>
</body>
</html>