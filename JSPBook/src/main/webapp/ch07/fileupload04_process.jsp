<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- apache 재단의 commons-fileupload 라이브러리를 사용하기 위해 등록 -->
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>

<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>File Upload</title>
</head>
<body>
	<!-- 선언부 전역변수 -->
	<%!/* 선언부 : 클래스의 멤버 변수로 선언됨 */
		String charSet = "utf-8";
		String fileUploadPath = "C:\\java404\\upload";/*파일 저장 경로*/
		int limitUploadFileSize = 5 * 1024 * 1024; /*5MB*/%>
	
	<!-- 여기에 선언시 지역변수 -->
	<%
		request.setCharacterEncoding(charSet);
	
		File uploadPath = new File(fileUploadPath);
		
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		fileItemFactory.setRepository(uploadPath);
		fileItemFactory.setSizeThreshold(limitUploadFileSize);
	
		ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
	
		try{
			List<FileItem> items = fileUpload.parseRequest(request);
			
			for(FileItem item : items){
				if(item.isFormField()){
					/*사용자가 서버로 전송한 input 태그의 name 속성값을 출력 */
					String name = item.getFieldName();
					/*사용자가 서버로 전송한 input 태그의 value 속성값을 출력*/
					String value = item.getString(charSet);
					out.println(name+" = "+value+"<br>");
				}else{
					String fileFieldName = item.getFieldName();
					String fileName = item.getName();
					String contentType = item.getContentType();
					
					fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
					long fileSize=item.getSize();
					
					File file = new File(fileUploadPath +"/"+fileName);
					item.write(file);
					
					out.println("-----------------------------<br>");
					out.println("요청 파라미터 이름 :"+fileFieldName+"<br>");
					out.println("저장 파일 이름 : "+fileName+"<br>");
					out.println("파일 컨텐츠 유형: "+contentType+"<br>");
					out.println("파일 크기 : "+fileSize);	
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			out.println("<h4>파일 업로드 중 오류가 발생했습니다.</h4>");
		}
	%>
</body>
</html>