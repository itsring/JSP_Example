<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- JS는 페이지 소스보기를 하면 로직이 공개됨 -->
<script>
window.addEventListener("DOMContentLoaded",function(){
	var number = document.querySelector("#number");
	number.innerText = "30";
});
</script>
<title>Scripting Tag</title>
</head>
<body>
	<%!
	int data = 50;
	%>
	<!-- JSP에서의 방식 페이지 소스보기에서 로직이 보이지 않기 때문에 보안이 좋음-->
	<!-- 서버에서 연산을 진행하여 그 결과를 클라이언트에 전송하는 것 -->
	<%
	out.println("Value of the varialbe is : " + data);
	%>
	<!-- HTML에서의 방식 -->
	<!-- 결과는 동일하지만 자바스크립트를 사용 시 서버에서연산이발생된 것이 아니라
	 클라이언트의 화면에서 변경된 것일 뿐임 -->
	<p>Value of the variable is :<span id="number"></span></p>
</body>
</html>