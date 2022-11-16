<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<%@ include file="../../include/bs4.jsp" %>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<H2>성적자료</H2>
		<form name="myform" method="post" action="<%=request.getContextPath()%>/j1116/Test2/4">
			<p>성명 : <input type="text" name="name" value="백정광"/></p>
			<p>학번 : <input type="text" name="hakbun" value="A1806100305"/></p>
			<p>국어 : <input type="number" name="kor" value="100"/></p>
			<p>영어 : <input type="number" name="eng" value="90"/></p>
			<p>수학 : <input type="number" name="math" value="100"/></p>
			<p>사회 : <input type="number" name="soc" value="98"/></p>
			<p>과학 : <input type="number" name="sci" value="100"/></p>
			<p>
				<button class="btn btn-success">전송</button>
				<button type="reset" class="btn btn-warning">다시입력</button>
			</p>
		</form>
	</div>
<p><br/><p>

</body>
</html>