<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>calcOk.jsp</title>
	<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<div class = "container">
		<h2>계산된 결과 출력</h2>
		<p>
			<div>
			${su1} ${opt} ${su2} = ${res}
			</div>
		</p>
		<p>
			<a href="${ctp}/Calc.calc" class="btn btn-secondary">돌아가기</a>
		</p>
	</div>
</body>
</html>