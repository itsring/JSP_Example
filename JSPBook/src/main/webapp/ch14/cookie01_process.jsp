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
String userPw = request.getParameter("passwd");

if(userId.equals("admin")&&userPw.equals("1234")){
	/*쿠키 생성시 서버에서 생성 
	Cookie 클래스의 객체를 생성해서 사용(생성자에 쿠키 이름 및 데이터를 입력)*/
	Cookie cookieId = new Cookie("userID",userId);
	Cookie cookiePw = new Cookie("userPW",userPw);
	/*쿠키 생성후 쿠키 유효 시간을 설정*/
	cookieId.setMaxAge(180);
	cookiePw.setMaxAge(180);
	
	response.addCookie(cookieId);
	response.addCookie(cookiePw);
	
	out.println("쿠기 생성이 성공했습니다.");
	out.println(userId+"님 환영합니다.<br>");
}else{
	out.println("쿠키 생성이 실패했습니다.<br>");
}
%>
<a href="cookie02.jsp">쿠키 확인 페이지</a><br>
</body>
</html>