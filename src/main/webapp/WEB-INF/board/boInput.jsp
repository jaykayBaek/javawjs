<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script>
		'use strict';
		let f_check = () => {
			let title = myform.title.value;
			let content = myform.content.value;
			
			if(title.trim()==""){
				alert("게시글 제목을 입력해주세요.");
				myform.title.focus();
			}
			else if(content.trim()==""){
				alert("게시글 내용을 입력해주세요.");
				myform.content.focus();
			}
			else{
				myform.submit();
			}
		}
	</script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<div class = "container">
		<form name = "myform" method="post" action="${ctp}/boInputOk.bo">
			<h2 class="text-center">게시판 글 쓰기</h2>
			<table class="table">
				<tr>
					<th>글쓴이</th>
					<td>${sNickName}</td>
				</tr>
				<tr>
					<th>글제목</th>
					<td><input type="text" name="title" placeholder="제목을 입력해주세요" autofocus required class="form-control"/></td>
				</tr>
				<tr>
					<th>email</th>
					<td><input type="text" name="email" placeholder="이메일을 입력해주세요" value = "${email}" class="form-control"/></td>
				</tr>
				<tr>
					<th>homePage</th>
					<td><input type="text" name="homePage" placeholder="홈페이지 주소를 입력해주세요" value = "${homePage}" class="form-control"/></td>
				</tr>
				<tr>
					<th>글내용</th>
					<td><textarea rows="6" name="content" class="form-control" required></textarea></td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
						<div class="btn-group" role="group" aria-label="Basic example">
							<button type="button" onclick="f_check()" class="btn btn-success">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
							  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
							  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
							</svg>
							작성
							</button>
							<button type="reset" class="btn btn-warning">
							다시입력
							</button>
							<button type="button" onclick="location.href='${ctp}/boList.bo'" class="btn btn-info">
							돌아가기
							</button>
						</div>
					</td>
				</tr>
			</table>
			<input type="hidden" name ="hostIp" value="${pageContext.request.remoteAddr}">
		</form>
	</div>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>