<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
request.setCharacterEncoding("utf-8");

int seq = Integer.parseInt(request.getParameter("seq"));
/* 쿼리문 작성시 데이터 베이스에서 동작되는지 확인 후 복붙해서 수정할거 수정하는게 가장 오타율이 낮음 
String sql = "update t_board ";
sql += "set deleted_yn = 'Y' ";
sql += "where idx = "+idx+" ";
sql += "AND passwd ='"+passwd+"' "; */

/* PreparedStatement사용시 */
String sql = "delete from phone_book where seq =?;";
try{
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url, uid, upw);
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,seq);
	pstmt.executeUpdate();
	int count =pstmt.executeUpdate();
	if(count<1){
		/*업데이트 된것이 없음
		잘못된 명령이라고 화면에 출력
		이전 페이지로 이동*/
	}else{
		/*정상처리
		처음화면 이동*/
	}
	
}catch(SQLException ex){
		
}finally{

	if(pstmt!=null){
		pstmt.close();	
	}
	if(conn!=null){
		conn.close();
	}
}

response.sendRedirect("PhoneList.jsp");
%>