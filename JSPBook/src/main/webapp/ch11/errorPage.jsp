<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>name 파라미터<%= request.getParameter("name").toUpperCase()/*name이 없어서 오류 발생*/ %></p>
	</body>
</html>