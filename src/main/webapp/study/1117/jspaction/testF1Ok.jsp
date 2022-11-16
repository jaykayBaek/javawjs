<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("utf-8"); %>

<!-- 앞에서 전송된 값들을 변수에 담아보자. -->
<!-- variable = 변수 -->
<!-- EL은 서블릿에서 값을 가져올 때 사용하는 것이기 때문에, 지금의 상황, 프론트단에서 프론트단으로 값을 옮긴 경우 param을 붙여줘야 한다. -->
<c:set var="name" value="${param.name}"/>
<c:set var="gender" value="${param.gender}"/>
<c:set var="age" value="${param.age}"/>
<c:set var="job" value="${param.job}"/>
<c:set var="address" value="${param.address}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<h2>전송된 자료 결과 보기2</h2>
		<p>
		<div class="wrap">
			<p>
				<span>성명</span>
				<span>${name}<span>
			</p>			
			<p>
				<span>성별</span>
				<span>${gender}<span>
			</p>			
			<p>
				<span>나이</span>
				<span>${age + 1}<span>
			</p>			
			<p>
				<span>직업</span>
				<span>${job}<span>
			</p>			
			<p>
				<span>주소</span>
				<span>${address}<span>
			</p>			
		</div>
	</div>
<p><br/><p>
</body>
</html>