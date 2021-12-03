<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%!/* 
	DB와 실제 연결하기 위한 Connection 객체 
	미리 선언해 놓는 이유 : try/catch문 내부에서 선언시 오류가 발생하면 해당 객체를 삭제할 수 없음 / code block이 달라지기 때문
	*/
	Connection conn = null;
	PreparedStatement pstmt = null; // DB에 SQL 질의를 하기 위한 객체
	ResultSet rs = null; // SELECT 질의 후 결과를 저장하기 위한 객체

	String driver = "com.mysql.cj.jdbc.Driver"; // MySql 드라이버 이름 / 데이터 베이스 종류에 따라 다름
	String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC"; //실제 DB 접속 주소 / DB마다 방식이 다름
	/* DB에서 SQL문을 실행할 user_id, user_pw  실제 개발할 때는 소스에 id와 비밀번호를 넣으면 안됨 */
	String uid = "test_user";
	String upw = "1234";
	
	%>