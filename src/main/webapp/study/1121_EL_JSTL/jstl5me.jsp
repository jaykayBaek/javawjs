<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		<h2>Format 라이브러리</h2>
		<p><span>형식 문자열을 지정할 때 사용(쉼표, 화폐단위, 백분율)</span></p>
		<p><span>사용법 : < fmt : 명령어 value="$ {값} pattern="표현 패턴" type="화폐단위"</span></p>
		<p>
			<h3>format Number 형식을 지정한 출력</h3>
			1-1. 천 단위마다 콤마표시 : <fmt:formatNumber value="1234567000000"/>
			<%
				int won = 654321;
				pageContext.setAttribute("won", won);
			%>
			1-2. 사용예 : 654321 => <fmt:formatNumber value="${won}"/><br/>
			1-3. 천단위마다 콤마표시 : <fmt:formatNumber value="12345678.567" pattern="#,##0.0"/><br/>
			2-1. 화폐단위 : <fmt:formatNumber value="${won}" type="currency"/><br/>
			2-2. 화폐단위(영문) : : <fmt:formatNumber value="${won}" type="currency" currencyCode="USD"/><br/>
			<c:set var="su1" value="0.9543"></c:set>
			3. 백분율 : <fmt:formatNumber value="${su1}" type="percent"/><br/>
			<h5>formatDate 형식을 지정한 출력</h5>
			<p>
				자바형식의 날짜를 jstl 변수에 저장 : <c:set var="now" value="<%=new java.util.Date()%>"/>
				오늘 날짜 : ${now} <br/>
				<fmt:formatDate value="${now}" />
				<fmt:formatDate value="${now}" pattern="yyyy - MM - dd" /><br/>
				<fmt:formatDate value="${now}" pattern="hh : mm : ss" /><br/>
				<fmt:formatDate value="${now}" pattern="yyyy : MM : dd hh:mm:ss" /><br/>
				<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초" /><br/>
			</p>
			<hr/>
			<h3>국가별설정(locale)</h3>
			<p>
				톰캣 서버의 기본 로케일 ? <%=response.getLocale() %>
				톰캣 서버의 기본 로케일 -> 미국식 변환? <fmt:setLocale value="en_US"/>
				<fmt:formatNumber value="${won}" type="currency"/>
			</p>
			<h3>기타</h3>
			<p>
				지정된 곳으로 이동 : location.href()
				<%-- <c:redirect url="jstl1.jsp"/> --%>
			</p>
			<p>
				절대경로 : 그림1 <img src="${ctp}/images/1.jpg" alt="강아지사진" width="200px"/>
				URL 문 : 그림2 <c:url var="img" value="${ctp}/images/2.jpg"/>
							<img src=${img} alt="강아지사진" width="200px"/>
			</p>
		</p>
	</div>
</body>
</html>