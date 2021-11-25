<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
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
try{
	String num1=request.getParameter("num1");
	String num2=request.getParameter("num2");
	/*
	문자열 데이터를 정수형 데이터로 변환시 문자열 데이터 내에 숫자가 아닌 다른 데이터가 있었기 때문에 오류가 발생함 
	*/
	int a =Integer.parseInt(num1);
	int b =Integer.parseInt(num2);
	int c = a/b;
	
	
}catch(NumberFormatException e){
	/* 
	response 내장 객체의 sendRedirect와 동일한 기능을 가지고 있는 것처럼 보이지만 동작하는 방식에서 차이가 발생함 
	sendRedirect는 지정한 페이지로 강제 이동시 클라이언트로부터 이동하는 위치를 다시 받는것 처럼 동작하지만, RequestDispatcher는 서버 내부에서 직접 이동하는 것 
	sendRedirect는 클라이언트가 처음 요청한 데이터가 이동한 위치에 공유될 수 없는 구조로 이루어져 있으나, RequestDispatcher는 서버 내부에서 직접 이동하므로 클라이언트가 처음 요청한 데이터를 이동한 위치에 공유할 수 있음
	*/
	/* RequestDispatcher : 클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 원하는 자원으로 요청을 넘기거나, 특정자원의 처리를 요청하고 그 결과를 가져오는 역할을 하는 클래스*/
	RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");	
	dispatcher.forward(request,response);
	/* forward() : JSP페이지를 호출하는 순간 서블릿이 멈추고 해당 JSP페이지로 이동하여 처리를 진행함
		include() : JSP페이지를 호출하는 순간 서블릿이 멈추고 해당 JSP 페이지를 실행 후 다시 원래의 JSP 페이지로 돌아와서 나머지 처리를 진행함
	*/
}
%>
</body>
</html>