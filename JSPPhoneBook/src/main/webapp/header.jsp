<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

String path = request.getServletPath();
int k = path.lastIndexOf('/');
path = path.substring(k + 1, path.length());
String pageName = ""; //각 페이지 제목란에 출력할 문자를 저장할 변수

if (path.equals("PhoneList.jsp")) {
	pageName = "전화번호 목록 페이지";
} else if (path.equals("selectPhone.jsp")) {
	pageName = "연락처 상세 페이지";
} else if (path.equals("insertPhone.jsp")) {
	pageName = "연락처 등록 페이지";
} else if (path.equals("updatePhone.jsp")) {
	pageName = "연락처 수정 페이지";
}
%>

<header class="container">
	<div class="mt-4 p-5 rounded jumbotron">
		<h1><%=pageName %></h1>
	</div>
</header>
