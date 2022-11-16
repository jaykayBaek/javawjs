<%@page import="j1116.Test2VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/* test2_4에서 request 모델에 저장한 vo변수를 불러온다. vo변수에는 Test2VO객체가 있다.*/
	/* request.getAttribute("vo"); */
	Test2VO vo = (Test2VO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<%@ include file="../../include/bs4.jsp" %>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<h2>test2Ok4.jsp입니다.</h2>
		<p>학번 : <%=vo.getHakbun() %></p>
		<p>성명 : <%=vo.getName() %></p>
		<p>국어 : <%=vo.getKor() %></p>
		<p>영어 : <%=vo.getEng() %></p>
		<p>수학 : <%=vo.getMath() %></p>
		<p>사회 : <%=vo.getSoc() %></p>
		<p>총점 : <%=vo.getTot() %></p>
		<p>평균 : <%=vo.getAvg() %></p>
		<p>학점 : <%=vo.getGrade() %></p>
		<p><a href="<%=request.getContextPath()%>/study/1116/test2.jsp" class = "btn btn-success">돌아가기</a></p>
	</div>
<p><br/><p>

</body>
</html>