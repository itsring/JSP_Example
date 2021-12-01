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
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	PreparedStatement pstmt = null;
	try {
		String sql = "update member set passwd=?, name=? where id=?";
		/* 위랑 밑이랑 같음 
		String sql = "update member ";
		sql+= "set passwd =?, name =? ";
		sql += "where id = ? ";
		*/
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, passwd);
		pstmt.setString(2, name);
		pstmt.setString(3, id);
		pstmt.executeUpdate();
		out.println("Member 테이블 변경이 성공했습니다.");
	} catch (SQLException ex) {
		out.println("Member 테이블 변경이 실패했습니다.<br>");
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
</body>
</html>