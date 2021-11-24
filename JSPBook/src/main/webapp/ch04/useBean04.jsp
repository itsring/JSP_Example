<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- useBean사용시 scope를 설정하면 생성된 객체가 저장되는 범위를 설정할 수 있음 -->
	<!-- scope값
		request : 내장객체인 request에 객체를 저장함
		page 	: 객체가 현재페이지에서만 사용이 가능하다 
	 -->
	<!-- useBean을 통해서 Person 클래스의 객체를 생성  -->
	<!-- useBean이 scope가 request이므로 내장객체 request에 객체정보를 저장함  -->
	<jsp:useBean id="person" class="ch04.com.dao.Person"
	 scope="request" />
	<!-- getter를 사용하여 객체의 정보를 가져옴 -->
	<p>
		아이디 :
		<%=person.getId()%></p>
	<p>
		이 름 :
		<%=person.getName()%></p>
	<!-- setter를 사용하여 현재 person 객체에 변수값을 변경함 -->
	<%
	person.setId(20211225);
	person.setName("산타할배");
	%>
	<!-- 액션태그 include를 사용하여 useBean03.jsp 페이지로 이동 -->
	<!-- 
	내장 객체 request에 person객체 정보가 존재하기 때문에
	 useBean03.jsp에서는 useBean04.jsp에서 생성한
	  person 객체의 정보를 그대로 사용함
	   -->
	<jsp:include page="useBean03.jsp" />

</body>
</html>