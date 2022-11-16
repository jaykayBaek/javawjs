<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
        'use strict';
        let idx = 0;
        let total = 0;
        let add_product_list = () => {
            let price_total = 0;
            let formTag = "";
            idx++;
            formTag += '<p id = "idx'+idx+'">';
            formTag += '<span>구매자</span>';
            formTag += '<input type="text" name="buyer" id="buyer" value = "'+document.getElementById("buyer").value+'" readonly/>';
            formTag += '<span>상품명</span>';
            formTag += '<input type="text" name="product_name" id="product_name" value = "'+document.getElementById("product_name").value+'" readonly />';
            formTag += '<span>가격</span>';
            formTag += '<input type="number" name="product_price" id="product_price" value = "'+document.getElementById("product_price").value+'" readonly/>';
            formTag += '<span>수량</span>';
            formTag += '<input type="number" name="product_cnt" id="product_cnt" value = "'+document.getElementById("product_cnt").value+'" readonly/>';
            formTag += '<span>상품분류</span>';
            formTag += '<input type="text" name="sorting_list" id="sorting_list" value = "'+product.options[product.selectedIndex].value+'" readonly/>';
            formTag += '<button onclick = "delete_row('+idx+')">삭제</button>';
            formTag += '</p>';
            demo.innerHTML += formTag;
            // formTag += '<div class = "demo"></div>';
        }

        let delete_row = (idx) => {
            let tmpIdx = "idx"+idx;
            let item = document.getElementById(tmpIdx);
            item.parentNode.removeChild(item);
        }
    </script>
</head>
</head>
<body>
	<section>
		<article>
			<h1>상품가격구하기</h1>
			<div>
				<span>구매자</span> <span><input type="text" name="buyer"
					id="buyer" required/></span>
			</div>
			<div>
				<span> <span>상품분류</span> <select name="product" id="product">
						<option name=product value="가전제품">가전제품</option>
						<option name=product value="전자기기">전자기기</option>
						<option name=product value="가구">가구</option>
				</select>
				</span>
			</div>
			<div>
				<span>상품명</span> <span><input type="text" name="product_name"
					id="product_name"/></span>
			</div>
			<div>
				<span>상품가격</span> <span><input type="text"
					name="product_price" id="product_price"/></span>
			</div>
			<div>
				<span>수량</span> <span><input type="number" name="product_cnt"
					id="product_cnt"/></span>
			</div>
			<div>
				<button onclick="add_product_list()">상품추가하기</button>
			</div>
			
			<form name="myform" method="post"
				action="<%=request.getContextPath()%>/h1114">
				<p>
				<div id="demo"></div>
				</p>
				<p>
				<div>
					<span>상품등록하기</span>
					<span><button>상품등록</button></span>
				</div>
				</p>
			</form>
		</article>
	</section>
</body>
</html>