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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
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
h1{
margin: 0 auto;
margin-top: 40%;
font-family: 'Nanum Myeongjo', serif;
text-align: center;
color: white;
text-shadow: 2px 2px 2px gray;
}
#center{
padding-bottom: 50px;
}


#search{
margin: 0 auto;
margin-top: 20px;
width: 500px;
height: 50px;
background-color: white;
border-radius: 5px;
}
#inbtn{
background-color: transparent;
border: 0px;
}
#btn{
border: 0px;
background-color: white;
border-left: 2px solid;
}

</style>
</head>
<body>

<div id="container">
<%@ include file="common/header.jsp" %>
<div id="center">

<div style="margin: 0 auto; margin-top: 300px;">
 	<h1>일상에 품격을 더하다</h1>
 	</div>
 	<form method="post" action="list2.do">
	<div id="search">
	<input id="inbtn" type="text" name="searchContent" placeholder="검색어를 입력하세요." 
	style="height: 100%; width:79%; float: left;" />
	 <button id="btn" type="submit" style="height: 100%; width: 20%; 
	 font-size: large; font-weight: bold;">SEARCH</button>
	</div>
</form>


</div>
<%@ include file="common/footer.jsp" %>
</div>

</body>
</html>