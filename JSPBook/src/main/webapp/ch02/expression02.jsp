<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	
	<%
	int a=10;
	int b=20;
	int c=30;
	%>
	<!-- 표현문은 식 끝에 ; 넣으면 안됨 
	HTML 테그 사이에 결과값으로 넣기 좋음
	 -->
	
	<p>변수 a의 값은 <%=a %></p><br>
	<p>변수 b의 값은 <%=b %></p><br>
	<p>변수 c의 값은 <%=c %></p><br>
	<p>세 변수의 합 a+b+c = <%= a+b+c %></p>
</body>
</html>