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
		<form class="mt-5" action="updatePhone_process.jsp" method="post">
			<%
			request.setCharacterEncoding("utf-8");
			int num = Integer.parseInt(request.getParameter("num"));

			String sql =  "select * ";
			sql += "from phone_book ";
			sql += "where seq=? "; 
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, uid, upw);
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);
				
				rs = pstmt.executeQuery();
				while (rs.next()) {
					int seq = rs.getInt("seq");
					String fr_name = rs.getString("fr_name");
					String fr_phone1 = rs.getString("fr_phone1");
					String fr_phone2 = rs.getString("fr_phone2");
					String fr_email = rs.getString("fr_email");
					String fr_address = rs.getString("fr_address");
					String fr_comment = rs.getString("fr_phone2");
			%>
			<div class="mt-3">
				<label for="seq">순번 : </label> 
				<input type="text" class="form-control" id="seq" name="seq"   value="<%=seq%>">
			</div>
			<div class="mt-3">
				<label for="fr_name">이름 : </label> 
				<input type="text" class="form-control" id="fr_name" name="fr_name"   value="<%=fr_name%>">
			</div>
			<div class="mt-3">
				<label for="fr_phone1">휴대폰 전화번호 : </label> 
				<input type="text" class="form-control" id="fr_phone1" name="fr_phone1"   value="<%=fr_phone1%>">
			</div>
			<div class="mt-3">
				<label for="fr_phone2">집 전화번호 : </label> 
				<input type="text" class="form-control" id="fr_phone2" name="fr_phone2"   value="<%=fr_phone2%>">
			</div>
			<div class="mt-3">
				<label for="fr_email">email : </label> 
				<input type="email" class="form-control" id="fr_email" name="fr_email"  value="<%=fr_email%>">
			</div>
			<div class="mt-3">
				<label for="fr_address">주소 : </label> 
				<textarea rows="2" class="form-control" id="fr_adress" name="fr_address"  ><%=fr_address%></textarea>
			</div>
			<div class="mt-3">
				<label for="fr_comment">메모 : </label> 
				<textarea rows="2" class="form-control" id="fr_comment" name="fr_comment"  ><%=fr_comment%></textarea>
			</div>
			<div class="d-flex justify-content-between">
				<div>
					<a href="PhoneList.jsp" class="btn btn-secondary">목록</a>
				</div>
				<div>
					<button type="submit" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-warning" id="btn-cancel">취소(뒤로가기)</button>
				</div>
			</div>
			<%
				}
			} catch (SQLException ex) {
				out.println(ex.getMessage());
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