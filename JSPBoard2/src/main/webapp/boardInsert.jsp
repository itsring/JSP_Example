<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bitc.dto.BoardDto"%>
<%@ page import="com.bitc.dto.BoardDao"%>

<%
request.setCharacterEncoding("UTF-8");

String userId = request.getParameter("userId");
String title = request.getParameter("title");
String contents = request.getParameter("contents");

BoardDao dao = new BoardDao();
BoardDto board = new BoardDto();

board.setTitle(title);
board.setContents(contents);
board.setCreater_id(userId);

int result = dao.BoardInsert(board);

response.sendRedirect("boardList.jsp");
%>