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
<title>Student Info Page</title>
</head>
<body>
	<nav class="navbar navbar-light bg-primary">
		<span class="navbar-brand mb-0 h1 text-light">Student
			Management System</span>
		<form class="form-inline">
			<a href="${pageContext.request.contextPath}/home-page"
				class="btn btn-outline-light">Go Back To Home Page</a>
		</form>
	</nav>

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h4>Name: ${student.lastName},${student.firstName}</h4>
			<h4>Email: ${student.email}</h4>
			<h4>Student Id # ${student.studentId}</h4>
			<h4>Major: ${student.major}</h4>
		</div>
	</div>
</body>
</html>