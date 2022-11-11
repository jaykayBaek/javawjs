<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <%
    String name = request.getParameter("name");
    String[] hobbys = request.getParameterValues("hobby");
    String gender = request.getParameter("gender");
  %>
  
  <font size="5"><b>성명</b></font> : <%=name %><br/>
  취미 : <br/>
  <%
    for(String hobby  : hobbys) {
    	out.print(hobby + " / ");
    }
  %>
  <br/>
  성별 : <%=gender %><br/>
  <p><a href="test11.jsp">돌아가기</a></p>
</div>
<p><br/></p>
</body>
</html>