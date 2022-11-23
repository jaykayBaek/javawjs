<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>guList.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    th {
      text-align: center;
      background-color: #ccc;
    }
  </style>
  <script>
  	'use strict';
  	let delCheck = (idx) => {
  		let ans = confirm("정말 삭제하시겠습니까?");
  		if(ans) location.href="${ctp}/guDelete.gu?idx="+idx;
  	}
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center">방 명 록 리 스 트</h2>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong><%=request.getRemoteAddr() %></strong> ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  <br/>
  <table class="table table-borderless mb-0">
		<tr>
		  <td>
		  	<c:if test="${sAMid!='admin'}">
			  	<a href="${ctp}/adminLogin.gu" class="btn btn-sm btn-secondary">관리자</a>
		  	</c:if>
		  	<c:if test="${sAMid=='admin'}">
			  	<a href="${ctp}/adminLogout.gu" class="btn btn-sm btn-secondary">관리자로그아웃</a>
		  	</c:if>
		  </td>
		  <td style="text-align:right;"><a href="${ctp}/guest/guInput.gu" class="btn btn-sm btn-dark text-white">글쓰기<span class="badge badge-pill badge-danger">🎈</span>
		  </a></td>
		</tr>
  </table>
  <c:forEach var="vo" items="${vos}" varStatus="st">
	  <table class="table table-borderless mb-0">
			<tr>
			  <td>
		  		방문번호 : ${vo.idx}
	 		  	<c:if test="${sAMid=='admin'}">
			  		<a href="javascript:delCheck(${vo.idx})" class="btn btn-sm btn-danger">삭제</a>
		  		</c:if>
			  </td>
			  <td style="text-align:right;">방문IP : ${vo.hostIp}</td>
			</tr>
	  </table>
	  <div class="table-responsive">
	  <table class="table table-bordered" style="width:100%">
			<tr>
			  <th style="width:20%;">성명</th>
			  <td style="width:25%;">${vo.name}</td>
			  <th style="width:20%;">방문일자</th>
			  <td style="width:35%;">${vo.visitDate}</td>
			</tr>
			<tr>
			  <th>전자우편</th>
			  <td colspan="3">${vo.email}</td>
			</tr>
			<tr>
			  <th>홈페이지</th>
			  <td colspan="3">
			  	<c:if test="${fn:length(vo.homePage) <= 7 }">
			  		<input type="text" value="없음" readonly style="border:0px"/>
			  	</c:if>
			  	<c:if test="${fn:length(vo.homePage) > 7 }">
			  		<a href="${vo.homePage}" target="_blank">${vo.homePage}</a>
			  	</c:if>
			  </td>
			</tr>
			<tr>
			  <th>방문소감</th>
			  <td colspan="3">${fn:replace(vo.content, newLine, '<br/>')}</td>
			</tr>
	  </table>
	  </div>
	  <br/>
	</c:forEach>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>