<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
	<h1>로그인 OK 페이지</h1>
	<%
	/*Attribute는 object 형태로 옮겨져서 toString으로 문자열형태로 바꿔줌*/
	%>
	<p> <%=session.getAttribute("userName").toString()
	%></p>
</body>
</html>