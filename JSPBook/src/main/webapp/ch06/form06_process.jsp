<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form tag</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>요청 파라미터 이름</th>
				<th>요청 파라미터 값</th>
			</tr>
		</thead>
		<tbody>
			<%
			request.setCharacterEncoding("UTF-8");
			Enumeration<String> paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = paramNames.nextElement();
				String paramValue = request.getParameter(name);
				/* if(request.getParameter(name).getClass().isArray()){
					String arrStr[] = request.getParameterValues(name);
					for(int i=0; i<arrStr.length;i++){
						paramValue +=arrStr[i]+" ";
					}
				}
				else{
					paramValue=request.getParameter(name);
				}
				String strTag ="<tr>"; */
				out.println("<tr><td>" + name + "</td>\n");
				out.println("<td>" + paramValue + "</td></tr>\n");
			}
			%>
		</tbody>
	</table>
</body>
</html>