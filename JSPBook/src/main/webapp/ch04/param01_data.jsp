<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디 : <%=request.getParameter("id") %></p>
	<%
		String name = request.getParameter("name");
	%>
	<p>이름 : <%= java.net.URLDecoder.decode(name,"UTF-8") %></p>
</body>
</html>