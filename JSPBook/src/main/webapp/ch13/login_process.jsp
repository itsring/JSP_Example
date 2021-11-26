<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 및 로그인 상태 저장하기</title>
</head>
<body>
	<%!
		String id="test1";
		String pw = "test1234";
	%>
	<%
	/*
	클라이언트에서 넘어온 정보 가져오기
	
	*/
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		/*로그인이 되는지 안되는지*/
		if(id.equals(userId)&&pw.equals(userPw)){
			//세션에 정보 저장
			//id 저장
			session.setAttribute("userId", userId);
			/*pw는 중요 정보기 떄문에 안넣음
			이름 저장*/
			session.setAttribute("userName", "김경호");
			//로그인 정보가 있으면 login_ok.jsp 이동
			response.sendRedirect("login_ok.jsp");	
		}else{
			//로그인 정보가 없으면 login_fail.jsp로 이동
			response.sendRedirect("login_fail.jsp");	
		}
	%>
</body>
</html>