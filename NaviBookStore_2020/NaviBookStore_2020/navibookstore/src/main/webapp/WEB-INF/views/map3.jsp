<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://maps.google.com/maps/api/js?sensor=false"></script>
<meta charset="UTF-8">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
</style>



<title>환영합니다.</title>

</head>
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

#map{
	width : 600px;
	height : 400px;
	background-color: gray;
	border : 3px solid black;
}
table{
	margin : 0 auto;
	margin-top : 7%;
	/*border : 3px solid black;*/
	border-radius : 5px;
}
/*
#td{
	border : 3px solid black;
}
*/
#details{
	text-align : center;
}
#d1{
	font-size : 20px;
	text-align : center;
	font-family: 'Noto Sans KR', sans-serif;
}
#d2{
	font-size : 15px;
	text-align : center;
	width : 200px;
	font-family: 'Noto Sans KR', sans-serif;
}

</style>
<body>
<div id="container">
<%@ include file="/common/header2.jsp" %>
<div id="center">
<table>
	<tr >
		<td>
			<div id = map> </div>
		</td>
		<td id = "td"> 
		<div id = "d1">도착위치 <br> Navi 부산점</div>
		<br>

		<div id = "d2">
		<button class = "btn btn-success" id = "details">위치 상세보기</button>
		<br>
		<br>
		<br>
		<br>
		<div id = "weather"></div>
		<img src = "#" id = "weatherimg">
		</div>
		</td>
	</tr>
		

</table>


</div>
<%@ include file="/common/footer.jsp" %>
</div>
<script type="text/javascript">
	let p = {
		lat : 35.1702742,
		lng : 129.1310704
	};
	let map = new google.maps.Map(document.getElementById('map'),
									{zoom:15, center:p}); //map객체 생성
	let marker = new google.maps.Marker({
		position : p,
		map : map,
		label : 'Navi 부산점'		
	});
</script>
<script>
$(function(){
	let error;
	let apiurl = "http://api.openweathermap.org/data/2.5/weather?q="+"Busan"+"&appid="+"266b1cd671e1d160d627f5513d795cd6";
	$("#details").click(function(){
		location.href = "https://www.google.co.kr/maps/place/%EC%95%8C%EB%9D%BC%EB%94%98+%EC%A4%91%EA%B3%A0%EC%84%9C%EC%A0%90+%EB%B6%80%EC%82%B0%EC%84%BC%ED%85%80%EC%A0%90/@35.1702742,129.1310704,17.04z/data=!4m8!1m2!2m1!1z7JWM652865SY67aA7IKw!3m4!1s0x356892c099aec7bd:0x867474f7319ccf8f!8m2!3d35.1702405!4d129.1323684?hl=ko"			
	});//#detail close
	
		$.ajax({
			url:apiurl,
			dataType:'json',
			type:'get',
			success: function(data){
				console.log(data.main.temp-273.15);
				console.log(data.weather[0].main);
				console.log(data.weather[0].description);
				let tag = "현재부산점의 날씨는..<br> "+ Math.round(data.main.temp-273.15) +"℃ / "+ data.weather[0].main;
				if(data.weather[0].main=="Clear"){
					$('#weatherimg').attr('src',"${pageContext.request.contextPath}/resources/img/맑음.JPG")
				}
				else if(data.weather[0].main=="Thunderstorm"){
					$('#weatherimg').attr('src',"${pageContext.request.contextPath}/resources/img/번개.JPG")
				}
				else if(data.weather[0].main=="Drizzle" || data.weather[0].main=="Rain"){
					$('#weatherimg').attr('src',"${pageContext.request.contextPath}/resources/img/비.JPG")
				}
				else{
					$('#weatherimg').attr('src',"${pageContext.request.contextPath}/resources/img/구름.JPG")
				}
				$('#weather').html(tag);
			},//success
			error : function(e){
				error = e;
				alert("ajax 통신에러");
			}//error
			
		});//ajax

})
	
</script>

</body>
</html>