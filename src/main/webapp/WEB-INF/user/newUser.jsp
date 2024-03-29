<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New User</title>
</head>
<body>

	<h1 style="text-align: center;">Create New User Page</h1>
	<form:form action="/registration" method="post" modelAttribute="user">
		<table>
			<tr>
				<td><form:label path="firstName">First Name: </form:label> <form:errors
						path="firstName" /> <form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name: </form:label> <form:errors
						path="lastName" /> <form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="email">E-mail Address: </form:label> <form:errors
						path="email" /> <form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Address: </form:label> <form:errors
						path="address" /> <form:input path="address" /></td>
			</tr>
			<tr>
				<td><form:label path="phoneNumber">Phone Number: </form:label>
					<form:errors path="phoneNumber" /> <form:input path="phoneNumber" />
				</td>
			</tr>
			<tr>
				<td><form:label path="ssn">Social Security Number: </form:label>
					<form:errors path="ssn" /> <form:input path="ssn" /></td>
			</tr>
			<tr>
				<td><form:label path="userName">User Name: </form:label> <form:errors
						path="userName" /> <form:input path="userName" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password: </form:label> <form:errors
						path="password" /> <form:password path="password" /></td>
			</tr>
			
<!-- 					<tr> -->
<!-- 				<td>Interests:</td> -->
<%--             Approach 2: Property is of an array or of type java.util.Collection --%>
<!--             <td> -->
<%--            		<form:form action:"/accounts/new --%>
<%--                 Quidditch: <form:checkbox path="account.accountType" value="Checking"/> --%>
<%--                 Herbology: <form:checkbox path="account.accountType" value="Savings"/> --%>
<%--                 Defence Against the Dark Arts: <form:checkbox path="account.accountType" value="CD"/> --%>
<%--             </td> --%>
<!-- 			</tr> -->
			<tr>
				<td><input type="submit" value="Create New User" /></td>
			</tr>

		</table>
	</form:form>
</body>
</html>