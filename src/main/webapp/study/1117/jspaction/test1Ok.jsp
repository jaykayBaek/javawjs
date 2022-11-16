<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>test1Ok.jsp</title>
	<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<h2>전송된 자료 결과 보기</h2>
		<p>
			<div class="wrap">
				<p>
					<span>성명</span>
					<span>${vo.name}<span>
					<%-- <%=vo.getName()%> --%>
				</p>			
				<p>
					<span>성별</span>
					<span>${vo.gender}<span>
				</p>			
				<p>
					<span>나이</span>
					<span>${vo.age}<span>
				</p>			
				<p>
					<span>직업</span>
					<span>${vo.job}<span>
				</p>			
				<p>
					<span>주소</span>
					<span>${vo.address}<span>
				</p>			
			</div>
			<div>
				<p><a href="${pageContext.request.contextPath}/study/1117/jspaction/test1.jsp" class="btn btn-success form-control">돌아가기</a></p>
			</div>
		</p>
	</div>
<p><br/><p>

</body>
</html>