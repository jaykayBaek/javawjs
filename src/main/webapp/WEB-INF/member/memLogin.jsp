<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script>
	
	</script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<div class = "container p-5">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="container">
				  	<form name="myform" method="post" action="${ctp}/memLoginOk.mem" class="was-validated">
					    <h2 class="font-weight-bold">회원로그인</h2>
					    <p>아이디와 비밀번호를 입력하세요</p>
					    <br/>
					    <div class="form-group">
					      <label for="mid">아이디</label>
					      <input type="text" class="form-control" name="mid" id="mid" value ="${mid}" placeholder="아이디를 입력하세요." required autofocus/>
					      <div class="valid-feedback">사용할 수 있는 아이디입니다.</div>
					      <div class="invalid-feedback">사용하고자 하는 아이디를 다시 확인해보세요.</div>
					    </div>
					    <div class="form-group">
					      <label for="pwd">비밀번호</label>
					      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요." required/>
			    		  <div class="invalid-feedback">사용하고자 하는 비밀번호를 다시 확인해보세요.</div>
					    </div>
					    <div class="form-group">
						    <button type="submit" class="btn btn-primary">로그인</button>
						    <button type="reset" class="btn btn-primary">다시입력</button>
						    <button type="button" onclick="location.href='${ctp}/';" class="btn btn-primary">돌아가기</button>
						    <button type="button" onclick="location.href='${ctp}/memJoin.mem';" class="btn btn-primary">회원가입</button>
					    </div>
					    <div class="row">
					    	<span class="col"><input type="checkBox" name="idCheck" checked/>아이디 저장</span>
							<span class="col">
								<a href="#">아이디 찾기 </a>
								<a href="#">비밀번호 찾기 </a>
							</span>
					    </div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>