<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="session01_process.jsp">
		<p>
			아 이 디 : <input type="text" name="id">
		</p>
		<p>
			비밀번호 : <input type="text" name="password">
		</p>
		<p>
			<input type="submit" value="전송">
		</p>
	</form>
	<br> <hr> <br>
	<a href="session02.jsp">세션 상태 확인 페이지</a>
	
</body>
</html>