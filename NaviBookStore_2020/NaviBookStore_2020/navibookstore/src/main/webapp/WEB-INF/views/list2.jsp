<%@ page language="java" contentType="text/html; charset=UTF-8"

 

   pageEncoding="UTF-8"%>

 

<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 

<!DOCTYPE html>

 

<html>

 

<head>

 

  <title>Search</title>

 

  <meta charset="utf-8">

 

  <meta name="viewport" content="width=device-width, initial-scale=1">

 

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

 

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

 

</head>

 

<style>

 

#mod_bt{

 

	position: relative;

 

  	left: 50px;

 

}

 

#m_text{

 

	position: relative;

 

  	left: 20px;

 

}

 

#exampleModalLongTitle{

 

	position: relative;

 

  	left: 20px;

 

 

 

}

 

#th-buy{

 

	position: relative;

 

  	left: 50px;

 

}
#search{
margin: 0 auto;
margin-top: 40px;
width: 500px;
height: 50px;
background-color: white;
border-radius: 5px;
border: 2px solid;
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
#imgs{
position : fixed;
bottom: 50px;
right: 10px;
width: 150px;
height: 100px;
}
#imgs img{
width: 100%;
height: 100%;
}
#imgs2{
position : fixed;
bottom: 100px;
right: 10px;
width: 120px;
height: 100px;
}
#imgs2 img{
width: 100%;
height: 100%;
}
 

</style>

 

<script>

 

var i=0;

 

var loc=["Navi 강남점에는","Navi 대전점에는","Navi 부산점에는"];

 

function showMap(index) {

	if(index==0)

	   window.open("<%=request.getContextPath()%>/map.do","map","width=900,height=700");

	else if(index==1)

		   window.open("<%=request.getContextPath()%>/map2.do","map","width=900,height=700");

	else if(index==2)

		   window.open("<%=request.getContextPath()%>/map3.do","map","width=900,height=700");

	}

 

</script>

 

<body>

 

<%@ include file="/common/header.jsp" %>

<a id="imgs" href="#">
	<img  id="title" alt="~~~" src="resources/img/littleT.png"  >
</a>
<a id="imgs2" href="#">
	<img  id="titl2e" alt="~~~" src="resources/img/navi.png"  >
</a>

 <form method="post" action="list2.do">
	<div id="search">
	<input id="inbtn" type="text" name="searchContent" placeholder="검색어를 입력하세요." 
	style="height: 100%; width:79%; float: left;" />
	 <button id="btn" type="submit" style="height: 100%; width: 20%; 
	 font-size: large; font-weight: bold;">SEARCH</button>
	</div>
</form>


<div class="container">

 

<br><br><br>

 

  <table class="table">

 

    <thead>

 

      <tr>

 

        <th>제목</th>

 

        <th>작가</th>

 

        <th>출판사</th>

 

        <th><span id="th-buy">구매/사진</span></th>

 

      </tr>

 

    </thead>

 

    <tbody>

 

     	<c:forEach var="book" items="${books}" varStatus="vs">

 

 

 

	  		<tr class="table-light">

 

	  			<td >${book.bookname}</td>

 

				<td >${book.publisher}</td>

 

				<td >${book.author}</td>

 

				<td >

            	 <c:if test="${empty login}">

 

               <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal${vs.index}" id="viewDetailButton${vs.index}" style="visibility:hidden;">

 

                              구매하기 

 

                </button>

 

              </c:if>

 

              <c:if test="${!empty login }">

 

                 <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal${vs.index}" id="viewDetailButton${vs.index}"style="visibility: visible;">

 

                           구매하기 

 

              </button>

 

              </c:if>

 

			  	<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal2${vs.index}" id="viewDetailButton2${vs.index}">

 

			         사진보기 

 

			  	</button>

 

			  	</td>		

 

			</tr>

 

 

 

			<!-- Modal(수량) -->

 

			<div class="modal fade" id="myModal${vs.index}" role="dialog">

 

			  <div class="modal-dialog modal-dialog-centered" "role="document">

 

			    <div class="modal-content">

 

			      <div class="modal-header">

 

			        <h5 class="modal-title" id="exampleModalLongTitle">수량</h5>

 

			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">

 

			          <span aria-hidden="true">&times;</span>

 

			        </button>

 

			      </div>

 

			      <div class="modal-body">

 

     					<c:forTokens items="${book.count}" delims="-" var="item" varStatus="vss">

 

     					   	<div id="m_text"><script type="text/javascript">

 

     					   		document.write(loc[i]);

 

     					   		i++;

 

     					   		if(i==3)

 

     					   			i=0;

 

     					   	</script>

 

     					   	<span> </span>

 

     					   	${item}

 

     					   	<span>개가 남았습니다.</span>

 

     					   	 <button type="button" class="btn btn-secondary" id="mod_bt" onclick="showMap(${vss.index})">구매하기</button>

     					   	</div>

 

     					   	<br>	  

 

			  			</c:forTokens>

 

			  			

 

			      </div>

 

			    </div>

 

			  </div>

 

			 </div>

 

			

 

 

 

			<!-- Modal(사진) -->

 

			<div class="modal fade" id="myModal2${vs.index}" role="dialog">

 

			  <div class="modal-dialog modal-dialog-centered modal"style="max-width: 100%; width: auto; display: table;" "role="document">

 

			    <div class="modal-content">

 

			      <div class="modal-header">

 

			  

 

			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">

 

			          <span aria-hidden="true">&times;</span>

 

			        </button>

 

			      </div>

 

			      

 

			      <div class="modal-body">

 

  

 

				<img src="<c:url value='./resources/img/${book.bookno}.jpg' />" class="img-fluid rounded" width=300px height=100px>

 

			      </div>

 

			    </div>

 

			  </div>	  

 

			</div>

 

			

 

 	   </c:forEach> 

 

    </tbody>

 

  </table>

 

</div>

<br>

<br>

<%@ include file="/common/footer2.jsp" %>

 

</body>

 

</html>