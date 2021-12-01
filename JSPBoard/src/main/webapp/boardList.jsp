<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC";

	String uid = "test_user";
	String upw = "1234";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<!-- 부트스트랩 -->
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
	<header class="container">
		<div class="mt-4 p-5 rounded jumbotron">
			<h1>게시판 목록 페이지</h1>
		</div>
	</header>

	<main class="container">
		<table class="table table-striped table-hover mt-5">
			<thead>
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
			</thead>

			<tbody>
				<%
				String sql = "select ";
				sql += "idx, title, creater_id, created_date, hit_cnt ";
				sql += "from t_board ";
				sql += "where deleted_yn = 'N';";
				try {
					Class.forName(driver);
					conn = DriverManager.getConnection(url, uid, upw);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						int idx = rs.getInt("idx");
						String title = rs.getString("title");
						String creater_id = rs.getString("creater_id");
						String created_date = rs.getString("created_date");
						String hit_cnt = rs.getString("hit_cnt");

						String item = "<tr>";
						item += "<td>" + idx + " </td>";
						item += "<td>" + title + " </td>";
						item += "<td>" + creater_id + " </td>";
						item += "<td>" + created_date + " </td>";
						item += "<td>" + hit_cnt + " </td>";
						item += "<tr>";
						out.println(item);
					}
				} catch (SQLException ex) {

				} finally {
					if (rs != null) {
						rs.close();
					}
					if (stmt != null) {
						stmt.close();
					}
					if (conn != null) {
						conn.close();
					}
				}
				%>

				
			</tbody>
		</table>
		<div class="d-flex justify-content-end">
			<a href="insertBoard.jsp" class="btn btn-primary">글쓰기</a>
		</div>
	</main>

	<footer class="container-fluid fixed-bottom p-0">
		<div class="mt-3 p-5 jumbotron text-center">
			<p>made by itsring</p>
		</div>
	</footer>
</body>
</html>