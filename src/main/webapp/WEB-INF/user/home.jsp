<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <title>Dashboard</title>
</head>

<body>
  <h1>Welcome, <c:out value="${user.firstName}" /></h1>
	<a href="/logout">Logout</a>
	<a href="/accounts/new">create an account</a>
	<table>
	
	<tbody>
	<c:forEach items="${ accounts }" var="user">
				<tr>
					<td>${ user.accounts }</td>	
				</tr>
			</c:forEach>	
			</tbody>
		</table>		
</body>

</html>