<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>include 액션태그</h2>
<!-- 액션태그 include 사용시 -->
<!-- 실제로는 지정한 페이지로 이동 후 화면을 그리고 다시 원래페이지로 복귀 -->
<jsp:include page="include_date.jsp" flush ="true"></jsp:include>
<br><hr><br>
<!-- 디랙티브 태그 include 사용시 -->
<!-- 지정한 페이지를 복사해서 현재 페이지에 포함하기 때문에
 지정한 페이지에 있는 오류도 함꼐 표시된다. -->
<%@ include file="include_date.jsp" %>
</body>
</html>