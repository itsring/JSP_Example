<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%!Connection conn = null;
	Statement stmt = null;

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC";

	String uid = "test_user";
	String upw = "1234";%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- base_style -->
<style>
.jumbotron {
	background-color: lightgray;
}

header>div>h1 {
	text-align: center;
}
</style>
</head>
<body>
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
		sql += "VALUES('" + title + "', '" + contents + "', '" + creater_id + "', '" + contentsPw + "' ,NOW())";

		Class.forName(driver);
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);

	} catch (SQLException ex) {

	} finally {
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	response.sendRedirect("boardList.jsp");
	%>
</body>
</html>