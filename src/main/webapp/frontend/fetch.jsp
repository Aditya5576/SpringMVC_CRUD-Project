<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h1>Employee Data</h1>

		<table border="2" cellpadding="7px" cellspacing="5px">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Domain</th>
				<th>Email</th>
				<th>Salary</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>


			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.name }</td>
					<td>${emp.mobile}</td>
					<td>${emp.domain }</td>
					<td>${emp.email }</td>
					<td>${emp.salary }</td>
					<td><a href="delete?id=${emp.id}" style="color: green;"><button>Delete</button></a></td>
					<td><a href="edit?id=${emp.id}"><button>Edit</button></a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="/MVC_CRUD"><button>Back</button></a>

	</div>

</body>
</html>