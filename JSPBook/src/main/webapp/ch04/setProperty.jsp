<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
<p>수정전 원본 </p>
<p>아이디 : <%out.println(person.getId()); %></p>
<p>이 름 : <%out.println(person.getName()); %></p>
<br><hr><br>
<!-- setProperty 미사용  수정-->
<%
/* 
ch04.com.dao.Person person1 = new ch04.com.dao.Person();
사용시 useBean 사용안해도 됨
*/
person.setId(1981);
person.setName("김연우");
%>
<p>수정후 </p>
<p>아이디 : <%out.println(person.getId()); %></p>
<p>이 름 : <%out.println(person.getName()); %></p>
<br><hr><br>

<jsp:setProperty property="id" name="person" value="20211119"/>
<jsp:setProperty property="name" name="person" value="아이유"/>
<p>아이디 : <%out.println(person.getId()); %></p>
<p>이 름 : <%out.println(person.getName()); %></p>
</body>
</html>