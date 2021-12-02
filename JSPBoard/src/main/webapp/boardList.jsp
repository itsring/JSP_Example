<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%!
	/* 
	DB와 실제 연결하기 위한 Connection 객체 
	미리 선언해 놓는 이유 : try/catch문 내부에서 선언시 오류가 발생하면 해당 객체를 삭제할 수 없음 / code block이 달라지기 때문
	*/
	Connection conn = null;
	Statement stmt = null; // DB에 SQL 질의를 하기 위한 객체
	ResultSet rs = null; // SELECT 질의 후 결과를 저장하기 위한 객체

	String driver = "com.mysql.cj.jdbc.Driver"; // MySql 드라이버 이름 / 데이터 베이스 종류에 따라 다름
	
	String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC"; //실제 DB 접속 주소 / DB마다 방식이 다름
	
	/* DB에서 SQL문을 실행할 user_id, user_pw  실제 개발할 때는 소스에 id와 비밀번호를 넣으면 안됨 */
	String uid = "test_user";
	String upw = "1234";
	%>
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
		<table class="table table-striped table-hover text-center mt-5">
			<colgroup>
				<col width="7%"/>
				<col width="50%"/>
				<col width="15%"/>
				<col width="20%"/>
				<col width="8%"/>
			</colgroup>
			<thead>
				<tr>
					<th>글번호</th>
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
				/*
				DB와 같은 외부 리소스를 사용하는 부분은 오류발생 확률이 높기때문에 반드시 try/catch문을 통해서 예외 처리를 해야 함
				
				*/
				try {
					/*
					DB에 연결하기 위한 드라이버 이름을 적용
					∴DriverManager 클래스에 자동으로 등록 및 객체를 생성
					∴getConnection = 실제 DB와 연결 그 결과를 Connection클래스 타입의 객체에 대입함
					∴Connection 클래스 타입의 객체를 통해서 createStatement 클래스 타입의 객체를 생성
					-> query문을 DB에 전송 가능하게 만듬
					∴Statement클래스 타입의 객체가 가지고 있는 executeQuety() 메서드를 통해서 실제 SQL 쿼리를 DB에 질의함
					그 결과롤 ResultSet 클래스 타입의 객체에 저장함
					*/
					Class.forName(driver);
					conn = DriverManager.getConnection(url, uid, upw);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					
					/*
					ResultSet클래스의 next() 메서드 실행시 남아있는 데이터가 있으면 true 없으면 false 
					enumeration이랑 비슷한 메서드
					*/
					while (rs.next()) {
						
						/*
						resultSet에 HashMap 방식으로 저장된 데이터를 반복문을통해서 각자 저장, 출력
						DB의 실제 column명을 써야됨 
						*/
						int idx = rs.getInt("idx");
						String title = rs.getString("title");
						String creater_id = rs.getString("creater_id");
						String created_date = rs.getString("created_date");
						String hit_cnt = rs.getString("hit_cnt");
						
						/* 가져온 데이터 테이블 형식으로 출력*/
						String item = "<tr>";
						item += "<td>" + idx + " </td>";
						item += "<td><a href='selectBoard.jsp?num="+idx+"'>" + title + "</a> </td>";
						item += "<td>" + creater_id + " </td>";
						item += "<td>" + created_date + " </td>";
						item += "<td>" + hit_cnt + " </td>";
						item += "<tr>";
						out.println(item);
					}
				} catch (SQLException ex) {
			
				} finally {
					/*끝나면 닫기*/
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
			<!-- 글쓰기 버큰 -->
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