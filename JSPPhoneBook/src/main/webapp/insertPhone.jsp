<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body>
	<%@ include file="header.jsp"%>

	<main class="container">
		<form action="insertPhone_process.jsp" class="mt-5">
			<div class="mt-3">
				<label for="fr_name">이름 : </label> 
				<input type="text" class="form-control" id="fr_name" name="fr_name" placeholder="이름을 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="fr_phone1">휴대폰 전화번호 : </label> 
				<input type="text" class="form-control" id="fr_phone1" name="fr_phone1" placeholder="휴대폰 번호를 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="fr_phone2">집 전화번호 : </label> 
				<input type="text" class="form-control" id="fr_phone2" name="fr_phone2" placeholder="집 전화번호를 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="fr_email">email : </label> 
				<input type="email" class="form-control" id="fr_email" name="fr_email" placeholder="이메일를 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="fr_address">주소 : </label> 
				<textarea rows="2" class="form-control" id="fr_adress" name="fr_address" placeholder="주소를 입력해주세요"></textarea>
			</div>
			<div class="mt-3">
				<label for="fr_comment">메모 : </label> 
				<textarea rows="4" class="form-control" id="fr_comment" name="fr_comment" placeholder="메모를 입력해주세요"></textarea>
			</div>

			<div class="d-flex justify-content-between my-3">
				<a href="PhoneList.jsp" class="btn btn-secondary">목록</a>
				<button type="submit" class="btn btn-primary">전화번호 등록</button>
			</div>
		</form>
	</main>

	<%@ include file="footer.jsp"%>


</body>
</html>