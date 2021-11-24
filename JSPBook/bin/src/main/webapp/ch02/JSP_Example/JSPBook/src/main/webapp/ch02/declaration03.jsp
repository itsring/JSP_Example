<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%!
		String makeItLower(String data){
		return data.toLowerCase();
	}
	%>
	
	<%
		out.println(makeItLower("Hello World"));
	%>
	<!-- HTML에서의 방식 -->
	<!-- 결과는 동일하지만 자바스크립트를 사용 시 서버에서연산이발생된 것이 아니라
	 클라이언트의 화면에서 변경된 것일 뿐임 -->
</body>
</html>