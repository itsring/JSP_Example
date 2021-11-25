<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>잘못된 데이터가 입력되었습니다.</p>
<!-- RequestDispatcher는 처음 요청한 데이터를 공유하기 때문에 이동한 페이지에서도 처음 요청한 페이지와 동일한 형태로 request 내장객체를 사용할 수 있음 -->
<p><%= "숫자 1 : "+request.getParameter("num1")%></p>
<p><%= "숫자 2 : "+request.getParameter("num2")%></p>

</body>
</html>