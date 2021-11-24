<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- cos.jar 라이브러리를 사용하여 파일 업로드를 처리 -->
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %> <!-- enumeration -->
<%@page import="java.io.*" %> 
<%
/* 업로드된 파일을 cos.jar 라이브러리의 MultipartRequest 클래스를 사용하여 처리함 */
/*
MultipartRequest 클래스 타입의 변수 선언 =
(내장객체 request, 파일저장경로(경로 사이사이에 \한개만 있으면 안됨 탈출문자때문에 \\두개여야됨) 없으면 오류 발생, 파일크기 1024 = 2^10 1000의 근사값 ,사용할 문자셋을 설정, 중복파일의 이름 변경 규칙 설정)
*/
MultipartRequest multi =new MultipartRequest(request/*요청 객체*/, 
		"C:\\java404\\upload"/*저장경로*/,5*1024*1024/*파일크기 5byte*1000*1000==5MB*/
		,"utf-8"/*인코딩 언어*/,new DefaultFileRenamePolicy()/*파일이름 기본규칙*/);
/*MultipartRequest 클래스 타입의 객체 에서 getParameterName() 
사용하여 클라이언트에서 전송한 input(text)데이터의 이름을 모두 가져옴

사용방식의 통일
*/
Enumeration params = multi.getParameterNames();
/*getParameterName()로 가져온 텍스트 데이터를반복문을 통해서 출력  */
while(params.hasMoreElements()/*남은 요소가 있으면 반복 없으면 정지*/){
	String name=(String)params.nextElement();/*데이터 가져오기*/
	String value = multi.getParameter(name);/*지정된이름과 1:1로 매칭된 데이터 가져오기*/
	out.println(name + "="+value +"<br>");
}
	out.println("--------------------<br>");
	/* MultipartRequest 클래스 타입의 객체가 가지고있는 파일데이터의 이름만모두 가져옴 */
	Enumeration files = multi.getFileNames();	//
	
while(files.hasMoreElements()){
	/*파일에 관련된 정보중 name 속성 값을 가져옴*/
	String name = (String) files.nextElement();
	/*서버에 저장된 이름은 가져옴 */
	String filename = multi.getFilesystemName(name);
	/*서버에 업로드 외었을 때 원본 이름을 가져옴(name)*/
	String original = multi.getOriginalFileName(name);
	/*파일의 컨텐츠 타입(음악인지 문서인지 pdf인지 기타 등등)을 가져옴*/
	String type=multi.getContentType(name);
	/*java.io 패키지의 File 클래스 타입의 객체를 생성하고 파일 정보를 저장함*/
	File file = multi.getFile(name);
	
	out.println("요청 파라미터 이름 : "+name + "<br>");
	out.println("실제 파일 이름 : "+original + "<br>");
	out.println("저장 파일 이름 : "+filename + "<br>");
	out.println("파일 콘텐츠 유형 : "+type + "<br>");
	if(file!=null){
		out.println(" 파일크기 : "+ file.length());
		out.println("<br>");
	}
}
	
%>
