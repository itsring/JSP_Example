<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

<%
request.setCharacterEncoding("utf-8");

int idx = Integer.parseInt(request.getParameter("idx"));
String title = request.getParameter("title");
String contents = request.getParameter("contents");
String updateId = request.getParameter("userId");
String contentPw = request.getParameter("contentPw");

String sql = "update t_board set title =?, contents =?, ";
sql += "update_id =?, updated_date = NOW() ";
sql += "where idx =? ";
sql += "AND passwd =?";

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url,uid,upw);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,title);
	pstmt.setString(2,contents);
	pstmt.setString(3,updateId);
	pstmt.setInt(4,idx);
	pstmt.setString(5,contentPw);
	
	pstmt.executeUpdate();
}catch(SQLException ex){
	
}finally{
	if(pstmt!=null){
		pstmt.close();	
	}
	if(conn!=null){
		conn.close();
	}
}

response.sendRedirect("boardList.jsp");
%>
