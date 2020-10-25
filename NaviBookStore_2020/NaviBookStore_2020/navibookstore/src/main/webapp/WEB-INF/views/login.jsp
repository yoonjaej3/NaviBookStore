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

}
#container{
min-height: 100%;
position: relative;
}

#center{
padding-bottom: 30px;
}

#sec{
margin: 0 auto;
margin-top : 30px;
  width: 400px;
  height: 200px;
}

ul{
	list-style : none;
}
ul>li{
	display : inline;
	padding : 10px;

}

.imgset{
margin: 0 auto;
width: 80%;
}
.imgset>img{
	padding : 50px;
	display: inline-block;
}
#toptitle{
margin: 0 auto;
width: 20%;
height: 20%;
margin-top: 40px;
}
#title{
width: 100%;
height: 100%;

}
</style>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>


<div id="center">

	<div id="toptitle">
		<img  id="title" alt="~~~" src="resources/img/title.png" >
	</div>
<c:if test="${!empty msg}">
	<script>
	alert("${msg}");
	</script>
</c:if>

<div id="sec">
<form action = "login.do" method = "post">
<div class="form-group">
  <input type="text" class="form-control" placeholder="Username" id="id" name="id">
</div>
<div class="form-group">
  <input type="password" class="form-control" placeholder="password" id="password" name="password">
</div>
<button type="submit" class="btn btn-primary btn-lg btn-block"
style="background-color: black; border-color: gray">로그인</button>
</form>
<br>
<ul>
	<li> <a href ="${pageContext.request.contextPath}/signup.do">회원가입</a></li>
	<li> <a href = "${pageContext.request.contextPath}/findid.do">아이디찾기</a></li>
    <li><a href = "${pageContext.request.contextPath}/findpw.do">비밀번호찾기</a> </li>
</ul>
</div>



<div class = "imgset">
  	<img src = "${pageContext.request.contextPath}/resources/img/1.jpg" alt = "이미지1" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/2.jpg" alt = "이미지2" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/3.jpg" alt = "이미지3" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/4.jpg" alt = "이미지4" width = "270px">
</div>
  	
  	
</div>

<%@ include file="/common/footer.jsp" %>
</div>

</body>
</html>