<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="ch04.com.dao.Person"/>
<jsp:setProperty property="id" name="person" value="20211119"/>
<jsp:setProperty property="name" name="person" value="아이유"/>
<p>아이디 : <jsp:getProperty property="id" name="person"/></p>
<p>이 름 : <jsp:getProperty property="name" name="person"/></p>
</body>
</html>