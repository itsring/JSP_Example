<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<!-- 한글이 깨질 우려가 있어서  encoder 메소드 사용-->
	<jsp:include page="param02_data.jsp">
		<jsp:param name="title"
			value='<%=URLEncoder.encode("오늘의 날짜와 시각", "UTF-8")%>' />
		<!-- 한글을 전달할 경우 정상적으로 전달이 안될 경우가 발생할 수 있으므로
			 URLEncoder 클래스의 encode()메서드를 사용하여 다른 파일로 데이터를 전달함 -->
		<jsp:param name="date"
			value='<%=Calendar.getInstance().getTime()%>' />
	</jsp:include>
</body>
</html>