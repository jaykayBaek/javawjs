<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw = request.getParameter("sw")==null ? "" : request.getParameter("sw");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<!-- 헤더영역?('메뉴/로고'를 표시한다) -->
		<header>
			<%@ include file="menu.jsp" %>
		</header>
		
		<!-- 본문영역 -->
		<section>
		<%  if(sw.equals("guest")){ %>
			<%@ include file="guest.jsp" %>
		<%}else if(sw.equals("board")){ %>
			<%@ include file="board.jsp" %>
		<%}else if(sw.equals("pds")){ %>
			<%@ include file="pds.jsp" %>
		<%}else if(sw.equals("photo")){ %>
	   <%-- <%@ include file="photo.jsp" %>--%>
	   <!-- %@ 쪼개진 것 include 완성된 것 -->
			<jsp:include page="photo.jsp"></jsp:include>
		<%}else{%>
			<h1>이곳은 메인화면입니다.</h1>
			<br/>
			<img src ="../../images/1.jpg" alt ="강아지사진" width="600px"/>
			<br/>
		<%}%>
		</section>
		
		<!-- 푸터영역(Copyright나 주소, 소속, 작성자 등을 기술..) -->
		<footer>
<%-- 			<%@ include file="footer.jsp" %>
 --%>		</footer>
	</div>
<p><br/><p>

</body>
</html>