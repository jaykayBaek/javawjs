<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>form.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<div class = "container">
		<h2>자료전송연습</h2>
<!-- 		<form name="myform" method="post" action="el1.jsp"> -->
		<form name="myform" method="post" action="${pageContext.request.contextPath}/study/el_jstl1/El1">
			<div>
				atom : <input type="text" name="atom" value="Seoul" class="form-control"/>
			</div>
			<div>
				성명 : <input type="text" name="name" value="백정광	" class="form-control"/>
			</div>
			<div>
				첫번째 수 : <input type="text" name="su1" value="1" class="form-control"/>
			</div>
			<div>
				두번째 수 : <input type="text" name="su2" value="2" class="form-control"/>
			</div>
			<div>
				<button class="btn btn-success form-control">전송</button>
			</div>
		</form>
	</div>
</body>
</html>