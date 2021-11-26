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
	/* 쿠키는 클라이언트가 서버로 요청시 request 내장 객체에 자동으로 추가되어 전송됨
	request 내장 객체에 있는 모든 쿠키정보를 배열로 배불러옴*/
		Cookie[] cookies = request.getCookies();
	
	out.println("현재 설정된 쿠키의 개수 =>"+cookies.length+"<br>");
	out.println("=========================================<br>");
	/*쿠키의 정보를 배열타입으로 받았으므로 반복문을 사용하여 내용을 확인*/
	for(int i=0; i<cookies.length;i++){
		out.println("설정된 쿠키의 속성이름 ["+i+"] : "+cookies[i].getName()+"<br>");
		out.println("설정된 쿠키의 속성 값["+i+"] :"+cookies[i].getValue()+"<br>");
		out.println("=========================================<br>");	
	}
	%>
	<!-- 페이지 이동 -->
	<a href="cookie01.jsp">쿠키 생성 페이지</a><br>
	<a href="cookie03.jsp">쿠키 삭제 페이지</a><br>
</body>
</html>