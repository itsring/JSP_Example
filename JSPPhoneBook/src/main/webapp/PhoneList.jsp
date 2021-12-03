<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연락처 리스트</title>
<%@ include file="bootstrap.jsp"%>
<%@ include file="dbconn.jsp"%>

</head>
<body>
	<%@ include file="header.jsp"%>

	<main class="container">
		<table class="table table-striped table-hover text-center mt-5">
			<colgroup>
				<col width="10%" />
				<!-- <col width="10%" /> -->
				<col width="45%" />
				<col width="45%" />
				
			</colgroup>
			<thead>
				<tr>
					<!-- <th>순 번</th> -->
					<th>이 름</th>
					<th>휴대폰 번호</th>
					<th>집 전화번호</th>
				</tr>
			</thead>

			<tbody>
				<%
				String sql = "SELECT seq, fr_name, fr_phone1, fr_phone2 FROM phone_book";
			

				try {

					Class.forName(driver);
					conn = DriverManager.getConnection(url, uid, upw);
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						int seq = rs.getInt("seq");
						String fr_name = rs.getString("fr_name");
						String fr_phone1 = rs.getString("fr_phone1");
						String fr_phone2 = rs.getString("fr_phone2");
					
						String item = "<tr>";
						/* item += "<td>"+seq+"</td>"; */
						item += "<td><a href='selectPhone.jsp?num="+seq+"'>";
						item += fr_name + "</a> </td>";
						item += "<td>" + fr_phone1 + " </td>";
						item += "<td>" + fr_phone2 + " </td>";
						item += "<tr>";
						out.println(item);
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

			</tbody>
		</table>
		<div class="d-flex justify-content-end">
			<!-- 글쓰기 버큰 -->
			<a href="insertPhone.jsp" class="btn btn-primary">연락처 등록</a>
		</div>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>