<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	/*SQL명령어를 데이터 베이스에서 실행하기 위한 클래스*/
	Statement stmt = null;
	/*SELECT SQL 명령어 실행후 결과값을 받아오는 클래스*/
	ResultSet rs = null;
	try {
		/*SQL 명령문*/
		String sql = "SELECT * FROM member";
		/*Connection 클래스의 객체를 통해서 Statement 클래스 객체를 생성*/
		stmt = conn.createStatement();
		/*Statement 클래스의 executeQuery() 메서드를 통해서 select SQL 명령어를 실행 
		->	ResultSet에 그 결과값을 저장*/
		rs = stmt.executeQuery(sql);
		/*rs 가 hashmap 비슷하게 되어있어서 반복문 사용
		next() 메서드 실행 시 남은 데이터가 존재 시 true를 반환, 없으면 false		*/
		while (rs.next()) {
			/*ResultSet 안에서 지정한 이름과 1:1로 연동된 데이터를 가져옴
			 ※ key는 DB 테이블의 컬럼명과 같다.*/
			String id = rs.getString("id");
			String pw = rs.getString("passwd");
			String name = rs.getString("name");

			out.println("id :" + id + "<br>pw : " + pw + "<br>name : " + name + "<br>");
			out.println("-----------------------------------------<br>");
		}
	} catch (SQLException ex) {
		out.println("데이터 베이스 조회 시 오류가 발생했습니다.<br> SQLException : " + ex.getMessage());

	} finally {
		/*외부 리소스를 닫는 순서는 외부 리소스를 열었던 반대의 순서대로 닫음 */
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
</body>
</html>