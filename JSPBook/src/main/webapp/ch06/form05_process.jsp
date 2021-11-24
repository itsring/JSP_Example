<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/* 한글출력 */
request.setCharacterEncoding("UTF-8");
/* 클라이언트에서 request 내장객체 저장되어 전송되어진 데이터를 꺼내어 자바 타입의 변수에 저장 */
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");
String userName = request.getParameter("userName");
String phone1 = request.getParameter("select-phone1");
String phone2 = request.getParameter("phone2");
String phone3 = request.getParameter("phone3");
String userGender = request.getParameter("userGender");
/* hobby가 클라이언트에서 checkbox이며 , 식별자인 name을 동일한 이름으로 사용하고 있어서,
서버로 데이터 전송시 배열로 데이터를 전송함 

request내장 객체에서 데이터르르 가져올때 getParameterValues를 사용하여 배열로 가져옴
*/
String hobby[] = request.getParameterValues("hobby");
String comment = request.getParameter("comment");
/* String 변수 = request.getParameter(name); */
%>
<p>아이디 : <%=userId %></p>
<p>비밀번호 : <%=userPw %></p>
<p>이름 : <%=userName %></p>
<p>연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%></p>
<p>성별 : <%=userGender %></p>
<p>취미 : <%
/* 취미가 없을경우 '없음'으로 표기 */
if(hobby !=null){
	/* 취미의 항목중 null혹은 빈 문자열 있을경우 표기 안함 */
	for(int i=0; i<hobby.length;i++){
		if(hobby[i]==null||hobby[i].trim().equals("")){
			continue;
		}
		out.println(hobby[i]+"  ");
	}
}else{
	out.println("없음");
}
%></p>
<p>가입인사 : <%=comment %></p>
</body>
</html>