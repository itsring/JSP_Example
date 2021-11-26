<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie</title>
</head>
<body>
	<%
	/* 생성된 쿠키를 삭제시 클라이언트에서 요청시 전송된 request 내장객체에 저장된 쿠키를 불러와서 setMaxAge 메서드를 사용하여 유효시간을 0으로 설정하면   */
		Cookie[] cookies = request.getCookies();
	
	
	
		for(int i=0; i<cookies.length;i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		/* response.sendRedirect("cookie02.jsp"); */
	%>
		<a href="cookie02.jsp">쿠키 확인 페이지</a><br>
		<a href="cookie01.jsp">쿠키 생성 페이지</a><br>
</body>
</html>