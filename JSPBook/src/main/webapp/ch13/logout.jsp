<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 5초후 페이지 강제이동 -->
<meta http-equiv="refresh" content="5; url=http://localhost:8080/JSPBook/ch13/logIn.jsp">
<title>Insert title here</title>
</head>
<body>
<h3>로그아웃 페이지</h3>
<p>로그아웃 되었습니다.</p>
<p>5초 후 login페이지로 이동합니다.</p>
<%
/*	세션정보 삭제  */
session.removeAttribute("userId");
session.removeAttribute("userName");
/* 모든 세션정보 삭제 */
session.invalidate();

%>

	<!-- 

	지정한 시간이 지난 후 지정한 페이지로 이동 
	 -->
</body>
</html>