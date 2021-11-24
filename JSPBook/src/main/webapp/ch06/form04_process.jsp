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
/* 한글출력 */
request.setCharacterEncoding("UTF-8");
/* 클라이언트에서 request 내장객체 저장되어 전송되어진 데이터를 꺼내어 자바 타입의 변수에 저장 */
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");
String userName = request.getParameter("userName");
String phone1 = request.getParameter("select-phone1");
String phone2 = request.getParameter("phone2");
String phone3 = request.getParameter("phone3");
String userGender = request.getParameter("userGender");
String hobby1 = request.getParameter("hobby1");
String hobby2 = request.getParameter("hobby2");
String hobby3 = request.getParameter("hobby3");
String comment = request.getParameter("comment");
/* String 변수 = request.getParameter(name); */
%>
<p>아이디 : <%=userId %></p>
<p>비밀번호 : <%=userPw %></p>
<p>이름 : <%=userName %></p>
<p>연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%></p>
<p>성별 : <%=userGender %></p>
<p>취미 : <%=hobby1 %> <%=hobby2 %> <%=hobby3 %></p>
<p>가입인사 : <%=comment %></p>
</body>
</html>