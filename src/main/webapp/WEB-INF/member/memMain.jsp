<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<div class = "container">
		<h2>회원전용방</h2>
		<hr/>
		<p>
			<font color="blue"><b>${sNickName}</b>님 로그인중이십니다.</font>
			<font color="red">현재 레벨은? <b>${strLevel}</b> 등급 입니다.</font>
		</p>
		<p>누적 포인트 : ${point}</p>
		<p>최종 접속일 : ${lastDate}</p>
		<p>총 방문횟수 : ${visitCnt}</p>
		<p>오늘 방문횟수 : ${todayCnt}</p>
		<h2>활동내역</h2>
		<p>방명록에 올린 글수 : </p>
		<p>게시판에 올린 글수 : </p>
		<p>자료실에 올린 글수 : </p>
	</div>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>