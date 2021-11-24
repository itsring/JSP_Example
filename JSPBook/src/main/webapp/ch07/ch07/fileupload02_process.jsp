<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- cos.jar 라이브러리를 사용하여 파일 업로드를 처리 -->
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="java.util.*"%>
<!-- enumeration -->
<%@page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
	/*저장을 먼저 하고 밑에 코드들로 파일의 정보를 가져옴*/
	MultipartRequest multi = new MultipartRequest(request/*요청 객체*/, "C:\\java404\\upload"/*저장경로*/,	5 * 1024 * 1024/*파일크기 5byte*1000*1000==5MB*/, "utf-8"/*인코딩 언어*/, new DefaultFileRenamePolicy()/*파일이름 기본규칙*/);
	
	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");

	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");

	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");

	Enumeration files = multi.getFileNames();

	String file3 = (String) files.nextElement();
	String filename3 = multi.getFilesystemName(file3);

	String file2 = (String) files.nextElement();
	String filename2 = multi.getFilesystemName(file2);

	String file1 = (String) files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	%>
	<table border="1">
		<thead>
			<tr>
				<th width="100">이름</th>
				<th width="100">제목</th>
				<th width="100">파일</th>
			</tr>
		</thead>
		<tbody>
			<%
			String str = "";
			str+="<tr>";
			str+="<td>"+name1+"</td>";
			str+="<td>"+subject1+"</td>";
			str+="<td>"+filename1+"</td>";
			str+="</tr>";
			str+="<tr>";
			str+="<td>"+name2+"</td>";
			str+="<td>"+subject2+"</td>";
			str+="<td>"+filename2+"</td>";
			str+="</tr>";
			str+="<tr>";
			str+="<td>"+name3+"</td>";
			str+="<td>"+subject3+"</td>";
			str+="<td>"+filename3+"</td>";
			str+="</tr>";
			out.println(str);
				
			%>
		</tbody>
	</table>

</body>
</html>