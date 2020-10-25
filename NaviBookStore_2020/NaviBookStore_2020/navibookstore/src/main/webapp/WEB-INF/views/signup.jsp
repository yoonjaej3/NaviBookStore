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
<title>회원가입</title>
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

#imgs{
margin: 0 auto;
width: 225px;
height: 180px;
padding-top: 0px;
}
#imgs img{
width: 100%;
height: 100%;
}
#sec{
margin-top: 0px;
margin: 0 auto;
font-family: fantasy;
font-size: x-large;
border-top: 2px solid black;
border-bottom: 2px solid black;
text-align: center;
width: 400px;
font-weight: bolder;
margin-bottom: 20px;
}
#totalbox{
margin: 0 auto;
height: 500px;
width: 390px;
}
.subbox{
height: 40px;
}
.left{
width: 80%;
float: left;
}
.right{
width: 19%;
float:right;
}
.textt{
text-align: left;
font-family: fantasy;
font-size: medium;
font-weight: 700;
}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

let user_id
function userCreate(){
	f.action="signup.do";
	f.method="post";
	f.submit();
}


$(function(){

	//비밀번호 확인
		$('#password2').blur(function(){
		   if($('#userpwd').val() != $('#password2').val()){
		    	if($('#password2').val()!=''){
			    alert("비밀번호가 일치하지 않습니다.");
		    	    $('#password2').val('');
		          $('#password2').focus();
		       }
		    }
		})  	   
	});




$(function(){
$("#checkid").click(function(){
	user_id =$('#id').val();
	$.ajax({
		url:'${pageContext.request.contextPath}/user/idCheck?userId='+user_id,
		type : 'GET',
		contentType: "application/json; charset=UTF-8",
		success : function(data){//일단 내가 설정하기론 true false했음
			console.log("중복인가 아닌가 1 이면 중복 0은 아님"+data)
			
			if(data>0){
				swal("Warning","사용 불가능한 아이디 입니다.","error")
				
			}else if(data==0){
				if(user_id == ""){
					swal("Info","아이디를 입력해 주세요.","info")
					
				}
				else{
					swal("YES", "사용가능한 아이디 입니다!", "success")
				}
			
			}
			
		},//success
		 error : function() {
			console.log("실패");
		}//error
	});//ajax
	


	
});//checkid
});//fucntion


	

	
</script>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>
<div id="center">
 <form name ="f" action = "" method = "post">
	<div id="imgs">
		<img  id="title" alt="~~~" src="resources/img/littleT.png">
	</div>
	<div id="sec">회원가입</div>

<div id="totalbox">
	<div class="textt">이름</div>
	<div class="subbox">
		<input type="text" class="form-control" id = "name" name = "username" placeholder = "이름 입력">
	</div>
	<div class="textt">아이디</div>
	<div class="subbox">
		<div class="left"><input type="text" class="form-control" id = "id" name = "userid" value = "${user.userid}"placeholder = "아이디 입력"></div>
		<div class="right"><button type = "button" id = 'checkid' name = 'checkid' class = "btn btn-primary" style="background-color: black; border-color: gray">중복확인</button></div>
	</div>
	<div class="textt">비밀번호</div>
	<div class="subbox">
	<input type="password" class="form-control" id = "userpwd" value = "${user.userpwd}" name = "userpwd" placeholder = "비밀번호입력">
	</div>
	<div class="textt">비밀번호 확인</div>
	<div class="subbox">
		 <input type="password" class="form-control" id = "password2" name = "password2" placeholder = "비밀번호확인">
	</div>
	<div class="textt">전화번호</div>
	<div class="subbox">
		<input type="text" class="form-control" id = "phone" name = "phone" value = "${user.phone }"placeholder = "010-0000-0000">
	</div>
	<div class="textt">주소</div>
	<div class="subbox">
		<input type="text" class="form-control" id = "address" name = "address" value = "${user.address }" placeholder = "주소">
	</div>
	<div style="margin-top: 2px;"></div>
	<div class="subbox"><button type="button" class="btn btn-primary btn-lg btn-block" 
	id = "signup" name = "signup" onclick="userCreate()" style="background-color: black; border-color: gray">가입하기</button></div>
</div>
</form>

</div>
<%@ include file="/common/footer.jsp" %>
</div>

</body>
</html>