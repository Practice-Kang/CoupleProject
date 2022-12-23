<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<hr>
<table>
	<c:forEach var="data" items="${result}">
		<tr>
			<td>${data.id}</td>
			<td>${data.name}</td>
			<td>${data.username}</td>
			<td>${data.email}</td>
			<td>${data.password }</td>
			<td>${data.address}</td>
			<td>${data.phone}</td>
			<td>${data.website}</td>
			<td>${data.company}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>