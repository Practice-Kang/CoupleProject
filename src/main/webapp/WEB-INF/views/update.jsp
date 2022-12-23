<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원정보수정</h2>
	<h3>${user.email}</h3>
	<h3>${user.username}</h3>
	<h3>${user.phone}</h3>

	<form action="update" method="post">
            이름:<input type="text" name="name" value="${user.name}"><br/>
            닉네임:<input type="text" name="username" value="${user.username}"><br/>
            이메일:<input type="text" name="email" value="${user.email}"><br/>
            비밀번호:<input type="text" name="password"><br/>
            주소:<input type="text" name="address" value="${user.address}"><br/>
            전화번호:<input type="text" name="phone" value="${user.phone}"><br/>
            웹사이트:<input type="text" name="website" value="${user.website}"><br/>
            회사:<input type="text" name="company" value="${user.company}"><br/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="submit" value="수정">
    	</form>
</body>
</html>