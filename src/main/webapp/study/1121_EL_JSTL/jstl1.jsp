<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jstl1.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<div class = "container">
		<h2>JSTP(Java Standard Tag Library)</h2>
		<table class="table">
			<tr>
				<th>라이브러리명</th>
				<th>주소(URL)</th>
				<th>접두어</th>
				<th>기본문법</th>
			</tr>
			<tr>
				<td>Core</td>
				<td>http://java.su.com/jsp/jstl/core</td>
				<td>c</td>
				<td>< c : 태그 ></td>
			</tr>
			<tr>
				<td>Function</td>
				<td>http://java.su.com/jsp/jstl/function</td>
				<td>c</td>
				<td>$ < fn : 태그 ></td>
			</tr>
			<tr>
				<td>Formatting</td>
				<td>http://java.su.com/jsp/jstl/fmt</td>
				<td>fmt</td>
				<td>< fmt : 태그 ></td>
			</tr>
			<tr>
				<td>SQL</td>
				<td>http://java.su.com/jsp/jstl/sql</td>
				<td>sql</td>
				<td>< sql : 태그 ></td>
			</tr>
		</table>
		<br/>
		<hr/>
		<h3>Core라이브러리 : 변수제어(선언/할당), 제어문(조건문, 반복문) 안에서의 변수로 사용</h3>
		<p>
			변수 선언 : < c : set var="변수명" value="값" /> <br/>
			변수 출력 : < c : out var="변수명 or 값" /> <br/>
			변수 제거 : < c : remove var="변수명" /> <br/>
		</p>
		<p> 사용예: <br/>
			su1 변수 선언 후 초기값을 100으로 할당?
			<c:set var="su1" value="100"/><br/>
			su1 변수의 값을 출력?
			<c:out value="${su1}"/> == ${su1}<br/>
		<h2>JSTL 제어문(core 라이브러리에서의 활용)</h3>
		<h3>if문(조건문 : 참일 때만 수행할 내용이 있다. 즉, else 문장이 없다.)</h3>
		<p>
			문법 : < c : if test="$ {조건식}"> 참일 때만 수행할 내용 < / c : if><br/>
			(일반 비교연산수행시에는 '문자'로 비교처리한다. 따라서 숫자로 비교하려면 숫자로 변형해서 비교한다.)<br/>
			<c:set var="su2" value="200"/><br/>
			<c:set var="su3" value=" 200"/><br/>
			1-1. su1 == su2 : <c:if test="${su1==su2}">su1과 su2는 같다</c:if><br/>
			1-2. su1 != su2 : <c:if test="${su1!=su2}">su1과 su2는 다르다</c:if><br/>	
			2-1. su1 >= su2 : <c:if test="${su1==su2}">su1이 su2보다 크거나 같다</c:if><br/>
			<!-- 2-1의 배타적 문장 -->			
			2-2. su1 < su2 : <c:if test="${su1<su2}">su1은 su2보다 작다</c:if><br/>	
			3-1. su2 == su3 : <c:if test="${su2==su3}">su2과 su3는 같다</c:if><br/>
			3-2. su2 != su3 : <c:if test="${su2!=su3}">su2과 su3는 다르다</c:if><br/>
			<!-- 다른 이유? 63라인, '문자'로 인식해서 -->
<%-- 		
			숫자비교하고 싶으면? 먼저 숫자 연산 먼저 하고 비교하면 같은 것으로 나온다. 
			4-1. su2 == su3 : <c:if test="${su2+0==su3}">su2과 su3는 같다</c:if><br/>
			4-2. su2 != su3 : <c:if test="${su2+0!=su3}">su2과 su3는 다르다</c:if><br/>
 --%>		
 			<br/>
 			<hr/>
 			<p>점수를 입력 후 학점 버튼을 클릭하면 해당 학점을 출력하세요.</p>
 			<form name = "myform">
 				<div>
 					성별 : 
 					<input type="radio" name="gender" value="1" checked/>남자
 					<input type="radio" name="gender" value="2"/>여자
 				</div>
 				<div>
	 				점수 : <input type="text" name="jumsu" class="form-control"/>
	 				<button>구하기</button>
 				</div>
 			</form>
 			<div>
 				학점 <span id="demo"></span>
 			</div>
 			
 			<c:set var="cJumsu" value="${param.jumsu}"/>
 			<c:set var="cGender" value="${param.gender}"/>
 			
 			<c:if test="${cJumsu>=60}"><c:set var="grade" value ="D"/></c:if>
 			<c:if test="${cJumsu>=70}"><c:set var="grade" value ="C"/></c:if>
 			<c:if test="${cJumsu>=80}"><c:set var="grade" value ="B"/></c:if>
 			<c:if test="${cJumsu>=90}"><c:set var="grade" value ="A"/></c:if>
 			<c:set var="grade" value ="F"/>
 			
 			<c:if test="${cGender=='1'}"><c:set var="nGender" value="남자"/></c:if>
 			<c:if test="${cGender=='2'}"><c:set var="nGender" value="여자"/></c:if>
 			<div>
 				계산된 학점:${grade}등급입니다.
 				입력한 점수:${cJumsu}<br/>
 				성별 : ${nGender}
 			</div>
 		</p>
 		<hr/>
 		<h2>다중조건 비교(choose ~ when)</h2>
 		<pre>
 			문법 : 
 			< c : choose>
 				< c : when test="조건식1"> 수행할 내용1< /c:when>
 				< c : when test="조건식2"> 수행할 내용2< /c:when>
 				~~~~~~
 				< c : otherwise> 수행할 내용2< /c:otherwise>
 			< /c : choose>
 		</pre>
 		<h3>점수를 입렵 후 학점 버튼을 클릭하면 해당 학점을 출력하시오</h3>
 			<c:choose>
 				<c:when test="${cJumsu>=90}"><c:set var="grade2" value="A"/></c:when>
 				<c:when test="${cJumsu>=80}"><c:set var="grade2" value="B"/></c:when>
 				<c:when test="${cJumsu>=70}"><c:set var="grade2" value="C"/></c:when>
 				<c:when test="${cJumsu>=60}"><c:set var="grade2" value="D"/></c:when>
 				<c:otherwise><c:set var="grade2" value="D"/></c:otherwise>
 			</c:choose>
 			<h2>학점은? ${grade2}</h2>
	</div>
</body>
</html>