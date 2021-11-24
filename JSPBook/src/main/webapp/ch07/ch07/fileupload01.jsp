<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
<!-- fileupload01_process.jsp로 데이터를 전송-->
<!-- 데이터 전송시 전송 방식은 post로 설정 -->
<!-- 전송되는 데이터는 enctype="multipart/form-data"로 설정하여 
일반 텍스트 데이터와 파일 데이터를 동시에 전송 -->
	<form action="fileupload01_process.jsp" method="post" enctype="multipart/form-data">
		<label for="name">이름 :</label> <input type="text" id="name" name="name"><br>
		 <label for="subject">제목 :</label> 
		 <input type="text" id="subject" name="subject"><br> 
		 <label for="filename">파일 :</label>
		 <!-- input 태그의 type을 file로 설정하여 바이너리 파일을 input태그에 저장 --> 
		 <input type="file" id="filename" name="filename"><br>
		<br>
		<button type="submit">파일 올리기</button>
	</form>
</body>
</html>