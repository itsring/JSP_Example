<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- apache 재단의 commons-fileupload 라이브러리를 사용하기 위해 등록 -->
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@page import="java.util.*"%>
<!-- enumeration -->
<%@page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<!-- 선언부 전역변수 -->
	<%!
	/* 선언부 : 클래스의 멤버 변수로 선언됨 */
		String charSet = "utf-8";
		String fileUploadPath="C:\\java404\\upload";/*파일 저장 경로*/
		int limitUploadFileSize = 5*1024*1024; /*5MB*/
	
	%>
	
	<!-- 여기에 선언시 지역변수 -->
	<%
		request.setCharacterEncoding(charSet);
	
		/* 파일 저장 폴더를 가지고 File 클래스 타입의 객체를 생성 
		DiskFileItemFacory 클래스에서 파일 저장 폴더를 설정하는 메서드인 setRepository()의 매개변수가 FIle 클래스 타입의 객체를 사용함
		*/
		File uploadPath = new File(fileUploadPath);
		
		/*
		DiskFileItemFactory 			: 업로드된 파일을 저장할 저장소와 관련된 클래스로 Fileitem 객체를 생성함
		DiskFileItemFactory는 기본값으로 10kb, 파일 저장장소를 시스템 기본 임시폴더를 사용함
		
		getDefaultCharset() 			: 기본값으로지정된 문자셋 출력	 
		getRepository() 				: 기본값으로 지정된 파일 저장 폴더 출력
		getSizeThreshold() 				: 기본값으로 지정된 최대 파일 크기
		setDefaultCharset(String 문자셋) 	: 사용할 문자셋을 설정
		setRepository(File 파일 저장 경로)	: 사용할 파일 저장 경로를 설정
		setSizeThreshold(int 파일 크기) 	: 사용할 파일의 최대 크기를 설정
		*/
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		/*원하는 크기의 최대 파일 크기 설정
		fileItemFactory.setRepository(repository) 
		*/
		fileItemFactory.setRepository(uploadPath);
		fileItemFactory.setSizeThreshold(limitUploadFileSize);
		
		/*
		DiskFileUpload클래스는 현재 사용이 중단 됨 , ServletFIleUpload를 사용하여 파일 업로드 구현
		
		ServletFIleUpload : 업로드된 파일 처리를 위한 높은 수준의 API,HTTP요청에 대한 httpServletFIleUpload 객체로 부터 multipart/form-data 형식을 입력받아 다루기 쉽게 변환해 주는 역할을 하는 클래스
		
		getItemIterator(HttpServletRequest request): FileItemIterator 타입으로 데이터를 반환
		isMultipartContent():요청 중 다중 부분 컨텐츠가 존재하는지 여부를 반환
		parseParameterMap(): Map<String,List<FileItem>> 타입으로 데이터를 반환
		parseRequest(httpServletRequst request) :.List<FileItem>타입으로 데이터 반환 
		*/
		ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
		
		try{
		/* 
		ServletFileUpload 클래스 타입의 객체 fileUpload의 parseRequest()메서드를 사용하면  FileItem 타입의 리스트를 생성하여 반환함
			*/
			List<FileItem> items = fileUpload.parseRequest(request);
			/*향상된 for문 */
			for(FileItem item:items){
				if(item.isFormField()){
		/* isFormField():input type="file"인지 아닌지 확인하는 메서드 file이면 flase 반환 나머지는 true반환*/
					String title = item.getString(charSet);
					out.println("<h3>"+title+"</h3>");
					
				}
				else{
					/*업로드된 파일의 경로를 포함하여 파일 이름을 가져옴*/
					String fileName = item.getName();
					/*파일의 전체경로 부분중 경로를 제외한 파일명만 가져오기*/
					fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
					
					File file = new File(fileUploadPath + "/"+fileName);
					
			/*		메모리에 저장되어 있는 파일을 디스크에 저장함
					write메서드의 매개변수가 File 클래스 타입임			*/
					item.write(file);
					out.println("파일 이름 : "+fileName + "<br>");
					
				}
			}
		}
		catch(Exception e){
			/* 오류시 출력*/
			e.printStackTrace();
			out.println("<h2>파일 업로드 중 오류가 발생했습니다.</h2>");
		}
	%>
</body>
</html>