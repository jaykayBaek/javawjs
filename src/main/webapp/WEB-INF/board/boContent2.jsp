<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script>
		'use strict';
		let like_check = () => {
			$.ajax({
				type : "get",
				url : "${ctp}/boLike.bo",
				/* idx가 문자였으면 따옴표 필수임 */
				data : {idx : ${vo.idx}},
				success : function() {
					location.reload();
				},
				error : function(){
					alert("전송이 실패했습니다.");
				}
			});
		}
	</script>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<div class = "container">
		<h2>글 내용보기</h2>
		<table class="table table-borderless">
			<tr>
				<td class="text-right">${vo.hostIp}</td>
			</tr>
		</table>
		<table class="table table-bordered">
			<tr>
				<th>글쓴이</th>
				<td>${vo.memberNickName}</td>
				<th>글쓴날짜</th>
				<td>${vo.dateUpdated}</td>
			</tr>
			<tr>
				<th colspan="3">글제목</th>
				<td>${vo.title}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${vo.email}</td>
				<th>조회수</th>
				<td>${vo.views}</td>
			</tr>
			<tr>
				<th>홈페이지</th>
				<td>${vo.homePage}</td>
				<th>좋아요</th>
				<td>
					<a href="javascript:like_check()">
						❤ ${vo.likes}, 
					</a>
						👍 ${vo.likes},
						👎 ${vo.likes}
				</td>
			</tr>
			<tr>
				<th>글내용</th>
				<td colspan="3">${vo.content}</td>
			</tr>
			<tr>
				<td colspan="4" class="text-center">
					<button type="button" onclick="location.href='${ctp}/boList.bo?pag=${pag}&pageSize=${pageSize}';" class="btn btn-secondary">돌아가기</button>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>