<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>오류가 발생했습니다.</h3>
<p>예외 : <%=exception %>
<p>toString() : <%=exception.toString() %></p>
<p>getClass().getName : <%=exception.getClass().getName()%></p>
<p>getMessage() : <%=exception.getMessage() %></p>
</body>
</html>