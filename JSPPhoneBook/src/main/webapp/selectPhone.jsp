<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연락처 게시판 만들기</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body>
	<%@ include file="header.jsp"%>
	<main class="container">
		<%
			request.setCharacterEncoding("utf-8");
		/*boardList에서 데이터 전송 시 정수 데이터로 전송했으나 request에서 자장하고있는 데이터가 문자열 형태이므로 이를 다시 정수로 변경하기 위해서 paseInt()사용 */
			int num = Integer.parseInt(request.getParameter("num"));
			
			String sql =  "select * ";
					sql += "from phone_book ";
					sql += "where seq=? "; 

			try{
				
				Class.forName(driver);
				conn = DriverManager.getConnection(url, uid, upw);
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
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
				<input type="text" class="form-control" id="seq" name="seq"  readonly value="<%=seq%>">
			</div>
			<div class="mt-3">
				<label for="fr_name">이름 : </label> 
				<input type="text" class="form-control" id="fr_name" name="fr_name"  readonly value="<%=fr_name%>">
			</div>
			<div class="mt-3">
				<label for="fr_phone1">휴대폰 전화번호 : </label> 
				<input type="text" class="form-control" id="fr_phone1" name="fr_phone1"  readonly value="<%=fr_phone1%>">
			</div>
			<div class="mt-3">
				<label for="fr_phone2">집 전화번호 : </label> 
				<input type="text" class="form-control" id="fr_phone2" name="fr_phone2"  readonly value="<%=fr_phone2%>">
			</div>
			<div class="mt-3">
				<label for="fr_email">email : </label> 
				<input type="email" class="form-control" id="fr_email" name="fr_email" readonly value="<%=fr_email%>">
			</div>
			<div class="mt-3">
				<label for="fr_address">주소 : </label> 
				<textarea rows="2" class="form-control" id="fr_adress" name="fr_address"  readonly><%=fr_address%></textarea>
			</div>
			<div class="mt-3">
				<label for="fr_comment">메모 : </label> 
				<textarea rows="4" class="form-control" id="fr_comment" name="fr_comment"  readonly><%=fr_comment%></textarea>
			</div>

			<div class="d-flex justify-content-between">
				<div>
					<a href="PhoneList.jsp" class="btn btn-secondary">목록</a>
				</div>
				<div>
					<a href="updatePhone.jsp?num=<%=seq%>" class="btn btn-info">수정</a> 
					<a href="deletePhone.jsp?num=<%=seq%>" class="btn btn-danger">삭제</a>
				</div>
			</div>
		<%
				}
			}
			catch(SQLException ex){
				out.println(ex.getMessage());
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