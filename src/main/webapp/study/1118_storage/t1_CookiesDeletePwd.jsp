<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookieDelete.jsp -->
<%
	/* 클라이언트에게 쿠키를 요청 */
	Cookie[] cookies = request.getCookies();

	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("cPwd")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	} 
%>

<script>
	alert("비밀번호 쿠키 삭제 완료");
	/* 보내는 명령어 */
	location.href="t1_CookiesMain.jsp";
</script>