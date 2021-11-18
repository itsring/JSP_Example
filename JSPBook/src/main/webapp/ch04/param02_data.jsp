<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- param 액션 태그를 통해서 전달된 데이터를
	 request 내장 객체의 get Parameter 메서드를 사용 하여 가져옴-->
	<%
	String title = request.getParameter("title");
	%>
	<h3><%=URLDecoder.decode(title,"UTF-8") %></h3>
	Today is : <%=request.getParameter("date")%>
</body>
</html>