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
	<jsp:include page="/include/header.jsp"/>
	<div class = "container">
		<h2>관리자인증</h2>
		<form name="myform" method="post" action="${ctp}/adminLoginOk.gu">
			<table class="table table-bordered">
				<tr>
					<th>
						<label for="mid">
							아이디
						</label>
					</th>
					<td><input type="text" name="mid" id="mid" class="form-control" autofocus required></td>
				</tr>
				<tr>
					<th>
						<label for="pwd">
							비밀번호
						</label>
					</th>
					<td><input type="password" name="pwd" id="pwd" class="form-control" required></td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
					<button class="btn btn-success">관리자로그인</button>
					<button type="reset" class="btn btn-danger">다시입력</button>
					<button type="button" onclick="location.href='${ctp}/guList.gu';" class="btn btn-warning">돌아가기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>