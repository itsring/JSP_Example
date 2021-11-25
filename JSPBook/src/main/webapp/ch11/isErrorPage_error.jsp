<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>오류가 발생했습니다.</h3>
<p>예외유형 : <%=exception.getClass().getName() %></p>
<p>오류메세지 : <%=exception.getMessage() %></p>
<%-- <p>오류 위치 : <%=exception.printStackTrace() %></p> --%>

</body>
</html>