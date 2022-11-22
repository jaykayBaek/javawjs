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
		<h2>EL을 통한 배열처리2</h2>
		<hr/>
		<%
			int[] num1 = new int[5];
			for(int i=0; i<num1.length; i++){
				num1[i] = (i+1) * 10;
			}
			pageContext.setAttribute("num1", num1);
		%>
		
		<h3>num1 배열에 담긴 값을 forEach를 통한 출력</h3>
		<c:forEach var="num" items="${num1}" varStatus="st">
			${st.count}.${num}<br/>
		</c:forEach>
	</div>
</body>
</html>