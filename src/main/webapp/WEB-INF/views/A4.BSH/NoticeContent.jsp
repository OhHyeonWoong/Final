<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 전체리스트</title>
<style type="text/css">
	.ukjae_table {
	    border-collapse: collapse;
	    width: 100%;
	}
	
	.ukjae_table th, td {
	    text-align: center;
	    padding: 5px;
	    height: 50px;
	}
	
	.abs, #abs {
		color:white;
		text-align: center;
	}
	.dropdown-menu{
		background: white;
		color: black;
	}
	.icon{
		margin-top:5px;
		margin-bottom:12px;
		font-size: 35px;
	}
	.pageingtable{
		height: 7px;
		width: 100%;
	}
	.pageingtable tr td {
		background: black;
		height: 44px;
	}
	
	.pageingtable tr td a {
		color: white;
	}
	
	.pageingtable tr td a:hover{
		color: red;
	}

</style>
<script type="text/javascript">
	function movewritePage(){
		alert("글쓰기 페이지로 이동합니다.");
		window.open("noticewritepage.go","관리자글쓰기","left=650, top=120, width=350,height=550","width=350,height=480");
	}
</script>
<script type="text/javascript">
   function firstlist(){
		$.ajax({
			url : "firstListfollow.go", 
			type : "get",
			datatype : "json",
			success : function(data){
				console.log(data);
				var jstr = JSON.stringify(data);
				var json = JSON.parse(jstr);				
				$('.ukjae_table').empty();				
				var htmlStr = '<span class="glyphicon glyphicon-user icon" style="margin-left: 38%;">공지사항</span><table class="ukjae_table"><thead style="border: 1px solid #d6d6d6;"><tr><th></th>'+
				'<th>제목</th><th>작성자</th><th>작성일자</th></tr></thead>';				
				for(var i in json.oneone_list){
					htmlStr += '<tr style="border:1px solid #dfdfdf;"><td>'+json.oneone_list[i].notice_no+'</td><td><a href="ndetail.go?notice_checkno='+json.oneone_list[i].notice_no+'">'+json.oneone_list[i].notice_title+'</td><td>'+json.oneone_list[i].notice_writer+'</td><td>'+json.oneone_list[i].notice_date+'</td></tr>';
				}			
				htmlStr += '</table>';
				$('.Notice_div').html(htmlStr);						
				},error:function(a,b,c){
				   alert("a = " + a + " ,b = " + b + " ,c = " + c);
			} 
		});				
	}
	function secondlist(){
		$.ajax({
			url : "secondListfollow.go", 
			type : "get",
			datatype : "json",
			success : function(data){
				console.log(data);
				var jstr = JSON.stringify(data);
				var json = JSON.parse(jstr);
				$('.ukjae_table').empty();				
				var htmlStr = '<span class="glyphicon glyphicon-user icon" style="margin-left: 38%;">공지사항</span><table class="ukjae_table"><thead style="border: 1px solid #d6d6d6;"><tr><th></th>'+
				'<th>제목</th><th>작성자</th><th>작성일자</th></tr></thead>';
				for(var i in json.twotwo_list){
					htmlStr += '<tr style="border:1px solid #dfdfdf;"><td>'+json.twotwo_list[i].notice_no+'</td><td><a href="ndetail.go?notice_checkno='+json.twotwo_list[i].notice_no+'">'+json.twotwo_list[i].notice_title+'</td><td>'+json.twotwo_list[i].notice_writer+'</td><td>'+json.twotwo_list[i].notice_date+'</td></tr>';
				}			
				htmlStr += '</table>';
				$('.Notice_div').html(htmlStr);			
				
			},error:function(a,b,c){
				   alert("a = " + a + " ,b = " + b + " ,c = " + c);
			}
		});				
	}


</script>
</head>
<body>
	<div class="container">
		<div class="sidebar"style="background:black; color:white; width: 20%; height: auto; float: left; margin-top: 22px;" align="center">
		  
		  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100%; height: 520px; padding-top: 90px;">
			    <!-- Indicators -->
			    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>
			
			    <!-- Wrapper for slides -->
			    <div class="carousel-inner">
			      <div class="item active">
			        <img src="/goodluck/resources/common/img/main/메인1.jpg" style="width:99%; height: 250px;">
			        <h2> All </h2>
			      </div>
			
			      <div class="item">
			        <img src="/goodluck/resources/common/img/main/반려동물.jpg" style="width:99%; height: 250px;">
			      <h2> For </h2>
			      </div>
			    
			      <div class="item">
			        <img src="/goodluck/resources/common/img/main/여행.jpg" style="width:99%; height: 250px;">
			      <h2> You </h2>
			      </div>
			    </div>
			
			    <!-- Left and right controls -->
			    <!-- <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right"></span>
			      <span class="sr-only">Next</span>
			    </a> -->
			</div>
			
			
			
	            <!-- <ul class="nav sidebar-nav" style="height: 100%; padding-top: 15px;">
	                <li class="sidebar-brand">
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 싸</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 이</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 드</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 바</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 활</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 용</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 필</a>
	                </li>
	                <li class="dropdown" class="abs">
	                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="abs"><span class="glyphicon glyphicon-cog icon"></span> &nbsp; 눌러바<span class="caret"></span></a>
	                  <ul class="dropdown-menu" role="menu">
	                     <li class="dropdown-header">클릭요소의 세부리스트 사항 정렬</li>
	                     <li><a href="#" class="abs">환</a></li>
	                     <li><a href="#" class="abs">영</a></li>
	                     <li><a href="#" class="abs">해</a></li>
	                     <li><a href="#" class="abs">독</a></li>
	                     <li><a href="#" class="abs">신</a></li>
	                     <li><a href="#" class="abs">사</a></li>
	                  </ul>
	                </li>	                
	            </ul>  -->
 			
		</div>
		
		<div class="center"style="width: 78%; height: 100%; float: left; margin-left: 2%">
			<div class="Notice_div" style="width: 100%; height: auto; padding: 10px;">
			<span class="glyphicon glyphicon-user icon" style="margin-left: 38%; margin-bottom: 20px;">공지사항</span>	
			
			
		
			<!-- 로그인 하지 않았거나 / 로그인한 유저가 운영자가 아니면 글쓰기 버튼을 감추기 -->
			<table class="ukjae_table">
					<thead style="border: 1px solid #d6d6d6;">
						<tr>
							<th></th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
					</thead>	
								
						<c:forEach var="noticeall" items="${basiclist}">
						<tr style="border:1px solid #dfdfdf;">
							<td> ${ noticeall.notice_no } </td>
			 				<td> <a href="ndetail.go?notice_checkno=${ noticeall.notice_no }">${ noticeall.notice_title }</a></td>
			 				<td> ${ noticeall.notice_writer } </td>
							<td> ${ noticeall.notice_date } </td>
						</tr>
						</c:forEach>	
				</table>
			
				
			</div>
			<div align="right">
				<c:if test="${loginUser.member_status eq 3}"><A href="javascript:movewritePage();" style="background: yellow;">글 작성(Admin)</A></c:if>	
				<br><Br>
				<Div style="width: 100%; float: left;" align="center" id="paging">
					<!-- 페이징 처리 -->
					<table class="pageingtable">
						<tr>
							<td colspan="4"> 
								<a href="javascript:firstlist();" style="border: 1px solid white;">first</a> &nbsp; &nbsp; 
								<a href="javascript:firstlist();" style="border: 1px solid white;">1</a>  &nbsp; &nbsp;
								<a href="javascript:secondlist();" style="border: 1px solid white;">2</a> &nbsp; &nbsp;
								<a href="javascript:secondlist();" style="border: 1px solid white;">end</a>
							</td>
						</tr>
					</table>	
				</Div>
			</div>			

			
			
			
			
		</div>
	</div>
	<br>
</body>
</html>