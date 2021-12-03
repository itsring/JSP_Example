<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
</head>
<body>
<jsp:forward page="/boardList.jsp"/>
<h1>게시판</h1>
<!-- 
목록 페이지 : boardList.jsp
상세 페이지 : selectBoard .jsp
글 등록 페이지 : insertBoard.jsp
글 동록 내부 프로세스 : insertBoard_process.jsp 
글 수정 페이지 : updateBoard.jsp
글 수정 페이지 프로세스 : updateBoard.jsp
글 삭제 페이지 : delteBoard.jsp
글 삭제 페이지 프로세스 : deleteBoard.jsp
 -->
 <%
/*
1. 중복 코딩된 footer와 header를 각각 다른 파일로 생성하고 해당부분을 로딩하여 화면에 출력하는 방식으로 변경
2. DB를 사용하기 위한 정보를 하나의 파일로 작성하고 필요한 부분에 로딩하여 사용하는 방식으로 변경
3. SQL문을 사용하기 위한 클래스인 Statement 클래스를 PreparedStatement로 변경하여 SQL문을 질의하는 방식으로 변경하기
4. 친구들의 연락처를 저장하고 확인, 수정, 삭제할 수 있는 데이터 베이스를 생성하고, 연락처를 관리하는 사이트를 작성하세요.
-데이터베이스명 : testdb / 테이블명 : phone_book 
기능 : 목록페이지(목록확인), 상세정보페이지(연락처상세),연락처추가, 수정페이지(연락처수정), 삭제페이지(연락처삭제)
-column = seq : int, not null, PK, AI 
		/ fr_name 	: varchar(45) not null 
		/ fr_phone1 : varchar(11) not null
		/ fr_phone2	: varchar(11)
		/ fr_email 	: varchar(100)
		/ fr_adress	: varchar(300)
		/ fr_comment: varchar(500)

*/
 

 %>
</body>
</html>