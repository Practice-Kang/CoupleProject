<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
</head>
<body>
    <c:if test="${param.error_code eq 2}">
        <h2>
            잘못된 로그인정보 입니다.
        </h2>
    </c:if>
    <form action="/member/login_proc" method="post">
        <div>
            <label>아이디</label>
            <input id="jsid" name="memberID">
        </div>
        <div>
            <label>비밀번호</label>
            <input id="password" name="password">
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="submit" value="로그인" />
        <input type="button" value="회원가입" onclick="location.href='signup'" />
    </form>
</body>
</html>
