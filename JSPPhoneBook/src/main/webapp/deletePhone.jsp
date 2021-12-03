<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<%@ include file="bootstrap.jsp"%>
<script>
 window.addEventListener("DOMContentLoaded",function(){
	var btnCancel = document.querySelector("#btn-cancel");
	btnCancel.addEventListener("click",function(){
		history.back();
	})
 });
</script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int num = Integer.parseInt(request.getParameter("num"));
%>
	
	<%@ include file="header.jsp"%>
	
	<main class="container">
		<form action="deletePhone_process.jsp" class="mt-5" method="post">
			<div class="my-3">
				<label for="seq">삭제할 전화번호 순번</label>
				<input type="text" class="form-control" id="seq" name ="seq" readonly value="<%=num%>">
			</div>
			<div class="d-flex justify-content-between">
				<div>
					<a href="PhoneList.jsp" class="btn btn-secondary">목록</a>
					
				</div>
					<div>
						<button type="submit" class="btn btn-danger">삭제</button>
						<button type="button" class="btn btn-warning" id="btn-cancle">취소</button>
					</div>
				
			</div>
		</form>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>