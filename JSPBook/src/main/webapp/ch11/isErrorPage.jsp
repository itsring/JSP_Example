<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- isErrorPage속성을 true로 주면 exception 내장객체를 사용할 수 있음 -->    
<%@ page errorPage = "isErrorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 예외 처리</title>
</head>
<body>
<p>name 파라미터 <%=request.getParameter("name").toUpperCase() %></p>
</body>
</html>