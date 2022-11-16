<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<div class = "container">
		<h2>웹사이트에 접속 시 초기 설정된 값 받아오기 연습</h2>
		<hr/>
		<p><h3>특정 서블릿에서 설정된 초기값 받아오기</h3></p>
		<div>
			<p>아이디 : ${mid}</p>
			<p>비밀번호 : ${pwd}</p>
			<p>부서 : ${className}</p>
		</div>
		
		<p><h3>공통변수로 설정된 초기값 받아오기</h3></p>
		<p>회사명 : ${logoName}</p>
		<p>회사홈페이지주소 : <a href="${homeAddress}" target="_blank">${homeAddress}</a></p>
		<div>
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/Green';" class="btn btn-success">서블릿으로부터 초기값 가져오기</button>
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/GlobalGreen';" class="btn btn-success">공통변수의 할당값 가져오기</button>
		</div>
	</div>
</body>
</html>