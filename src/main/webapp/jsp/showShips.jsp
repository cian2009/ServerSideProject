<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SS RAD Final Project (Ships)</title>
</head>
<body>

	<div align="center">
		<img src="header.png" alt="Logo">
		<table class="show">
			<tr>
				<th>Name</th>
				<th>Passengers</th>
				<th>Cost</th>
				<th>Length(Metres)</th>
				<th>Shipping Company</th>
			</tr>
			<c:forEach items="${ships}" var="ships">
				<tr>
					<td>${ships.name}</td>
					<td>${ships.passengers}</td>
					<td>${ships.cost}</td>
					<td>${ships.metres}</td>
					<td>${ships.shippingCompany.name}</td>
				</tr>
			</c:forEach>
		</table>
		<a href="/">Home</a>
	</div>

	
</body>
</html>