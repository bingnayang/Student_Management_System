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
		<input type="button" value="Add New Student" onclick="window.location.href='formAddNewStudent';return false;"/>
	</div>
 	<div class="container">
		<table class="table">
			<thead>
				<tr>
<!-- 					<th scope="col">Student #</th> -->
					<th scope="col">Fist Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Major</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
 			<c:forEach var="tempStudent" items="${students}">
 				<!-- Construct an "update" link with student Id -->
 				<c:url var="updateLink" value="/showFormForUpdate">
 					<c:param name="studentId" value="${tempStudent.studentId}"/>
 				</c:url>
 				<!-- Construct an "delete" link with student Id -->
 				<c:url var="deleteLink" value="/forDelete">
 					<c:param name="studentId" value="${tempStudent.studentId}"/>
 				</c:url>
 				
				<tr>
<%-- 					<td>${tempStudent.studentId}</td> --%>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.lastName}</td>
					<td>${tempStudent.email}</td>
					<td>${tempStudent.major}</td>
					<td>
						<a href="${updateLink}">Update</a> | 
						<a href="${deleteLink}"
							onclick="if(!(confirm('Are your sure you want to delete this student?'))) return false"
						>Delete</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>