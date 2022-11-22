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
	<div class = "container">
		<h2>반복처리</h2>
		<p>
			문법1 :
			< c : forEach var="변수" items="$ {배열/객체명}" varStatus="매개변수">
				수행할 내용~
			< /c : forEach>
			
			문법2 :
			< c :forEach var="변수" begin="초기값" end="최종값" step="증감값" varStatus="매개변수">
				수행할 내용~
			< /c : forEach>
			문법3 :
			< c :forTokens var="변수" items="{배열/객체명}" delims="구분기호">
				수행할 내용~
			< /c : forEach>
		</p>
		<p>
			사용예1 : <br/>
			<c:forEach var = "i" begin="1" end="10" step="1">
				${i}. 안녕~ &nbsp
			</c:forEach>
		</p>
		<p>
			사용예2 : <br/>
				<table class="table">
					<tr>
						<th>index</th>
						<th>count</th>
						<th>first</th>
						<th>last</th>
					</tr>
			<c:forEach var = "i" begin="5" end="10" step="1" varStatus="st">
				<tr>
					<td>${st.index}</td>
					<td>${st.count}</td>
					<td>${st.first}</td>
					<td>${st.last}</td>
				</tr>
			</c:forEach>
				</table>
		</p>
		<%
			String hobby = "등산/낚시/수영/바둑/영화감상";
			request.setAttribute("hobbies", hobby);
		%>
		<p>
			사용3 :<br/>
			<c:forTokens var = "hobby" items="${hobbies}" delims="/" varStatus="st">
				${st.count}.${hobby}<br/>
			</c:forTokens>
		</p>
		<p>
			문제 : 전송된 취미 중에서 바둑은 빨강색, 수영은 파랑색으로, 나머지는 있는 그대로(검정) 출력하시오.<br/>
			<c:forTokens var = "hobby" items="${hobbies}" delims="/" varStatus="st">
				<c:choose>
					<c:when test="${hobby eq '바둑'}">
						<font style="color:red">${hobby}</font>
					</c:when>
					<c:when test="${hobby eq '수영'}">
						<font style="color:blue">${hobby}</font>
					</c:when>
					<c:otherwise>
						${hobby}
					</c:otherwise>
				</c:choose>
			</c:forTokens>
		</p>
		<h2>2중 for문 활용(구구단)</h2>
		<p>
			이중 반복문을 활용하여, 3단에서 5단까지 출력하시오.
			<c:forEach var="i" begin="3" end="5">
				<span>${i}단</span>
				<c:forEach var="j" begin="1" end="9">
					<span>${i} * ${j} = </span>
					<span>${i*j}</span> 
					<br/>
				</c:forEach>
			</c:forEach>
		</p>
	</div>
</body>
</html>