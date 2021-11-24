<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String password = request.getParameter("passwd");
	%>
	<p>
		아이디 :
		<%
	out.println(userId);
	%>
	</p>
	<p>
		비밀번호 :
		<%
	out.println(password);
	%>
	</p>
</body>
</html>