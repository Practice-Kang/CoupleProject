<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- param은 컨트롤러에서 특정객체를 가져오는게 아니라 uri의 ? 뒷부분을 가져오는것, eq는 '='을 의미한다.
 즉 signup?error_code=2 일시 아래 c:if문 실행-->
    <c:if test="${param.error_code eq 2}">
        <h2>
            이메일이 중복되었습니다.
        </h2>
    </c:if>

	<h2>회원가입</h2>
	<form action="signup" method="post">
	    ID:<input type="text" name="memberID"><br/>
	    PASSWORD:<input type="password" name="password"><br/>
		이름:<input type="text" name="name"><br/>
		이메일:<input type="text" name="email"><br/>
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="submit" value="가입">
	</form>
</body>
</html>