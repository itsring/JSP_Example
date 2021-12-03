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
	String fr_name = request.getParameter("fr_name");
	String fr_phone1 = request.getParameter("fr_phone1");
	String fr_phone2 = request.getParameter("fr_phone2");
	String fr_email = request.getParameter("fr_email");
	String fr_address = request.getParameter("fr_address");
	String fr_comment = request.getParameter("fr_comment");
	
	try {
		String sql = "INSERT INTO ";
		sql += "phone_book (fr_name, fr_phone1, fr_phone2, fr_email ,fr_address, fr_comment) ";
		sql += "VALUES(?,?,?,?,?,?)";
		Class.forName(driver);
		conn = DriverManager.getConnection(url, uid, upw);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,fr_name);
		pstmt.setString(2,fr_phone1);
		pstmt.setString(3,fr_phone2);
		pstmt.setString(4,fr_email);
		pstmt.setString(5,fr_address);
		pstmt.setString(6,fr_comment);
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
	response.sendRedirect("PhoneList.jsp");
	%>
</body>
</html>