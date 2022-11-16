<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String hakbun = request.getParameter("hakbun");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int soc = Integer.parseInt(request.getParameter("soc"));
	int sci = Integer.parseInt(request.getParameter("sci"));
	int tot = Integer.parseInt(request.getParameter("tot"));
	double avg = Double.parseDouble(request.getParameter("avg"));
	String grade = request.getParameter("grade");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>test2Ok.jsp</title>
	<%@ include file="../../include/bs4.jsp" %>
</head>
<body>
<p><br/><p>
	<div class = "container">
	<h2>이곳은 test2Ok.jsp입니당</h2>
	<p>학번 : <%= hakbun %></p>
	<p>성명 : <%= name %></p>
	<p>국어 : <%= kor %></p>
	<p>영어 : <%= eng %></p>
	<p>수학 : <%= math %></p>
	<p>사회 : <%= soc %></p>
	<p>총점 : <%= sci %></p>
	<p>평균 : <%= avg %></p>
	<p>학점 : <%= grade %></p>
	<p><a href="test2.jsp">돌아가기</a></p>
	</div>
<p><br/><p>

</body>
</html>