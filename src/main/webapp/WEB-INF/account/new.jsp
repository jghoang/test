<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<title>New Checking</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
	<div class="container">
		<form:form action="/account/new" method="POST" modelAttribute="account">
				<form:select path="user">
					<c:forEach items="${accounts}" var="account">
        					<form:option value="${account.id}"><c:out value="${user.type}"/></form:option>
   					</c:forEach>
				</form:select>
		
			<br>Personal Checking<form:checkbox path="type" value="personal"/>
			DBA Checking<form:checkbox path="type" value="business"/>  
			Savings<form:checkbox path="type" value="savings"/> 
			CDs<form:checkbox path="type" value="cd"/> 
			<input type="submit" value="Create">
		</form:form>
		<% if(request.getAttribute("errors") != null){ %>
		<fieldset>
		<legend>Errors</legend>
		<c:forEach items="${errors}" var="error">
			<p><c:out value="${error.getDefaultMessage()}"/></p>
		</c:forEach>
		</fieldset>
		<% } %>
	</div>
	</body>
</html>