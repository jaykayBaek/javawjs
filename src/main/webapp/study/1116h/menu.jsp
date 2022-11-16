<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<style>
       	body{
	        font-family: 'Noto Sans KR', sans-serif;
	        margin: 0px;
	        padding: 0px;
        }
        section{
            padding-top: 75px;
        }
        a{
            text-decoration: none;
            color: inherit;
        }
        a:hover{
            color:#ffc300;
        }
        nav{
            display:flex;
            flex-flow: row wrap;
            background-color: #003049;
            align-items: center;
            justify-content: center;
            width: 100%;
            height: 75px;
            color: white;
            font-weight: 700;
            position: fixed;
        }
        .navbar-menu{
            display:flex;
            flex-flow: row wrap;
            align-items: center;
            justify-content: space-around;
            width:80%;
            height: 100%;
        }
        .navbar-right{
            display:flex;
            flex-flow: row wrap;
            align-items: center;
            justify-content: center;
        }
        .navbar-left{
            display:flex;
            flex-flow: row wrap;
            align-items: center;
            justify-content: center;
        }
        .navbar-item{
            padding:1rem;
        }
        .navbar-main-text{
        	font-size: 2rem;
        	color: #ffc300;
        }
        .buttons>button:nth-of-type(1){
    		background-color: #48cae4;
    		color: white;
    		border:0px;
    		padding: 6px;
		}
		.buttons>button{
		    width: 80px;
		    height: 30px;
		    border-radius: 3px;
		}
		.buttons>button:hover{
		    cursor: pointer;
		    background-color: #ffc300;
		    transition: background-color 0.5s;
		}
    </style>
</head>
<body>

    <nav>
        <div class="navbar-menu">
            <div class="navbar-right">
                <div class="navbar-logo">
                    <img src="../../images/package.png" alt="상자모양" width="64px"/>
                </div>
                <div class="navbar-item">
                    <span class="navbar-main-text">상품판매관리</span>
                </div>
            </div>
            <div class="navbar-left">
                <div class="navbar-item">
                    <a href ="main.jsp">홈</a>
                </div>
                <div class="navbar-item">
                    <a href ="main.jsp?sw=input">상품등록</a>
                </div>
                <div class="navbar-item">
                    <a href ="main.jsp?sw=list">상품조회</a>
                </div>
                <div class = "navbar-item buttons">
                    <button>로그인</button>
                </div>
            </div>
        </div>
    </nav>

</body>
</html>