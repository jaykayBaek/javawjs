<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookieSave.jsp -->
<!-- 쿠키 저장 이후, 메시지를 띄우고자 한다. -->
<!-- Jsp 안에서 서블릿 코드를 쓰고자 한다.< %로 작성 -->
<%
	/*           (쿠키가 저장하는 변수명, 사용하는 변수명)*/
	/* String mid = request.getParameter(); */
	String mid = "hkd1234";
	Cookie cookieMid = new Cookie("cMid", mid);
	/*
	쿠키는 만들어지면 쿠키의 만료시간을 만들어주어야 사용가능.
	단위 : 초단위 (자바처럼 1/1000초 아님)
	*/
	cookieMid.setMaxAge(60*60*24);
	
	String pwd = "1234";
	Cookie cookiePwd = new Cookie("cPwd", pwd);
	cookiePwd.setMaxAge(60*60*24);
	
	String job = "학생";
	Cookie cookieJob = new Cookie("cJob", job);
	cookieJob.setMaxAge(60*60*24);
	
	/* 쩜으로 되어있는 쿠키를(메모리에 올라갔다.) 이제 쿠키를 클라이언트에 저장시켜줘야 한다.(사용자 컴퓨터에) */
	response.addCookie(cookieMid);
	response.addCookie(cookiePwd);
	response.addCookie(cookieJob);
%>
<script>
	alert("쿠키에 저장 완료!");
	/* 보내는 명령어 */
	location.href="t1_CookiesMain.jsp";
</script>