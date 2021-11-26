<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용하기</title>
</head>
<body>
	<h4>----세션을 삭제하기 전 ---</h4>
	<%
	/*다른 페이지(session01.jsp)에서 setAttribute()를 통해서 세션 정보를 저장함 
	-> 현재페이지에서 getAttribute()를 통해서 저장된 세션정보를 가져옴(출력) 
	-> isRequestedSessionIdValid()으로 세션이 살아있는지 확인 (true)
		out.print("세션이 유효합니다.");
	-> 	session.invalidate(); 세션 삭제
	-> isRequestedSessionIdValid()으로 세션이 살아있는지 확인 (false)
		out.print("세션이 유효하지 않습니다.");
	*/
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	out.println("설정된 세션이름 userID : "+user_id+"<br>");
	out.println("설정된 세션값 userPW : "+user_pw+"<br>");

	if(request.isRequestedSessionIdValid()==true){
		out.print("세션이 유효합니다.");
	}else{
		out.print("세션이 유효하지 않습니다.");
	}
	session.invalidate();
	%>

	<h4>----세션을 삭제한 후 ---</h4>

	<%
	if(request.isRequestedSessionIdValid()==true){
		out.print("세션이 유효합니다.");
	}else{
		out.print("세션이 유효하지 않습니다.");
	}
	%>
</body>
</html>