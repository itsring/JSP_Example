<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용하여 로그인 화면 만들기</title>
</head>
<body>
	<form action="login_process.jsp" method="post">
		<label for="userId">아이디 : </label>
		<!-- id입력받기 -->
		<input type="text" id="userId" name="userId" placeholder="아이디를 입력해 주세요">
		<br>
		<label for="userPw">비밀번호 : </label>
		<!-- pw입력받기 -->
		<input type="text" id="userPw" name="userPw" placeholder="비밀번호를입력해 주세요">
		<br>
		<!-- 로그인 버튼 -->
		<button type="submit">로그인</button>
	</form>
	<%
	
	%>
</body>
</html>