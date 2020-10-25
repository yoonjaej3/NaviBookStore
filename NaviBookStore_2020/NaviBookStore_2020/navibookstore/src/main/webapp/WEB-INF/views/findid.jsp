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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<meta charset="UTF-8">
<title>ID 찾기</title>
<style type="text/css">

html,body {
    margin:0;
    padding:0;
    height:100%;
	background-repeat: no-repeat;
	background-size: cover;
}
#container{
min-height: 100%;
position: relative;
}

#center{
padding-bottom: 30px;
overflow: auto;
}
#switch{
margin: 0 auto;
width: 400px;
height: 60px;
border-bottom: 2px solid black;
border-top: 2px solid black;
margin-top: 60px;
}
.left{
width: 50%;
height : 100%;
text-align: center;
box-sizing: border-box;
float: left;
line-height: 50px;
font-family: fantasy;
font-size: x-large;
}
.left:hover{
background-color: #e3e3e3;
text-shadow: white;
color: teal;
}
.right{
width: 50%;
height: 100%;
box-sizing: border-box;
text-align: center;
float: right;
line-height: 50px;
font-family: fantasy;
font-size: x-large;
}
.right:hover{
background-color: #e3e3e3;
text-shadow: white;
color: teal;

}
#sec{
margin: 0 auto;
width: 400px;
margin-top : 30px;
}
#imgs{
margin: 0 auto;
margin-top : 70px;
width: 600px;
height: 400px;
}
#imgs img{
width: 100%;
height: 100%;
}

</style>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>
<div id="center">

	

<div id="switch">
	<div class="left" style="cursor:pointer;" 
	onclick="location.href='${pageContext.request.contextPath}/findid.do'">Find ID</div>
	<div class="right" style="cursor:pointer;" 
	onclick="location.href='${pageContext.request.contextPath}/findpw.do'">Find PW</div>
</div>


	
<div id="sec">
<div class="form-group">
  <input type="text" class="form-control" placeholder="Username" id="name" name="name">
</div>
<div class="form-group">
  <input type="password" class="form-control" placeholder="phone number" id="phone" name="phone">
</div>
<button type="submit" class="btn btn-primary btn-lg btn-block" id="find"
style="background-color: black; border-color: gray">아이디찾기</button>
</div>


<div id="imgs">
	<img  id="title" alt="~~~" src="resources/img/littleT.png" >
</div>


</div>
<%@ include file="/common/footer.jsp" %>
</div>

<script type="text/javascript">
$('#find').on('click',function(){
	let form={
			username:$('#name').val(),
			phone:$('#phone').val()
	}
	$.ajax({
			url:'findid.do',		
	type:'POST',
	data:form,
	success:function(data){
		swal("ID",data,"success")
	},
	error:function(){
		swal("경고","해당 계정이 없습니다.","warning")
	}
			
	})
	
	
	
	
})


</script>

</body>
</html>