<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용하기</title>
</head>
<body>
<%
/* 세션에 저장된 정보를 저장할 변수 name, value  */
String name;
String value;
/* getAttributeNames() 메서드가 세션에 저장된 모든 세션의 이름을 가져옴 */
Enumeration<String> en = session.getAttributeNames();
int i=0;//카운트 변수

while(en.hasMoreElements()){
	i++;
	/*
	책과 다른이유는 Enumeration의 사용법이 변경되면서 Enumeration 객체 생성시 탙입을 지정하였기 때문에 저장된 데이터가 지정되어 있으므로 toString()메서드를 사용하지 않아도 됨 
	
	*/
	name = en.nextElement();
	/*getAttribute()는 반환 타입이 OBject 타입이므로 형변환이 반드시 필요함*/
	value = session.getAttribute(name).toString();
	
	out.println("설정된 세션의 속성이름 ["+i+"] : "+name+"<br>");
	out.println("설정된 세션의 속성값 ["+i+"] : "+value+"<br>");
}

%>
</body>
</html>