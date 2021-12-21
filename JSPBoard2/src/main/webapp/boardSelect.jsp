<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ page import="com.bitc.dto.BoardDto"%> 
<%@ page import="com.bitc.dto.BoardDao"%>
<%@ page import="java.util.ArrayList" %>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <%@include file="header.jsp" %>
    <main class="container">
      <form action="boardList.jsp" method="post">
      <%
      request.setCharacterEncoding("UTF-8"); 
      int num = Integer.parseInt(request.getParameter("idx"));
            out.println(num);	
           	BoardDao dao = new BoardDao();
          	ArrayList<BoardDto> boardList = dao.selectBoard(num);
        	for(BoardDto item : boardList){
        		String data = "";
            		
          		data +="<div class='my-3'>";
          		data +=" <label for='idx' class='form-label'>글번호 : </label>";
          		data += "<input type='text' class='form-control' id='idx' ";
          		data +="name='idx' value="+item.getIdx()+"/>";
          		data +="</div>";
          		data +="<div class='my-3'>";
          		data +=" <label for='title' class='form-label'>글제목 : </label>";
          		data += "<input type='text' class='form-control' id='title' ";
          		data +="name='title' value="+item.getTitle()+"/>";
          		data +="</div>";
          		data +="<div class='my-3'>";
          		data +=" <label for='creater_id' class='form-label'>글쓴이 :  </label>";
          		data += "<input type='text' class='form-control' id='creater_id' ";
          		data +="name='creater_id' value="+item.getCreater_id()+"/>";
          		data +="</div>";
          		data +="<div class='my-3'>";
          		data +=" <label for='created_date' class='form-label'>작성일 :  </label>";
          		data += "<input type='text' class='form-control' id='created_date' ";
          		data +="name='created_date' value="+item.getCreated_date()+"/>";
          		data +="</div>";
          		data +="<div class='my-3'>";
          		data +=" <label for='update_id' class='form-label'>수정인 :  </label>";
          		data += "<input type='text' class='form-control' id='update_id' ";
          		data +="name='update_id' value="+item.getUpdate_id()+"/>";
          		data +="</div>";
          		data +="<div class='my-3'>";
          		data +=" <label for='updated_date' class='form-label'>수정인 :  </label>";
          		data += "<input type='text' class='form-control' id='updated_date' ";
          		data +="name='updated_date' value="+item.getUpdated_date()+"/>";
          		data +="</div>";
          		data +="<div class='my-3'>";
          		data +=" <label for='hit_cnt' class='form-label'>수정인 :  </label>";
          		data += "<input type='text' class='form-control' id='hit_cnt' ";
          		data +="name='hit_cnt' value="+item.getHit_cnt()+"/>";
          		data +="</div>";
          		
          		out.println(data);
        	}
			 
	          
	        
      %>
        
       
        
         
        
      </form>
    </main>
   
    <!--
 boardList.jsp에서 선택한 글의 상세 내용을 확인하는페이지를 완성 
BoardDao 클래스 내에 boardSelect() 메서드를 생성하여 지정한 데이터 불러오기
부트스트랩 적용
-->
    <%@include file="footer.jsp" %>
  </body>
</html>
