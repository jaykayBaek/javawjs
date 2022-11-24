<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
	.nav-link:active{
		transition: all 2s;
	}
  	body{
	  	font-family: 'Nanum Gothic', sans-serif !important;
  	}
</style>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="http://192.168.50.211:9090/javawjsp/">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${ctp}/guest/guList.gu">Guest</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Board</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">PDS(자료실)</a>
      </li>    
      <div class="dropdown">
      <li class="nav-item">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Study</a>
        <div class="dropdown-menu">
	      <a class="dropdown-item" href="${ctp}/pass.st">비밀번호암호화</a>
	      <a class="dropdown-item" href="#">JSP</a>
	      <a class="dropdown-item-text" href="#">http</a>
  		</div>
      </li> 
      </div>   
    </ul>
  </div>  
</nav>
