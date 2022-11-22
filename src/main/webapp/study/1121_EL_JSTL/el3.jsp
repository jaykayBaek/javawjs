<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
	<div class = "container">
		<h2>EL을 통한 배열처리2</h2>
		<hr/>
		<%
			int[] num1 = new int[5];
			for(int i=0; i<num1.length; i++){
				num1[i] = (i+1) * 10;
			}
			pageContext.setAttribute("num1", num1);
			
			int[] num2 = {10, 2, 3, 4, 50};
			pageContext.setAttribute("num2", num2);
		%>
		
		<h3>num1 배열에 담긴 값을 forEach를 통한 출력</h3>
		<c:forEach var="num" items="${num1}" varStatus="st">
			${st.count}.${num}<br/>
		</c:forEach>
		<br/>
		<h3>EL에서의 연산 처리</h3>
		1. num1[0] == num[2] : ${num1[0] == num[2]}<br/>
		2. num1[0] == num[2] : ${num1[0] != num[2]}<br/>
		3. num1[0] == num[2] : ${num1[0] eq num[2]}<br/>
		4. num1[0] == num[2] : ${num1[0] != num[2]}<br/>
		5. num1[0] == num[2] : ${num1[0] ne num[2]}<br/>
		6. num1[0] > num[2] : ${num1[0] > num[2]}<br/>
		7. num1[0] gt num[2] : ${num1[0] gt num[2]}<br/>
		8. num1[0] < num[2] : ${num1[0] < num[2]}<br/>
		9. num1[0] lt num[2] : ${num1[0] lt num[2]}<br/>
		10. num1[0] >= num[2] : ${num1[0] >= num[2]}<br/>
		11. num1[0] ge num[2] : ${num1[0] ge num[2]}<br/>
		12. num1[0] <= num[2] : ${num1[0] <= num[2]}<br/>
		13. num1[0] le num[2] : ${num1[0] le num[2]}<br/>
		
		<%
			ArrayList<String> arrVos = new ArrayList<>();
			arrVos.add("홍길동");
			arrVos.add("김말숙");
			arrVos.add("강감찬");
			arrVos.add("이기자");
			arrVos.add("소나무");
			
			pageContext.setAttribute("arrVos", arrVos);
		%>
		<h2>EL표기법을 통한 객체(ArrayList) 출력</h2>
		arrVos : ${arrVos}<br/>
		arrVos[2] : ${arrVos[2]}<br/>
		<c:forEach var="vo" items="${arrVos}" varStatus="st">
			${st.count}.${vo}<br/>
		</c:forEach>
		<%
			HashMap<String, String> mapVos = new HashMap<>();
			mapVos.put("성명", "홍길순");
			mapVos.put("나이", "25");
			mapVos.put("주소", "서울");
			
			pageContext.setAttribute("mapVos", mapVos);
		%>
		<h2>EL표기법으로 객체(map) 출력</h2>
		mapVos : ${mapVos}<br/>
		mapVos["성명"] : ${mapVos["성명"]}<br/>
		<%
			pageContext.setAttribute("var1", "널값처리");
			pageContext.setAttribute("var2", "");
			pageContext.setAttribute("var3", null);
		%>
		<p>
		<h2>Null값의 처리</h2>
		var1 : ${var1}<br/>
		var3 : ${var3}<br/>
		var2 : ${var2}<br/>
		== 비교1 : ${var1 == "" }<br/>
		== 비교2 : ${var2 == "" }<br/>
		== 비교3 : ${var3 == "" }<br/>
		null 비교1 : ${var1 == null }<br/>
		null 비교2 : ${var2 == null }<br/>
		null 비교3 : ${var3 == null }<br/>
		</p>
		<p>
			연산자 : empty, !empty(공백과 null을 같은 값으로 취급한다.) <br/>
			""와 empty 비교1 : ${empty var1 }<br/>
			""와 empty 비교2 : ${empty var2 }<br/>
			""와 empty 비교3 : ${empty var3 }<br/>
			null과 !empty 비교1 : ${!empty var1 }<br/>
			null과 !empty 비교2 : ${!empty var2 }<br/>
			null과 !empty 비교3 : ${!empty var3 }<br/>
		</p>
	</div>
</body>
</html>