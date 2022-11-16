<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 에러페이지(errorUser.jsp)</title>
	<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<p><img src="${pageContext.request.contextPath}/images/3.jpg" width="300px"/></p>
		<h1>현재공사중입니다!</h1>
		<p>Get out my PAGE!</p>
		<p><a href="http://192.168.50.211:9090/javawjsp" target="_blank">돌아가기</a></p>
	</div>
<p><br/><p>

</body>
</html>