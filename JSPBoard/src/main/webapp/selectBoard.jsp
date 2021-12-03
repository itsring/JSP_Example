<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body>
	<%@ include file="header.jsp"%>
	<main class="container">
		<%
			request.setCharacterEncoding("utf-8");
		/*boardList에서 데이터 전송 시 정수 데이터로 전송했으나 request에서 자장하고있는 데이터가 문자열 형태이므로 이를 다시 정수로 변경하기 위해서 paseInt()사용 */
			int num = Integer.parseInt(request.getParameter("num"));
			
			String sql =  "select idx, title, contents, creater_id, hit_cnt ";
					sql += "from t_board ";
					sql += "where idx=? "; 
					sql += "AND deleted_yn = 'N' ";
			
			String sqlCount = "UPDATE t_board ";
			sqlCount+="set hit_ctn = hit_cnt +1 ";
			sqlCount+="where idx =? AND deleted_yn='N'";
			
			try{
				
				Class.forName(driver);
				conn = DriverManager.getConnection(url, uid, upw);
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					int idx = rs.getInt("idx");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					String userId = rs.getString("creater_id");
					int hit_cnt = rs.getInt("hit_cnt");
		%>
		<div class="mt-5">
			<div class="my-3">
				<label for="boardIdx">글 번호 :</label> 
				<input type="text" class="form-control" id="boardIdx" name="boardIdx" readonly value="<%=idx %>">
			</div>
			<div class="my-3">
				<label for="title">글 제목 :</label> 
				<input type="text" class="form-control" id="title" name="title" readonly value="<%=title %>">
			</div>
			<div class="my-3">
				<label for="userId">아이디 :</label> 
				<input type="text" class="form-control" id="userId" name="userId" readonly value="<%=userId %>">
			</div>
			<div class="my-3">
				<label for="hit_cnt">조회수 : </label> 
				<input type="text" class="form-control" id="hit_cnt" name="hit_cnt" readonly value="<%=hit_cnt %>">
			</div>

			<div class="my-3">
				<label for="contents">글 내용 : </label>
				<textarea class="form-control" rows="5" id="contents" name="contents" readonly ><%=contents %>
				</textarea>
			</div>
			<div class="d-flex justify-content-between">
				<div>
					<a href="boardList.jsp" class="btn btn-secondary">목록</a>
				</div>
				<div>
					<a href="updateBoard.jsp?num=<%=idx%>" class="btn btn-info">수정</a> 
					<a href="deleteBoard.jsp?num=<%=idx%>" class="btn btn-danger">삭제</a>
				</div>
			</div>
		</div>
		<%
				}
			}
			catch(SQLException ex){
			
			}finally{
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn!=null){
					conn.close();
				}
			}
		%>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>