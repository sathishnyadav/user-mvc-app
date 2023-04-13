<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<form:form modelAttribute="user" action="update" method="post">
				<form:label path="id">Id</form:label>
				<form:input path="id" value="${u.getId() }" />
				<br>
				<form:label path="name">Name</form:label>
				<form:input path="name" value="${u.getName() }" />
				<br>
				<form:label path="phone">Phone</form:label>
				<form:input path="phone" value="${u.getPhone() }" />
				<br>
				<form:label path="age">Age</form:label>
				<form:input path="age" value="${u.getAge() }" />
				<br>
				<form:label path="password">Password</form:label>
				<form:input path="password" value="${u.getPassword() }" />
				<br>
				<form:button>Update</form:button>
			</form:form>
		</c:when>
		<c:otherwise>
			<%
				response.sendRedirect("http://localhost:8080/user-mvc-app/");
			%>
		</c:otherwise>
	</c:choose>
</body>
</html>