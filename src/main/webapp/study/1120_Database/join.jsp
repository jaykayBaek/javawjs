<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<script>
		'use strict';
		let f_check = ()=>{
			//폼의 내용을 가져와서 유효성 검사(아이디, 비밀번호, 성명은 모두 20자 이하) 
			let mid = document.getElementById("mid").value;
			if(mid.trim() == ""){
				alert("아이디를 입력해주세요.");
				document.getElementById("mid").focus();
			}
			else{
				myform.submit();
			}
		}
	</script>
</head>
<body>
	<div class = "container">
		<h2>회원가입</h2>
		<form name="myform" method="post" action="${pageContext.request.contextPath}/database/JoinOk">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="mid" id="mid" class="form-control" required autofocus/></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd" id="pwd" class="form-control" required/></td>
				</tr>
				<tr>
					<th>성명</th>
					<td><input type="text" name="name" id="name" class="form-control" required/></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<button type="button" onclick="f_check()" class="btn btn-success mr-3">회원가입</button>
						<button type="reset" class="btn btn-warning mr-3">다시입력</button>
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/study/1120_Database/login.jsp';" class="btn btn-danger">돌아가기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>