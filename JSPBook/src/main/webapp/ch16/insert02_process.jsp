<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- DB관련 라이브러리 로드  -->
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
	<!-- DB connection file load -->
	<%@ include file="dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");
	/* 클라이언트에서 전송한 데이터를 request 내장객체에서 가져옴 */	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");

	/* DB서버에 sql문으로 쿼리를 전송하여 데이터를 사용하기 위해서 PrepareStatement 객체 생성*/
	PreparedStatement pstmt = null;
	try {
		/* 실행할 SQL 쿼리를 생성
		주의사항 : 띄어쓰기, 테이블 명
		*/
		String sql = "INSERT INTO member(id, passwd, name) ";
		sql += "VALUES(?,?,?) ";
		/* Connection 클래스를 사용하여 PrepareStatement 객체를 생성함 */
		pstmt = conn.prepareStatement(sql);
		/*PrepareStatement 객체를 쿼리문 생성 후 나중에 데이털르 변경할 수 있음
		setString의 첫번째 매개변수가 생성된 query문의 index번호를 뜻함 / 두번쨰 매개변수가 실제 데이터
		*/
		pstmt.setString(1,id);
		pstmt.setString(2,passwd);
		pstmt.setString(3,name);
		/*statement클래스와 동일하게 executeUpdate()는 insert,update,delete 명령시 사용
		select 명령은 excuteQuery() 메서드 사용 
		*/
	 	pstmt.executeUpdate();
		out.println("Member 테이블 삽입이 성공했습니다.");
	} catch (SQLException ex) {
		out.println("Member 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	%>
	<!-- 데이터 삭제 prepareStatement 클래스를 사용하여 update,delete 프로그램 작성 -->
	
</body>
</html>