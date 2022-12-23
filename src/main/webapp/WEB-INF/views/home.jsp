<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h4>${user.username} <span>님 반갑습니다!</span></h4>
    <p>ID(PK) : ${user.id} </p>
    <p>이름 : ${user.name} </p>
    <p>이메일 : ${user.email} </p>
    <p>패스워드 : ${user.password} </p>
    <p>회사 : ${user.company} </p>
    <p>이메일 : ${user.email} </p>
    <p>주소 : ${user.address} </p>
    <p>전화번호 : ${user.phone} </p>

    <form action="/member/logout" method="post" style="cursor: pointer;">
        <input type="submit" value="로그아웃">
    </form>
    <button type="button" onclick="location.href='/update'" style="cursor: pointer;">회원정보수정</button>
    <button type="button" onclick="location.href='/delete'" style="cursor: pointer;">회원탈퇴</button>
</body>
</html>