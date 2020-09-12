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
<title>Update/Edit Student</title>
</head>
<body>
	<h2>Update/Edit Student</h2>
	<div class="container">
		<form:form action="saveStudent" modelAttribute="student" method="POST">
			<!-- Need to associate this form with student id -->
			<form:hidden path="studentId"/>
			
			<label>First Name: </label>
			<form:input path="firstName"/>
			<label>Last Name: </label>
			<form:input path="lastName"/>
			<label>Email: </label>
			<form:input path="email"/>
			<label>Major: </label>
			<form:input path="major"/>
			<input type="submit" value="Save"/>
		</form:form>
	</div>
	<div class="container">
		<a href="${pageContext.request.contextPath}/home-page">Go Back To Home Page</a>
	</div>
</body>
</html>