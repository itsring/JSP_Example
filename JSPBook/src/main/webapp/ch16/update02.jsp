<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
<form action="update02_process.jsp" method="post">
<h3>변경할</h3>
<label for="id">아이디 : </label>
<input type="text" id="id" name="id"><br>
<label for="passwd">비밀번호 : </label>
<input type="password" id="passwd" name="passwd"><br>
<label for="name">이름 : </label>
<input type="text" id="name" name="name"><br>
<button type="submit">변경</button>
</form>
</body>
</html>