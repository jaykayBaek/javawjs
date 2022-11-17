<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("utf-8"); %>

<!-- 앞에서 전송된 값들을 변수에 담아보자. -->
<!-- variable = 변수 -->
<!-- EL은 서블릿에서 값을 가져올 때 사용하는 것이기 때문에, 지금의 상황, 프론트단에서 프론트단으로 값을 옮긴 경우 param을 붙여줘야 한다. -->
<%--
<c:set var="name" value="${param.name}"/>
<c:set var="gender" value="${param.gender}"/>
<c:set var="age" value="${param.age}"/>
<c:set var="job" value="${param.job}"/>
<c:set var="address" value="${param.address}"/>
 --%>
 
<!-- 자바 클래스를(VO) 사용하여 넘어온 값들을 저장하고자 한다.
	 자바 클래스는 jsp액션태그(jsp:useBean)를 사용한다. -->
<jsp:useBean id="vo" class="study.j1117.Test1VO"/>

<!-- 생성된 클래스에 값을 넣을 때 : jsp:setProperty태그를 사용한다. -->
<%--
<jsp:setProperty property="name" name="vo"/>
<jsp:setProperty property="gender" name="vo"/>
<jsp:setProperty property="age" name="vo"/>
<jsp:setProperty property="job" name="vo"/>
<jsp:setProperty property="address" name="vo"/>
--%>
<!-- 생성된 클래스에 값을 꺼낼 때 : jsp:getProperty태그를 사용한다. -->\
<!-- 폼태그의 이름, 받는 변수의 이름, vo의 이름이 같을 때 *로 해주면 간단하게 다 된다. -->
<jsp:setProperty property="*" name="vo"/>

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
				<span>${name} / <jsp:getProperty property="name" name="vo"/><span>
			</p>			
			<p>
				<span>성별</span>
				<span>${gender} / <jsp:getProperty property="gender" name="vo"/><span>
			</p>			
			<p>
				<span>나이</span>
				<span>${age} / <jsp:getProperty property="age" name="vo"/><span>
			</p>			
			<p>
				<span>직업</span>
				<span>${job} / <jsp:getProperty property="job" name="vo"/><span>
			</p>			
			<p>
				<span>주소</span>
				<span>${address} / <jsp:getProperty property="address" name="vo"/><span>
			</p>			
		</div>
	</div>
<p><br/><p>
</body>
</html>