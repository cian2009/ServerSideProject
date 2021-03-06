<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SS RAD Final Project (Companies)</title>
</head>
<body>

	<div align="center">
		<img src="header.png" alt="Logo">
		<table class="show">
			<tr>
				<th>Name</th>
				<th>Home Post</th>
				<th>Cost</th>
				<th>Ships</th>
			</tr>
			<c:forEach items="${companies}" var="companies">
				<tr>
					<td>${companies.name}</td>
					<td>${companies.homePort}</td>
					<td>${companies.balance}</td>
					<td>${companies.ships}</td>
				</tr>
			</c:forEach>
		</table>
		<a href="/">Home</a>
	</div>
	
</body>
</html>