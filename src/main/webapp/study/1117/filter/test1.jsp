<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>filter연습(한글처리)</title>
	<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<h1>회원정보</h1>
		<form name="myform" method="post" action="${pageContext.request.contextPath}/filter/Test1">
			<p>
				성명 : <input type="text" name="name" value="홍길동" class="form-control"/>			
			</p>
			<p>
				성별 : <input type="radio" name="gender" value="남성" checked/>남자			
					<input type="radio" name="gender" value="여성" />여자	
			</p>
			<p>
				직업 : <input type="text" name="job" value="직업" class="form-control" checked/>남자			
			</p>
			<p>
				<button class="btn btn-danger">전송</button>
			</p>
		
		</form>
	</div>
<p><br/><p>
</body>
</html>