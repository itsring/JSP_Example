<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	String creater_id = request.getParameter("userId");
	String contentsPw = request.getParameter("contentsPw");
	contentsPw = contentsPw.trim();
	if (contentsPw == null || contentsPw.isEmpty()) {
		contentsPw = "bitc1234";
	}
	try {
		String sql = "INSERT INTO ";
		sql += "t_board (title, contents, creater_id, passwd ,created_date) ";
		sql += "VALUES(?,?,?,?,NOW())";
		Class.forName(driver);
		conn = DriverManager.getConnection(url, uid, upw);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,title);
		pstmt.setString(2,contents);
		pstmt.setString(3,creater_id);
		pstmt.setString(4,contentsPw);
		pstmt.executeUpdate();

	} catch (SQLException ex) {

	} finally {
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	response.sendRedirect("boardList.jsp");
	%>
</body>
</html>