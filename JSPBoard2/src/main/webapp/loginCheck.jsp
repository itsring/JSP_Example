<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.bitc.dto.MemberDto" %>
<%@page import="com.bitc.dto.MemberDao" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	/* 
	1.사용자가 입력한 정보 가져오기
	2.DB연결
	3.DB에서 사용자가 입력한 정보가 존재하는지 확인
	4.DB검색 결과를 가지고 결과가 있으면 true / 없으면 false
	4-1 true : 상세정보 가져오기
	4-2 false : loginFail.jsp로 이동하기
	5.DB에서 가져온 정보를 세션에 저장하기
	*/
	
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	
	/* DB연결,DTO, DAO 사용해서 연결 */
	MemberDao dao = new MemberDao();
	
	int count = dao.idPwCheck(userId, userPw);
	 /*
	 idPwCheck메서드에서 result값이 0이 나오고
	 No suitable driver found for 예외구문 뜨면 SQL문 혹은 Driver구문이 잘못된 것  
	 */
	if(count > 0){
		/* 
		사용자 정보 불러오기 
		세션 저장 : setAttribute , 이름, data 값
		*/
		MemberDto member = dao.getUserInfo(userId);
		session.setAttribute("userId", member.getUserId());
		session.setAttribute("userName", member.getUserName());
		session.setAttribute("userEmail", member.getUserEmail());
		
		response.sendRedirect("./boardList.jsp");
	}else{
		/* login fail */
		response.sendRedirect("./loginFail.jsp");
	
	/* 	out.println("사용자 없음"); */
	}
	%>
</body>
</html>

















