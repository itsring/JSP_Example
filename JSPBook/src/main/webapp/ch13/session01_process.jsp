<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userId = request.getParameter("id");
String userPw = request.getParameter("password");
/*
session 내장객체에 setAttribute 메서드를 사용하여 지정한 이름으로 지정한데이터를 저장
내장 객체의 getAttribute 메서드를 사용하여 저장된 데이터를 출력할 수 있음
브라우저(클라이언트)를 종료하기 전 혹은 유지시간이 초과, 세션 삭제가 이루어지기 전까지 계속 유지됨
*/
if(userId.equals("admin")&&userPw.equals("1234")){
	session.setAttribute("userID",	userId);
	session.setAttribute("userPW",	userPw);
	out.println("세션 설정이 성공했습니다.");
	out.println(userId+"님 환영합니다.");	
}else{
	out.println("세션 설정이 실패했습니다.");
}
%>
<a href="session02.jsp">세션 사용하기 </a>
</body>
</html>