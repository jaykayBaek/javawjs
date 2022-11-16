<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<%-- <form name="myform" method="post" action="<%=request.getContextPath()%>/j1116/Test1"> --%>
		<form name="myform" method="post" action="test1Ok.jsp">
			<div><h2>로그인</h2></div>
			<p>
				아이디:<input type="text" name="mid" id = "mid" value = "admin" placeholder = "아이디를 입력하세요." autofocus required class="form-control"/>
			</p>
			<p>
				비밀번호:<input type="password" name="pwd" id = "pwd" value = "1234" class="form-control"/>
			</p>
			<p>
				성명:<input type="text" name="name" id = "name" value = "백정광" class="form-control"/>
			</p>
			<p>
				<input type="submit" value = "전송" class = "btn btn-success" />
				<input type="reset" value = "다시입력" class = "btn btn-warning" />
			</p>
		</form>
	</div>
<p><br/><p>

</body>
</html>