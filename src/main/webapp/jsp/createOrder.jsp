<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SS RAD Final Project(Add Ship)</title>
</head>
<body>
	<form:form modelAttribute="orderAdd">
		<h1>Add Ship</h1>
		<table>
			<tr>
				<td>Ship Name:</td>
				<td>
					<select name="prodSKUs">
						<c:forEach items="${orders}" var="orders">
							<option value="${orders}">${orders}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Order Ship" /></td>
			</tr>
		</table>
		<a href="/">Home</a>
	</form:form>
</body>
</html>