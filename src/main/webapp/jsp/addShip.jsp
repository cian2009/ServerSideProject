<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SS RAD Final Project(Add Ship)</title>
</head>
<body>
	<form:form modelAttribute="Ship">
		<h1>Add Ship</h1>
		<table>
			<tr>
				<td>Ship Name:</td>
				<td><form:input path="name"></form:input></td>
				<td>Passangers:</td>
				<td><form:input path="passengers"></form:input></td>
				<td>Cost:</td>
				<td><form:input path="cost"></form:input></td>
				<td>Metres:</td>
				<td><form:input path="metres"></form:input></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
		<a href="/">Home</a>
	</form:form>
</body>
</html>