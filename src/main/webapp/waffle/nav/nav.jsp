<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
		margin: 0;
		padding: 0;
		border: 0;
		font-size: 100%;
		font: inherit;
		vertical-align: baseline;
	    text-decoration: none;
	    color: #454545;
	}
	/* HTML5 display-role reset for older browsers */
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

	nav{
	    display:flex;
	    flex-flow: row wrap;
	    width: 100%;
	    justify-content: center;
	    align-items: center;
	    height: 64px;
	    position: fixed;
	    background-color: #fff;
	    box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.2);
	    font-weight: lighter;
	}
	
	input, button{
	    border: 0px;
	}
	
	.navbar-menu{
	    display:flex;
	    justify-content: space-around;
	    align-items: center;
	    height: 64px;
	    width: 90%;
	    margin: 0 auto;
	}
	.navbar-left{
	    display:flex;
	    justify-content: left;
	    align-items: center;
	}
	.navbar-right{
	    display:flex;
	    justify-content: right;
	    align-items: center;
	}
	.navbar-item{
	    padding: 8px 16px;
	}
	
	.navbar-item > a span:hover{
	    color:#000;
	    font-weight: bolder;
	}
	
	.input{
	    width: 100%;
	    height: 1.5rem;
	    background-color: transparent;
	}
	.buttons>button{
	    width: 80px;
	    height: 30px;
	    border-radius: 3px;
	    opacity: 0.5;
	}
	.buttons>button:hover{
	    cursor: pointer;
	    transition: opacity 0.3s;
	    opacity: 1;
	}
	.buttons>button:nth-of-type(1){
	    background-color: #48cae4;
	    color: white;
	}
	.buttons>button:nth-of-type(2){
	    background-color: #f76;
	    color: white;
	}
	.searching{
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    background-color: #f6f6f6;
	    border-radius: 1rem;
	}
    </style>
</head>
<body>
    <header>
        <nav>
            <div class = "navbar-menu">
                <div class = "navbar-left">
                    <div class = "navbar-logo">
                        <img src="../../images/waffle.jpg" alt="와플" width="150px"/>
                    </div>
                    <div class = "navbar-item">
                        <a href=""><span>강의</span></a>
                    </div>
                    <div class = "navbar-item">
                        <a href=""><span>커뮤니티</span></a>
                    </div>
                    <div class = "navbar-item">
                        <a href=""><span>로드맵</span></a>
                    </div>
                    <div class = "navbar-item">
                        <a href=""><span>test1</span></a>
                    </div>
                </div>
                <div class = "navbar-right">
                    <div class = "navbar-item searching">
                        <span><img src="../../images/search.png" alt="돋보기"></span>
                        <input type="text" class="input" name="input">
                    </div>
                    <div class = "navbar-item buttons">
                        <button>로그인</button>
                        <button>회원가입</button>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <footer>

    </footer>
</body>
</html>