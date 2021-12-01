<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
<form action="insert02_process.jsp" method="post">
<label for="id">아이디 : </label>
<input type="text" id="id" name="id"><br>
<label for="passwd">비밀번호 : </label>
<input type="password" id="passwd" name="passwd"><br>
<label for="name">이름 : </label>
<input type="text" id="name" name="name"><br>
<button type="submit">삽입</button>
</form>
</body>
</html>