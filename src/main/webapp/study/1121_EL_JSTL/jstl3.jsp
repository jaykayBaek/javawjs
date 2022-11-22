<%@page import="study.database.JusorokVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="study.database.JusorokDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<%
	JusorokDAO dao = new JusorokDAO();
	ArrayList<JusorokVO> vos = dao.getMemeberList();
	pageContext.setAttribute("vos", vos);
%>
	<div class = "container">
		<h2>회원 전체 리스트</h2>
		<table class="table table-hover">
			<tr class="table-dark text-dark">
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>성명</th>
				<th>포인트</th>
				<th>최근방문일</th>
			</tr>
			<c:forEach var="vo" items="${vos}" varStatus="st">
				<tr>
					<td>${st.count}</td>
					<td>${vo.mid}</td>
					<td>${vo.pwd}</td>
					<td>${vo.name}</td>
					<td>${vo.point}</td>
					<td>${vo.lastDate}</td>
				</tr>
			</c:forEach>
		</table>
		<hr/>
		<p>
			<pre>
				<h2>등록된 회원 중 홀수번째 가입한 회원만 출력하시오</h2>
			</pre>
			
		<table class="table table-hover">
			<tr class="table-dark text-dark">
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>성명</th>
				<th>포인트</th>
				<th>최근방문일</th>
			</tr>
			<c:set var="cnt" value="0" />
			<c:forEach var="vo" items="${vos}" varStatus="st">
				<c:choose>
					<c:when test="${st.count % 2 != 0}">
						<tr>
							<td>${st.count}</td>
							<td>${vo.mid}</td>
							<td>${vo.pwd}</td>
							<td>${vo.name}</td>
							<td>${vo.point}</td>
							<td>${vo.lastDate}</td>
						</tr>
					<%-- ${cnt=cnt*1+1} --%>
						<c:set var="cnt" value="${cnt + 1}"/>
					</c:when>
				</c:choose>
			</c:forEach>
		</table>
		전체 건수? ${cnt}
	</div>
</body>
</html>