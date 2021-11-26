<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
<!-- 자바스크립트를 통한 redirect 페이지강제 이동 -->
<script>
window.addEventListener("DOMContentLoaded",function(){
	/* timer
	지정한 시간이 지난후 아래의 소스코드가 동작하는 함수
	*/
	setTimeout(function(){
		window.location.href="logIn.jsp";
	},5000);
});
</script>
</head>
<body>
<h3>로그인 실패 페이지</h3>
 <!-- 로그인 페이지로 이동 버튼 (login.jsp) -->
 <p>아이디 및 비밀번호가 맞지 않습니다.</p>
 <p>5초후 자동으로 login페이지로 이동합니다.</p>
 <a href="login.jsp">로그인 페이지로 이동</a>
</body>
</html>