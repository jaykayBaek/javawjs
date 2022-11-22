<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>colorButton.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <div class="w3-container">
	  <h2>Buttons (w3-button)</h2>
	  <input type="button" class="btn w3-black" value="Input Button">
	  <button class="btn w3-black">Button Button</button>
	  <a href="#" class="btn w3-black">Link Button</a>
	</div>
	<hr/><br/>
  <div class="w3-container">
	  <h2>Buttons (w3-button)</h2>
	  <input type="button" class="btn w3-black w3-hover-orange" value="Input Button">
	  <button class="btn w3-black">Button Button</button>
	  <a href="#" class="btn w3-black">Link Button</a>
	  <hr/>
	  <div style="width:400px; height:200px;" class="w3-orange">
	  	hello
	  </div>
	</div>
</div>
<p><br/></p>
</body>
</html>