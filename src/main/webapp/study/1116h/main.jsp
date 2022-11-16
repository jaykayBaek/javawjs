<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw = request.getParameter("sw")==null ? "" : request.getParameter("sw");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<style>
		section{
	       padding-top: 75px;
		}
	</style>
</head>
<body>
	<header>
		<%@ include file="menu.jsp" %>
	</header>	
	<section>
		<article>
			<%  if(sw.equals("input")){ %>
				<%@ include file="input.jsp" %>
			<%}else if(sw.equals("list")){ %>
				<%@ include file="list.jsp" %>
			<%}else{%>
				<h1>이곳은 메인화면입니다.</h1>
				<img src ="../../images/1.jpg" alt ="강아지사진" width="600px"/>
			<%}%>
		</article>
	</section>
	<footer>
	
	</footer>
</body>
</html>