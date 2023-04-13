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
	<c:if test="${msg!=null }">
		<h1>${msg }</h1>
	</c:if>
	<form action="loginuser" method="post">
		Phone Number<input type="tel" name="phone"><br> Password<input
			type="password" name="password"><br> <input
			type="submit" value="Login">
	</form>
	<h3>
		<a href="load?choice=1">Register</a>
	</h3>
</body>
</html>