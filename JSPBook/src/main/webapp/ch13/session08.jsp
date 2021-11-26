<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용하기</title>
</head>
<body>
	
	<%
	/*
	클라이언트가 웹서버에 접속하여 생성된 세션 아이디를 가져옴
	String session_id = session.getId();
	*/
		String session_id = session.getId();
	/*
	현재 세션ID에서 클라이언트가 마지막으로 서버에 요청한 시간
	long last_time = session.getLastAccessedTime();
	*/
		long last_time = session.getLastAccessedTime();
	/*
	현재 세션ID가 웹서버에 생성된 시간
	long start_time = session.getCreationTime();
	*/
		long start_time = session.getCreationTime();
	/*
	[요청한 시간 - 생성된 시간 = 지나간 시간(경과 시간)]/1000 = 초단위
	long used_time = (last_time-start_time)/1000;
	1970.01.01.00:00:00이 기준이고 1/1000초 기준이라서 굉장히 큰 수가 나옴
	1/1000초 형식을 사람이 알아보기 쉬운 방식인 1초형식으로 변경 후 1분 형식으로 변경하기 위해 	1/1000*1000*60을해서 60000을 곱함
	이렇게 시간을 나타내면 힘들어서 Date() 객체나 Calendar() 객체를 사용
	*/
		long used_time = (last_time-start_time)/60000;
	
		Date date = new Date(last_time);
		out.println(date.toLocaleString()+"<br>");
		out.println("세션 아이디 : "+session_id+"<br>");
		out.println("요청 시작 시간 : "+start_time+"<br>");
		out.println("요청 마지막 시간 : "+last_time+"<br>");
		out.println("웹 사이트의 경과 시간 : "+used_time+"<br>");
	
	%>
</body>
</html>