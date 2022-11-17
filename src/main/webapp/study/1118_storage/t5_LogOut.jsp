<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/* 세션 하나당 4k의 용량이 들어가는데, 세션 10개를 사용하고 100명의 사용자가 이용한다면 엄청난 메모리 낭비기에
		로그아웃하면 무조건 세션 종료해야함.
	*/
	String mid= ""+session.getAttribute("sMid");
	session.invalidate();

%>
<script>
/*   alert("${sName}님 로그아웃 완료!!"); */
  alert("<%=mid%>님 로그아웃 완료!!");
  location.href = "t5_Login.jsp";
</script>