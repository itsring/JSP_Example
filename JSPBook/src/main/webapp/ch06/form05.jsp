<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="form05_process.jsp" name="member" method="post">
		<label for="userId">아이디 : </label>
		 <input type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요">
		<button type="button" id="btn-idChek">아이디 중복검사</button>
		<br>
		 <label for="userPw">비밀번호 : </label> 
		 <input type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요">
		 <br>
	  	<label for="userName">이름 : </label>
	   	<input type="text" id="userName" name="userName" placeholder="이름을 입력해 주세요.">
	   	<br>
	   	<label for="select-phone1">연락처 : </label>
	    <select name="select-phone1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="017">017</option>
		</select>-
		 <input type="text" id="select-phone2" name="phone2" size="4">- 
		 <input type="text" id="select-phone3" name="phone3" size="4">
		 <br>
		 <label for="userGender">성별 : </label>
		 <input type="radio" id="userGenderM" name="userGender" value="남자">남자 
		 <input type="radio" id="userGenderF" name="userGender" value="여자">여자
		 <br>
		 <label for="hobby">취미 : </label> 독서
		 <!-- name이 같으면 전송시 배열로 전송 -->
		 <input type="checkbox" id="hobby" name="hobby" value="독서" checked> 운동 
		 <input type="checkbox" id="hobby" name="hobby" value="운동"> 영화 
		 <input type="checkbox" id="hobby" name="hobby" value="영화">
		 <br>
		<textarea name="comment" cols="30" rows="3" placeholder="가입인사를 입력해주세요."></textarea>
		<br>
		<button type="submit">가입하기</button>
		<button type="reset">다시쓰기</button>

	</form>
</body>
</html>