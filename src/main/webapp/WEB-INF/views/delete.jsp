<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="delete" method="post">
	이메일:<input type="text" name="email" value="${user.email}" readonly><br/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="submit" value="탈퇴하시겠습니까">
	</form>
</body>
</html>