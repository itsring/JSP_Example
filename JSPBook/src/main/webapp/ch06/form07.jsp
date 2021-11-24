<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>BootStrap Practice</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 mx-auto">
				<h3 class="text-center mt-5">회원가입</h3>
				<form action="form06_process.jsp" method="post">
					<div class="mb-3 mt-3">
						<label for="userId" class="form-label">아이디 : </label> 
						<input class="form-control" type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요">
					</div>

					<div class="mb-3">

						<label for="userPw" class="form-label">비밀번호 : </label> 
						<input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요">

					</div>

					<div class="mb-3">

						<label for="userName" class="form-label">이름 : </label> 
						<input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요.">

					</div>

					<div class="mb-3">
						<div class="d-flex">
							<label for="select-phone1" class="form-label">연락처 : </label> 
							<select name="select-phone1" class="form-select">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
							</select>- <input type="text" id="select-phone2" name="phone2" size="4">- <input type="text" id="select-phone3" name="phone3" size="4">
						</div>
					</div>

					<div class="mb-3">
						<label for="userGender" class="form-label">성별 : </label>
						<div class="form-check">
							<input type="radio" class="form-check-input" id="userGenderM" name="userGender" value="남자">
							<label class="form-label">남자 </label> 
							<input type="radio" class="form-check-input" id="userGenderF" name="userGender" value="여자">
							<label class="form-label">남자 </label>
						</div>
					</div>
					<div class="mb-3">
						<label class="form-label">취미 : </label> 
						<div class="form-check">
							독서<input type="checkbox" id="hobby1" name="hobby1" value="독서" checked> 운동 
							<input type="checkbox" id="hobby2" name="hobby2" value="운동"> 영화 
							<input type="checkbox" id="hobby3" name="hobby3" value="영화">
						</div>
					</div>
					<textarea name="comment" cols="30" rows="3" placeholder="가입인사를 입력해주세요."></textarea>

					<button type="submit">가입하기</button>
					<button type="reset">다시쓰기</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>