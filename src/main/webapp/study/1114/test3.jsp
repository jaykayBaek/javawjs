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
		let f_check = () =>{
			let product1 = document.getElementById("product1").value;

			if(product1 == ""){
				alert("첫 번째 상품은 꼭 등록하셔야 합니다!")
				document.getElementById("product1").focus();
			}else{
				myform.submit();
			}
		}
	</script>
</head>
<body>
<p><br/><p>
	<div class = "container">
		<form name = "myform" method = "post" action = "<%=request.getContextPath()%>/j1114_Test3Ok">
			<p>상품1 : <input type="text" name="product" id="product1" autofocus/></p>
			<p>상품2 : <input type="text" name="product" id="product2"/></p>
			<p>상품3 : <input type="text" name="product" id="product3"/></p>
			<p>상품4 : <input type="text" name="product" id="product4"/></p>
			<p>상품5 : <input type="text" name="product" id="product5"/></p>
			<p>상품6 : <input type="text" name="product" id="product6"/></p>
			<p>상품7 : <input type="text" name="product" id="product7"/></p>
			<p>상품8 : <input type="text" name="product" id="product8"/></p>
			<p>
				<button onclick = "f_check()">전송</button>
				<button type = "reset">취소</button>
			</p>
		</form>
		
	</div>
<p><br/><p>

</body>
</html>