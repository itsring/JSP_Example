<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"  %>
<%
/*현재 페이지 파일명을 불러옴*/
String path = request.getServletPath();
/* '/'문자가 있는 위치를 가져오기 */
int k = path.lastIndexOf('/');
/*철번째 지정한 위치에서 두번째 지정한 위치까지의 문자 가져오기*/
path = path.substring(k + 1, path.length());
String pageName = ""; //각 페이지 제목란에 출력할 문자를 저장할 변수

if (path.equals("boardList.jsp")) {
	pageName = "게시판 목록 페이지";
} else if (path.equals("login.jsp")) {
	pageName = "로그인 페이지";
} else if (path.equals("logout.jsp")) {
	pageName = "로그아웃 페이지";
} else if (path.equals("signIn.jsp")) {
	pageName = "회원가입 페이지";
} else if (path.equals("boardWrite.jsp")) {
	pageName = "글쓰기 페이지";
} else if (path.equals("authFail.jsp")) {
	pageName = "로그인 인증실패 페이지";
} else if (path.equals("boardSelect.jsp")) {
	pageName = "글 선택 페이지";
}
%>
<%
 /* 세션 정보 가져오기 object type으로 가져오기때문에 toString으로 문자열
type으로 형변환 시켜야됨 */ 
String userId = (String)session.getAttribute("userId"); 
String userName = (String)session.getAttribute("userName"); 
String userEmail = (String)session.getAttribute("userEmail"); 
%>
<header class="container-fluid px-0">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark px-3">
		<a href="#" class="navbar-brand">JSP Board</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-targer="#mynavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="mynavbar">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a href="#" class="nav-link active">메뉴 1</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴 2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴 3</a></li>
			</ul>
			<div class="d-flex">
				<%
				if (userId==null || userName==null) {
					out.println("<a href='login.jsp' class='btn btn-outline-primary'> 로그인 </a>");
				} else {
					out.println("<span class='navbar-text mb-0 me-3'>" + userName + " 님 반갑습니다.</span>");
					out.println("<a href='logout.jsp' class='btn btn-outline-info'>로그아웃</a>");
				}
				%>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="mt-4 p-5 bg-secondary rounded bg-opacity-50">
			<h1 class="text-center"><%=pageName%></h1>
		</div>
	</div>
</header>