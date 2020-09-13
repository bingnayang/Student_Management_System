<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>Add New Student</title>
</head>
<body>
	<nav class="navbar navbar-light bg-primary mb-2">
		<span class="navbar-brand mb-0 h1 text-light">Student Management System</span>
		<form class="form-inline">
			<a href="${pageContext.request.contextPath}/home-page" class="btn btn-outline-light">Go Back To Home Page</a>
  		</form>
	</nav>
	
	<div class="container bg-light" style="padding: 15px;">
		<h5 class="text-center">Add New Student</h5>
		<form:form action="saveStudent" modelAttribute="student" method="POST">
			<div class="form-group">
				<label>First Name: </label>
				<form:input path="firstName" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Last Name: </label>
				<form:input path="lastName" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Email: </label>
				<form:input path="email" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Major: </label>
				<form:input path="major" class="form-control"/>
			</div>
			<input type="submit" value="Save" class="btn btn-primary btn-block"/>
		</form:form>
	</div>
</body>
</html>