<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookieDelete.jsp -->
<%
	/* 클라이언트에게 쿠키를 요청 */
	Cookie[] cookies = request.getCookies();

	for(int i=0; i<cookies.length; i++){
		/* 쿠키를 삭제한다는 것은, 쿠키의 만료시간을 0으로 설정하여 쿠키를 제거한다는 것이다. */
		cookies[i].setMaxAge(0);
		/*
		클라이언트에 저장되어 있는 쿠키를 삭제한다.
		앞단에서 쿠키의 저장시간을 0초로 지정하였기 때문에 클라이언트 컴퓨터가 만료시간이 0이 되어있는 쿠키를 자동으로 제거한다.
		*/
		response.addCookie(cookies[i]);
		
	}
		/*
		문제점. 중요한 정보는 살려주고 원하는 쿠키만 지워주고 싶다. ex. 아이디는 유지하고 비밀번호만 유지하고 싶다.
		=> 쿠키의 읽어온 값의 name을 읽어와서 쿠키의 시간을 0초로 만들기 전에 if로 비교하면 된다.
		문제점. 쿠키의 값이 없을 경우 nullPointerException이 나올 수 있으니 유효성 검사를 무조건 해줘야 한다.
		*/
/* 	if(cookies != null){
		
		for(int i=0; i<cookies.length; i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
			
		}
	} */
%>

<script>
	alert("쿠키 삭제 완료");
	/* 보내는 명령어 */
	location.href="t1_CookiesMain.jsp";
</script>