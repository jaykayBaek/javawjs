<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script>
    'use strict';
    let newText = "";
    let idx = 0;

    // 클릭할때마다 입력폼 추가하기 : 각 TextField마다 고유한 id를 지정한다.(삭제후 추가필드에 대한 처리)
    function inputBox() {
      idx++;
      newText = '<div id="proTxt'+idx+'" class="mb-3">';
      newText += idx + '. 상품명:<input type="text" name="product" id="product'+idx+'" size="5" /> &nbsp;';
      newText += '가격:<input type="text" name="price" id="price'+idx+'" value="0" size="3" /> &nbsp;';
      newText += '수량:<input type="text" name="su" id="su'+idx+'" value="1" size="2" /> &nbsp;';
      newText += "<input type='button' value='"+idx+".삭제' onclick='deleteBox("+idx+")' /><br/>";
      newText += '</div>';
      demo.innerHTML += newText;
    }

    // 삭제버튼 클릭시 동적텍스트박스 삭제하기
    function deleteBox(idx) {
      let proTxt = "proTxt" + idx;
      let item = document.getElementById(proTxt);
      item.parentNode.removeChild(item);
    }

    function reloadCheck() {
      idx = "";
      location.reload();
    }
    
    // 값 체크후 전송하기
    function fCheck() {
    	
    }
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>판매 상품 등록</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/j1114_Exam">
    <p>
      <input type="button" value="입력창추가" onclick="inputBox()" size="1" />
      <input type="button" value="입력창모두제거" onclick="reloadCheck()"/>
    </p>
    <div id="demo"></div>
    <p><input type="button" value="상품가격계산" onclick="fCheck()" class="btn btn-success form-control"/></p>
  </form>
</div>
<p><br/></p>
</body>
</html>