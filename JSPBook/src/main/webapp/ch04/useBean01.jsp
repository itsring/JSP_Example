<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 자바 빈즈를 이용하여 현재 시각 출력 -->
	<jsp:useBean id="date" class="java.util.Date" />
	<p>
		<%
		out.print("오늘의 날짜 및 시각");
		%>
	</p>
	<p><%=date%></p>
	<!-- 
	기존방식대로 출력 현재시각 출력시
	=
	<%--
	<% 
	out.println("오늘의 날짜 및 시각 : " + new java.util.Date();
	java.util.Date date = new java.util.Date();
	useBean의 id == date, class == new
	%>
	<br>
	<p>오늘의 날짜 및 시각<%=today.toString()%></p>
	--%>
	  -->

</body>
</html>