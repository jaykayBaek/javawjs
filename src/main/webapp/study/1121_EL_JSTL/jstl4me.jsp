<%@page import="study.database.JusorokVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="study.database.JusorokDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jstl4.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<div class = "container">
		<h2>Function 라이브러리</h2>
		<p>
			사용법 $ { fn:함수명(변수/값)}
		</p>
		<hr/>
		<%
						 //0         1         2
						 //012345678901234567890123456789
			String atom = "Welcome to My Homepage!";
			pageContext.setAttribute("atom", atom);
			pageContext.setAttribute("atom2", atom);
		%>
		<p>
			atom 변수의 값 : <%=atom%> /// ${atom}
			1. atom변수 값의 길이 : <%=atom.length()%> /// ${fn:length(atom)}<br/>
			2. 대문자변환(toUpperCase()) : <%=atom.toUpperCase()%> /// ${fn:toUpperCase(atom)}<br/>
			3. 대문자변환(toLowerCase()) : <%=atom.toLowerCase()%> /// ${fn:toLowerCase(atom)}<br/>
			4-1. 문자열추출1(substring()) : <%=atom.substring(0,3) %> /// ${fn:substring(atom,0,3)}<br/>
			4-2. 문자열추출2(substring()) : <%=atom.substring(2) %> /// <%-- ${fn:substring(atom,2)} --%>
			                                                         ${fn:substring(atom,2,fn:length(atom))}<br/>
			4-3. 문자열추출2(substring()) : <%=atom.substring(2) %> /// ${fn:substring(atom,2,-1)}<br/>
			5. 특정 문자열의 위치값찾기(indexOf()) : <%=atom.indexOf("o") %> /// ${fn:indexOf(atom,'o')}<br/>
			5-2. atom 변수에 기억되어 있는 'o' 문자의 위치를 모두 출력하시오.
			<c:set var="cnt" value="0"/>
			<c:forEach var="i" begin="0" end="${fn:length(atom)-1}">
				<c:if test="${fn:substring(atom, i, i+1) == 'o'}">
					<p>
						<span>문자 'o'의 위치는? ${i} 입니다.</span>
						<c:set var="cnt" value="${cnt+1}"/>
					</p>
				</c:if>
			</c:forEach>
			<p>문자 'o'의 개수는? ${cnt} 입니다.<br/></p>
			5-3 atom변수에 기억되어 있는 문자를 입력받아 그 문자가 두 번째로 기억되어 있는 위치값을 출력하시오
				단, 두 번째 기억값이 없으면 1번째 기업위치를 출력하고 두 번째 값 없음을 함께 출력하시오.
			6. 문자열추출(substringBefore() / substringAfter())<br/>
				'o' 앞의 문자열 출력 : ${fn:substringBefore(atom, 'o')}<br/> 
				'o' 뒤의 문자열 출력 : ${fn:substringAfter(atom, 'o')} <br/>
			6-2. atom 변수에 기억되어 있는 문자를 입력받아 그 문자가 두 번째로 기억되어 있는 위치값을 출력하시오
				단, 두 번째 기억값이 없으면 1번째 기억위치를 출력하고 '두번째 값 없음'을 함께 출력하시오.<br/>
			7. 문자열 분리(split(변수, 분리할 문자) -> 결과를 변수에 담아줘야 한다.)<br/>
				atom 변수의 문자 중'o' 문자를 기준으로 분리하자?<br/>
				<c:set var="arrAtom" value="${fn:split(atom, 'o')}"/>
				<c:forEach var="atom" items="${arrAtom}" varStatus="st">
					${st.count}.${atom}><br/>
				</c:forEach>
				atoms의 전체 길이? ${fn:length(atoms)}<br/>
				예) jusorok 테이블의 전체 건수는?
				<%
					JusorokDAO dao = new JusorokDAO();
					ArrayList<JusorokVO> vos = dao.getMemeberList();
					request.setAttribute("vos", vos);
				%>
				${fn:length(vos)} 건<br/>
			8. 문자열 치환(replace())<br/>
				문제: atom2변수 안의 'My'를 Your로 변경하시오.
				<%=atom.replace("My", "Your")%> / ${fn:replace(atom2, "My", "Your")}<br/>
				
			9. 특정문자 포함유무? contains()<br/>
				atom2 변수에 'o'를 포함하고 있느냐? ${fn:contains(atom2, 'o')}<br/>
				atom2 변수에 'My'를 포함하고 있느냐? ${fn:contains(atom2, 'My')}<br/>
				atom2 변수에 'Your'를 포함하고 있느냐? ${fn:contains(atom2, 'Your')}<br/>
		</p>
	</div>
</body>
</html>