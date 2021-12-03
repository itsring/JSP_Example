<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<%@ include file="bootstrap.jsp"%>
<script>
	window.addEventListener("DOMContentLoaded", function() {
		var btnCancel = document.querySelector("#btn-cancel");
		btnCancel.addEventListener("click", function() {
			history.back();
		})
	});
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<main class="container">
		<form class="mt-5" action="updateBoard_process.jsp" method="post">
			<%
			request.setCharacterEncoding("utf-8");
			int num = Integer.parseInt(request.getParameter("num"));

			String sql = "select idx, title, contents, creater_id, hit_cnt ";
			sql += "from t_board ";
			sql += "where idx= ? ";
			sql += "AND deleted_yn = 'N' ";
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, uid, upw);
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);
				
				rs = pstmt.executeQuery();
				while (rs.next()) {
					int idx = rs.getInt("idx");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					String userId = rs.getString("creater_id");
					int hit_cnt = rs.getInt("hit_cnt");
			%>
			<div class="my-3">
				<label for="idx">글번호 : </label> 
				<input type="text" class="form-control" id="idx" name="idx" readonly value="<%=idx%>">
			</div>
			<div class="my-3">
				<label for="title">글제목 : </label>
				 <input type="text" class="form-control" id="title" name="title" value="<%=title%>">
			</div>
			<div class="my-3">
				<label for="userId">아이디 : </label> 
				<input type="text" class="form-control" id="userId" name="userId" readonly value="<%=userId%>">
			</div>
			<div class="my-3">
				<label for="contentPw">비밀번호 : </label> 
				<input type="password" class="form-control" id="contentPw" name="contentPw">
			</div>
			<div class="my-3">
				<label for="contents">글 내용 : </label>
				<textarea class="form-control" rows="5" id="contents" name="contents"><%=contents%></textarea>
			</div>
			<div class="d-flex justify-content-between">
				<div>
					<a href="boardList.jsp" class="btn btn-secondary">목록</a>
				</div>
				<div>
					<button type="submit" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-warning" id="btn-cancel">취소(뒤로가기)</button>
				</div>
			</div>
			<%
				}
			} catch (SQLException ex) {

			} finally {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			}
			%>
		</form>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>