<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<!-- 	CSS File -->
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"> --%>
<title>Home Page</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light mb-2">
		<span class="navbar-brand mb-0 h1">Student Management System</span>
	</nav>

 	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Student #</th>
					<th scope="col">Name</th>
					<th scope="col">Major</th>
				</tr>
			</thead>
			<tbody>
 			<c:forEach var="tempStudent" items="${students}">
				<tr>
					<td>${tempStudent.studentId}</td>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.email}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>