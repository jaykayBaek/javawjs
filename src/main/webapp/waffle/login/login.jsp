<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String email = "";
	
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("cEmail")) {
				email = cookies[i].getValue();
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/waffle/login/signin.css">
	<style>
		html, body, div, span, applet, object, iframe,
		h1, h2, h3, h4, h5, h6, p, blockquote, pre,
		a, abbr, acronym, address, big, cite, code,
		del, dfn, em, img, ins, kbd, q, s, samp,
		small, strike, strong, sub, sup, tt, var,
		b, u, i, center,
		dl, dt, dd, ol, ul, li,
		fieldset, form, label, legend,
		table, caption, tbody, tfoot, thead, tr, th, td,
		article, aside, canvas, details, embed, 
		figure, figcaption, footer, header, hgroup, 
		menu, nav, output, ruby, section, summary,
		time, mark, audio, video {
			margin: 5px;
			padding: 0px;
			border: 0px;
			font-size: 100%;
			font: inherit;
			vertical-align: baseline;
		    text-decoration: none;
		}
		article, aside, details, figcaption, figure, 
		footer, header, hgroup, menu, nav, section {
			display: block;
		}
		body {
			line-height: 1;
		    font-family: 'helvetica','Noto Sans KR', sans-serif;
		}
		ol, ul {
			list-style: none;
		}
		blockquote, q {
			quotes: none;
		}
		blockquote:before, blockquote:after,
		q:before, q:after {
			content: '';
			content: none;
		}
		table {
			border-collapse: collapse;
			border-spacing: 0;
		}
		body{
		    width: 100%;
		}
		button, input{
		    border: 0px;
		}
		#main{
		    min-width: 800px;
		}
		.signin{
		    width:320px;
		    height: 676px;
		    margin: 0 auto;
		}
		.signin_title{
		    font-size: 2rem;
		    text-align: center;
		}
		.signin_message{
		    text-align: center;
		}
		.signin_form{
		    display: flex;
		    flex-flow: column wrap;
		}
		.input{
		    width:100%;
		    height: 48px;
		    border: 1px solid #dee2e6;
		    border-radius: 4px;
		}
		.signin_btn{
		    background-color: #333533;
		    border-radius: 4px;
		    color: #fff;
		    font-weight: 700;
		    font-size: 1rem;
		    height:48px;
		    width:inherit;
		}
		.main_btn{
		    width:100%;
		}
		.signin_btn:hover{
		    background-color: #070C0D;
		    color: #F2B544;
		    cursor: pointer;
		    transition: background-color 0.2s, color 0.2s;
		}
		
		.signin_check{
		    text-align: right;
		    accent-color: #333533;
		}
		
		.signin_check>input:checked{
		    transition: all 1s;
		
		}
	</style>
</head>
<body>
    <main id="main">
        <section class = "signin">
            <h2 class="signin_title">LOGIN</h2>
            <div class="signin_main">
                <form class="signin_form" action="${pageContext.request.contextPath}/homework/Log_check">
                    <div class="signin_input">
                        <label for="input_email" class="form_label">이메일</label>
                        <input type="text" class="input_email input" id="input_email" name="input_email" value="<%=email %>" placeholder="이메일을 입력하세요.">
                    </div>
                    <div class="signin_check">
                        <input type="checkbox" class="input_email_save check" id="input_email_save" value="checked" name="input_email_save">
                        <label for="input_email_save" id="email_label">이메일 저장</label>
                    </div>
                    <div class="signin_input">
                        <label for="input_pwd" class="form_label">비밀번호</label>
                        <input type="password" class="input_id input" id="input_pwd" name="input_pwd" placeholder="비밀번호를 입력하세요.">
                    </div>
                    <div class="main_btn">
                        <button class="signin_btn">로그인</button>
                    </div>
                </form>
            </div>
            <div class="signin_input"></div>
            <div class="signin_input"></div>
        </section>
    </main>
</body>
</html>