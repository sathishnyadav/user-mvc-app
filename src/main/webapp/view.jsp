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
	<c:choose>
		<c:when test="${u!=null }">
			<h2>Name:${u.getName() }</h2>
		</c:when>
		<c:otherwise>
			<%
				response.sendRedirect("http://localhost:8080/user-mvc-app/");
			%>
		</c:otherwise>
	</c:choose>
</body>
</html>