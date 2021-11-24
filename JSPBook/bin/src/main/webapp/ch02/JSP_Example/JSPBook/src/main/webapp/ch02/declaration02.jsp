<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<!-- 선언부에는 실행문을 쓰면 안됨 -->
	<%! 
		int sum(int a, int b){
		return a+b;
	}
	%>
	
	<%
		out.println("2+3="+sum(2,3));
	%>
	<!-- HTML에서의 방식 -->
	<!-- 결과는 동일하지만 자바스크립트를 사용 시 서버에서연산이발생된 것이 아니라
	 클라이언트의 화면에서 변경된 것일 뿐임 -->
</body>
</html>