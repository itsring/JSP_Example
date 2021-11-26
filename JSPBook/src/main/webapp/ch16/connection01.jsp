<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
<%
/*실제 데이터베이스와 연결하는 연하는 Class
final부분에서 .close메소드를 쓰려면 conn값을 줘야되는데
final과 try에서 쓸거기 때문에 try catch문밖에서 선언
*/
Connection conn = null;
try{
	/*
	jdbc : 드라이버 사용 
	jdbc:mysql : DB종류/mysql DB사용
	jdbc:mysql://localhost : DB서버의 URL,ip로 입력 및 도메인 명으로 입력해도됨
	jdbc:mysql://localhost:3306 : port 번호 /3306번 기본 사용 포트 / 서버 설정에 따라 변경 가능
	jdbc:mysql://localhost:3306/testdb : 사용할 DB명
	jdbc:mysql://localhost:3306/testdb?useUnicode=true&charaterEncoding=utf8&serverTimerzone=UTC
	: ?를 기준으로 앞은 기본 설정 부분, 뒤는 추가옵션 부분 : 인코딩 utf8, 날짜변경선의 시간대, 유니코드 사용 한다는 뜻 
	& 여러개의 추가옵션이 있을경우 옵션을 구분하는 기호
	*/
		String url="jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC";
		String user="test_user";
		String passwrod="1234";
	/*DriverManager에 자동으로 등록됨*/	
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, passwrod);
		out.println("데이터 베이스 연결이 성공하였습니다.");
}catch(SQLException/*JDBC드라이버가 로딩이 안되서 처음엔 오류 뜸*/ e){
	out.println("데이터 베이스 연결이 실패하였습니다.<br>");
	out.println("SQLExcetion :"+e.getMessage());
}
finally{
	/*데이터베이스 접속종료*/
	if(conn !=null){		
		conn.close();
	}
}
%>
</body>
</html>