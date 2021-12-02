<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- base_style -->
<style>
.jumbotron {
	background-color: lightgray;
}

header>div>h1 {
	text-align: center;
}
</style>
</head>
<body>
	<header class="container">
		<div class="mt-4 p-5 rounded jumbotron">
			<h1>게시판 글 등록 페이지</h1>
		</div>
	</header>

	<main class="container">
		<form action="insertBoard_process.jsp" class="mt-5">
			<div class="mt-3">
				<label for="title">제목 : </label> 
				<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="userId">아이디 : </label> 
				<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="contentsPw">글삭제 비밀번호 : </label> 
				<input type="password" class="form-control" id="contentsPw" name="contentsPw" placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="mt-3">
				<label for="contents">내용 : </label> 
				<textarea rows="5" class="form-control" id="contents" name="contents" placeholder="글 내용을 입력해주세요"></textarea>
			</div>

			<div class="d-flex justify-content-between my-3">
				<a href="boardList.jsp" class="btn btn-secondary">목록</a>
				<button type="submit" class="btn btn-primary">글 등록</button>
			</div>
		</form>
	</main>

	<footer class="container-fluid fixed-bottom p-0">
		<div class="mt-3 p-5 jumbotron text-center">
			<p>made by itsring</p>
		</div>
	</footer>


</body>
</html>