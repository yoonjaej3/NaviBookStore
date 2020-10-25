<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">

<style>
#header{
height: 50px;
background-color: black;
}

</style>

<div id="header">
<ol class="breadcrumb" id="head1" style="justify-content: flex-end; background-color: black">
  <li class="breadcrumb-item" style="visibility: hidden;"><a href="${pageContext.request.contextPath}/index.jsp" style="color:white; visibility: hidden;" >home</a></li>
  <c:if test="${empty login}">
  <li class="breadcrumb-item" style="visibility: hidden;"><a href="${pageContext.request.contextPath}/login.do" style="color: gray;visibility: hidden;">Login</a></li>
  </c:if>
   <c:if test="${!empty login }">
  <li class="breadcrumb-item"style="visibility: hidden;"><a href="${pageContext.request.contextPath}/logout.do;" style="color: gray; visibility: hidden;">Logout</a></li>
  </c:if>
</ol>
</div>