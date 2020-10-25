<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>환영합니다.</title>
<style type="text/css">

html,body {
    margin:0;
    padding:0;
    height:100%;
	background-image: url("${pageContext.request.contextPath}/resources/img/background.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
#container{
min-height: 100%;
position: relative;
}

#center{
padding-bottom: 50px;
}
</style>
</head>
<body>
<div id="container">
<%@ include file="common/header.jsp" %>
<div id="center">






</div>
<%@ include file="common/footer.jsp" %>
</div>

</body>
</html>