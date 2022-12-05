<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>upLoad3.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
    'use strict';
    function fCheck() {
    	let fName = $("#fName").val();
    	const maxSize = 1024 * 1024 * 20;		// 업로드 가능한 최대파일의 용량은 20MByte로 한다.
    	
    	if(fName.trim() == "") {
    		alert("업로드할 파일을 선택하시오.");
    		return false;
    	}
    	
    	let fileLength = document.getElementById("fName").files.length; // 선택 가능한 파일의 갯수
    	let fileSize = 0;
    	for(let i=0; i<fileLength; i++){
    		fName = document.getElementById("fName").files[i].name;
    		
	    	let ext = fName.substring(fName.lastIndexOf(".")+1);	// 확장자 발췌
	    	let uExt = ext.toUpperCase();
	    	console.log('발췌한 확장자?'+ext);
	    	console.log('대문자 변경? '+uExt);
	    	console.log('파일의 크기? '+fileSize);
			if(uExt != "JPG" && uExt != "GIF" && uExt != "PNG" && uExt != "ZIP" && uExt != "HWP" && uExt != "PPT" && uExt != "PPTX") {
	    		alert("업로드 가능한 파일은 'JPG/GIF/PNG/ZIP/HWP/PPT/PPTX' 입니다.");
	    		return false;
			}
	    	fileSize += document.getElementById("fName").files[i].size;
    	}
		if(fileSize > maxSize) {
    		alert("업로드할 파일의 최대용량은 10MByte 입니다.");
   		}    	
		else {
	    	myform.submit();
    	}
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
  <h2>파일 업로드 테스트 4(멀티파일처리3)</h2>
  <p>여러개 파일을 한번에 선택할 경우는 'ctrl+클릭/shift+클릭' 하세요</p>
  <hr/>
  <form name="myform" method="post" action="${ctp}/upLoad2Ok.st" enctype="multipart/form-data">
    <div>
	    <input type="file" name="fName" id="fName" class="form-control-file border" multiple/>
    </div>
    <input type="button" value="전송" onclick="fCheck()" class="btn btn-primary form-control"/>
    <input type="hidden" name="upLoadFlag" value="4"/>
  </form>
  <hr/><br/>
  <button type="button" onclick="location.href='${ctp}/downLoad.st'" class="btn btn-info form-control">다운로드폼으로</button>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>