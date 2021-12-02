<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%!
	Connection conn = null;
	Statement stmt = null;

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC";

	String uid = "test_user";
	String upw = "1234";
	%>
<%
request.setCharacterEncoding("utf-8");

int idx = Integer.parseInt(request.getParameter("idx"));
String passwd = request.getParameter("contentPw");
/* 쿼리문 작성시 데이터 베이스에서 동작되는지 확인 후 복붙해서 수정할거 수정하는게 가장 오타율이 낮음 */
String sql = "update t_board ";
sql += "set deleted_yn = 'Y' ";
sql += "where idx = "+idx+" ";
sql += "AND passwd ='"+passwd+"' ";

try{
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url, uid, upw);
	stmt = conn.createStatement();
	
	stmt.executeUpdate(sql);
	
}catch(SQLException ex){
		
}finally{

	if(stmt!=null){
		stmt.close();	
	}
	if(conn!=null){
		conn.close();
	}
}

response.sendRedirect("boardList.jsp");
%>