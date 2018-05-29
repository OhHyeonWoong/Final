<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(function(){
	  $.ajax({
			url : "noticetop5.go",
			type : "get",
			datatype : "json",
			success : function(data){
				/* alert("추가가 완료되었습니다."); */
				/* console.log("success : " + data); */
				
				var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
				/* console.log(jsonStr); */
				var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
			
			 	var tablevalue="<tr>";
				
			 	for(var i in json.noticeTop5list){
				//한글 깨짐을 막기 위해 문자 인코딩 처리한 json 객체의 값은 decodeURIComponent() 로 디코딩 처리함
			 	//decodeURIComponent(json.noticeTop5list[i].notice_title) ??? 인코딩??
			 	
			 	tablevalue += "<td>"+json.noticeTop5list[i].notice_no+"</td><td><a href='ndetail.go?no="+json.noticeTop5list[i].notice_no+"'>"+decodeURIComponent(json.noticeTop5list[i].notice_title)+"</a></td><td>"+decodeURIComponent(json.noticeTop5list[i].notice_writer)+"</td><td>"+json.noticeTop5list[i].notice_date+"</td></tr>";

				}
			 	$("#j1").append(tablevalue); 
			},
			error:function(a,b,c){
				alert(a + ", " + b + ", " + c);
			}			
			
			/* error: function(jqXHR, textStatus, errorThrown){
				console.log("error : " + jqXHR + ", " 
						+ textStatus + ", " + 
						errorThrown);
			} */
			
		}); /* 공지사항 top5 Ajax끝 */ 
		
		$.ajax({
			url : "faqtop5.go",
			type : "get",
			datatype : "json",
			success : function(data){				
				var jsonStr = JSON.stringify(data); //객체를 문자열로 변환
				console.log(jsonStr);
				var json = JSON.parse(jsonStr) //문자열을 배열 객체로 바꿈	
				var values="<tr>";
				
				for(var i in json.faqTop5list){
					values+="<td>"+json.faqTop5list[i].faq_no+"</td><td>"+json.faqTop5list[i].faq_category+"</td><td>"+json.faqTop5list[i].faq_title+"</td></tr>";
				}
				$("#j2").append(values);
				
				/* js.put("faq_no", f.getFaq_no());
				js.put("faq_category", f.getFaq_category());
				js.put("faq_title", f.getFaq_title());
				js.put("faq_content", f.getFaq_content()); */
			},
			error:function(a,b,c){
				alert(a + ", " + b + ", " + c);
			}		
		}); /* FAQ top5 Ajax끝 */
		
		
		 
		/* $.ajax({
			url :"lifeareasample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		});  */
		/* 생활영역 제공해요! */
		
		/* $.ajax({
			url :"petareasample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		});  */
		/* 반려동물영역 제공해요! */
		
		/* $.ajax({
			url :"gameareasample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		});  */
		/* 게임영역 제공해요! */
		
		/* $.ajax({
			url :"musicsample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		}); */
		/* 음악영역 제공해요! */
		
		/* $.ajax({
			url :"rentalsample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		});  */
		/* 렌탈영역 제공해요! */
		
		/* $.ajax({
			url :"travelsample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		});  */
		/* 여행영역 제공해요! */
		
		/* $.ajax({
			url :"freesample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		});  */
		/* 프리랜서영역 제공해요! */
		
		/* $.ajax({
			url :"requiresample.go",
			type : "get",
			datatype : "json",
			success : function(data){
				
			},
			error : function(a,b,c){
				alert(a+","+b+","+c);
			}
		}); */
		/* 구인영역 제공해요! */
		
		
	});

</script>


<script type="text/javascript">
	/* $(function(){	
		$("#topcaro1").click(function(){ //오른쪽 넘기기 버튼을 클릭했을경우
		         //리스트별 컬러추가.
		         colors=["red","blue","black","white","yellow","orange","gray"];
		         pictures=["/goodluck/resources/common/img/main/생활.jpg","/goodluck/resources/common/img/main/반려동물2.jpg","/goodluck/resources/common/img/main/게임.jpg","/goodluck/resources/common/img/main/음악.jpg","/goodluck/resources/common/img/main/렌탈.jpg","/goodluck/resources/common/img/main/여행.jpg","/goodluck/resources/common/img/main/프리랜서.jpg","/goodluck/resources/common/img/main/구인.jpg"];
		         
		         for(var i=0; i<8 ; i++){
		            console.log($("div#"+i+".item.active").attr("id"));
		            
		            if($("div#"+i+".item.active").attr("id") >= 0 )
		            	picture=pictures[$("div#"+i+".item.active").attr("id")];
		            	
		         	$("#main").attr("background",picture);     
		         }
		});
		$("#topcaro").click(function(){    
		         //리스트별 컬러추가.
		         pictures2=["/goodluck/resources/common/img/main/구인.jpg","/goodluck/resources/common/img/main/프리랜서.jpg","/goodluck/resources/common/img/main/여행.jpg","/goodluck/resources/common/img/main/렌탈.jpg","/goodluck/resources/common/img/main/음악.jpg","/goodluck/resources/common/img/main/게임.jpg","/goodluck/resources/common/img/main/반려동물2.jpg","/goodluck/resources/common/img/main/생활.jpg"];
		         for(var i=0; i<8 ; i++){
		            console.log($("div#"+i+".item.active").attr("id"));	            
		            if($("div#"+i+".item.active").attr("id") >= 0 )
		            	picture2=pictures2[$("div#"+i+".item.active").attr("id")];
		         	$("#main").attr("background",picture2);     
		         }
		});
	}); 
	*/   
</script>
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaepetArea.css">
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaemainEvent.css">
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaetablestyle.css">
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaeTravelContents.css">
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaeCustomerTalking.css">

<style type="text/css">
.ohw-home-table {
	Sectiongin: 0;
	width: 100%;
	height: 800px;
}

.ohw-home-table-td {
	Sectiongin: 200;
	padding: 0;
	padding-top: 0;
	width: 50%;
	height: 400px;
}

.ohw-carousel-img {
	height: 400px !important;
}

.ohw-home-table2 {
	border: 1px solid gray;
	width: 97%;
	height: 97%;
}

.ohw-home-table2 tr td {
	padding-top: 0px;
	Sectiongin: 0;
	text-align: center;
	font-size: 16px;
}

.juj-home-realtimebar-dl a {
	color: black;
	text-decoration: none;
}

.juj-home-realtimebar-dl a:hover {
	color: purple;
}

.juj-home-realtimebar-dl {
	overflow: hidden;
	width: 100%;
	height: 160px;
	Sectiongin: 0;
}

.juj-home-realtimebar-dt {
	display: none;
}

.juj-home-realtimebar-dd {
	position: relative;
	Sectiongin: 0;
}

.juj-home-realtimebar-ol {
	position: absolute;
	top: 0;
	left: 0;
	Sectiongin: 0;
	padding: 0;
	list-style-type: none;
}

.juj-home-realtimebar-li {
	height: 160px;
	line-height: 20px;
}

/* effect */
#ukjaeTitle_effect {
	color: red;
	animation: texteffect 2s infinite;
}

@-webkit-keyframes texteffect {
	from {color: red; }
	to { color: blue;  }
}
@keyframes texteffect  {
	from {color: red; }
	to { color: blue;  }
}

.bgc-fff{
  background : none !important;
}	


/*************** 2018.05.22 생활/게임/음악/렌탈 영역작업 ***************/

/* 내부 대표 제공테이블 */
#ukjae_Areaspace {
	width: 100%;
	height: 8px;
	margin: 0;
	padding: 0;
}

#ukjae_TableAreaFirst tr td {
	width: 570px;
	height: 280px;
	padding: 0;
	margin: 0;
}

#ukjae_TableAreaSecond {
	border: 1px solid black;
}

#ukjae_TableAreaSecond tr td {
	width: 190px;
	height: 210px;
	padding: 0;
	margin: 0;
}

#ukjae_TableAreaThird {
	width:100%;
	height : 220px;
    border: 1px solid black; 
}

#ukjae_TableAreaThird tr td {
	padding: 0;
	margin: 0;
}

#ukjae_TableAreaFourth tr {
	align:cetner;
	text-align: center;
}

#ukjae_TableAreaFourth {
	width: 1140px !important;
}

#ukjae_TableAreaFourth tr td {
	al width: 180px;
	height: 210px;
	padding: 0;
	margin: 0;
}

#ukjae_TableAreaFiveth{
	/* background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); */
	border: none;
}

#ukjae_TableAreaFiveth tr td {
	width: 190px !important;
	height: 210px !important;
	padding: 0;
	margin: 0;
	border: 1px solid gray;
}


#typical_image {
	width: 569px !important;
	height: 279px !important;
	padding: 0;
	margin: 0;
}

#low_image {
	width: 190px !important;
	height: 210px !important;
	padding: 0;
	margin: 0;
}

#low_image2 {
	width: 284px !important;
	height: 220px !important;
	padding: 0;
	margin: 0;
	padding: 0;
	margin: 0;
}

#low_image3 {
	width: 160px !important;
	height: 210px !important;
	padding: 0;
	margin: 0;
	padding: 0;
	margin: 0;
	border-radius: 20px;
}

#low_image4 {
	width: 160px !important;
	height: 160px !important;
	padding: 0;
	margin: 0;
	padding: 0;
	margin: 0;
}

#ukjae_video{
	width: 355px;
	height: 215px;
	padding: 0;
	margin-top: 3px;

}


#ukjaetypical_tablearea{
	width: 550px;
	height: 220px;
	margin: 0;
	padding: 0;
}

#ukjaetypical_table{
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
	height: 100%;
	margin: 0;
	padding: 0;
}


#ukjaetypical_table tr:nth-child(even) {
    background-color: #f2f2f2;
}

#ukjaetypical_table tr td{
	height: 30px;
	margin: 0;
	padding: 0;
}


</style>

<script type="text/javascript">
	function event1(){			
		window.open("Eventpopup1.go","이벤트 원","left=300, top=120, width=350,height=550");
	}
	function event2(){			
		window.open("Eventpopup2.go","이벤트 투","left=600, top=120, width=350,height=550");
	}
	function event3(){			
		window.open("Eventpopup3.go","이벤트 쓰리","left=900, top=120, width=350,height=550");
	}	/* 메인화면 이벤트123 윈도우창 작동스크립트제공 대표테이블 삽입 */	
</script>

<script type="text/javascript"> 
	$(function() {
		var count = $('.juj-home-realtimebar-li').length;
		var height = $('.juj-home-realtimebar-li').height();
	
		function step(index) {
			$('.juj-home-realtimebar-ol').delay(3000).animate({
				top: -height * index,
			}, 500, function() {
				step((index + 1) % count);
			});
		}	
		step(1);
	}); /* 오늘의주인공 애니메이션 함수 끝 */	
</script> 

<script type="text/javascript"> 
	$(document).ready(function() {
	    var $btnSets = $('#responsive'),
	    $btnLinks = $btnSets.find('a');
	 
	    $btnLinks.click(function(e) {
	        e.preventDefault();
	        $(this).siblings('a.active').removeClass("active");
	        $(this).addClass("active");
	        var index = $(this).index();
	        $("div.user-menu>div.user-menu-content").removeClass("active");
	        $("div.user-menu>div.user-menu-content").eq(index).addClass("active");
	    });
	});

	$( document ).ready(function() {
	    $("[rel='tooltip']").tooltip();    
	 
	    $('.view').hover(
	        function(){
	            $(this).find('.caption').slideDown(250); //.fadeIn(250)
	        },
	        function(){
	            $(this).find('.caption').slideUp(250); //.fadeOut(205)
	        }
	    ); 
	}); /* 반려동물영역 작동스크립트 */					
</script>


</head> 

<body id="main">
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
		
<div class="container">  
		
	<div id="homeCarousel" class="ohw-homeCarousel carousel slide" data-ride="carousel" data-interval="false">
		<% String inside = null; %>
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target=".ohw-homeCarousel" data-slide-to="0" class="active"></li> 
			<li data-target=".ohw-homeCarousel" data-slide-to="1" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="2" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="3" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="4" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="5" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="6" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="7" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="8" class="active"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active" id="0">
				<a href="Notice.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/메인1.jpg" alt="메인이미지" style="width:100%;"></a>
			</div>
			
			<div class="item" id="1">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;"></a>	
			</div>    

			<div class="item" id="2">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물.jpg" alt="반려동물" style="width:100%;"></a>
			</div>

			<div class="item" id="3">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/게임.jpg" alt="게임" style="width:100%;"></a>
			</div>

			<div class="item" id="4">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/음악.jpg" alt="음악" style="width:100%;"></a>
			</div>

			<div class="item" id="5">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/렌탈.jpg" alt="렌탈" style="width:100%;"></a>
			</div>

			<div class="item" id="6">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행.jpg" alt="여행" style="width:100%;"></a>
			</div>	

			<div class="item" id="7">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/프리랜서.jpg" alt="프리랜서" style="width:100%;"></a>
			</div>

			<div class="item" id="8">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/구인4.jpg" alt="구인" style="width:100%;"></a>
			</div>
		</div>		
		
		<a class="left carousel-control" href=".ohw-homeCarousel" data-slide="prev" id="topcaro">
			<span class="glyphicon glyphicon-chevron-left"></span> <!-- 화면상에 < 로 보여지는 버튼 -->
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href=".ohw-homeCarousel" data-slide="next" id="topcaro1">
			<span class="glyphicon glyphicon-chevron-right"></span> <!-- 화면상에 > 로 보여지는 버튼 -->
			<span class="sr-only">Next</span>
		</a>
	</div> <!-- homeCarousel -->	
	
	<!-- -------------------------------------------------------------------------------------------------------------------  -->
  
 <hr>
 	
	<div id="homeCarousel" class="ohw-homeCarousel carousel slide"  data-ride="carousel" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators" hidden="true">
			<li data-target=".ohw-homeCarousel" data-slide-to="0" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="1" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="2" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="3" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="4" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="5" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="6" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="7" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="8" class="active"></li>
		</ol>		
		
		<div class="carousel-inner" >
			<div class="item active">	
					
				<div style="width: 100%; Sectiongin-bottom: 12px;">			
				
					<div class = "juj-home-realtimebar-content">
									<dl class = "juj-home-realtimebar-dl">										
										<dd class ="juj-home-realtimebar-dd">
											<ol class = "juj-home-realtimebar-ol">
												<li class = "juj-home-realtimebar-li">
													<div class="well">
													      <div class="media">
													      	<a class="pull-left" href="#">
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자2.JPG" style="width: 110px; height: 128px;">
													  		</a>
													  		<div class="media-body">
													  			<br>
													    		<h4 class="media-heading">오늘의 주인공</h4>
																<!--  <p class="text-right">By Francisco</p> -->
																          <p>  	
																           서비스 이용한지 어느덧 10개월째 되가네요 항상 만족하며 서비스 이용하고있습니다~♥
																          </p>
													          <ul class="list-inline list-unstyled">
													  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
													            <li>|</li>
													            <li><span><i class="glyphicon glyphicon-comment"></i> 2 comments</span></li>
													            <li>|</li>
													            <li>
											               			<span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
													            </li>
													            <li>|</li>
													            <li>
													            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
													              <span><i class="fa fa-facebook-square"></i></span>
													              <span><i class="fa fa-twitter-square"></i></span>
													              <span><i class="fa fa-google-plus-square"></i></span>
													            </li>
																</ul>
													       </div>
													    </div>
													  </div>							
												</li>												
												<li class = "juj-home-realtimebar-li">
													<div class="well">
													      <div class="media">
													      	<a class="pull-left" href="#">
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자1.JPG" style="width: 110px; height: 128px;">
													  		</a>
													  		<div class="media-body">
													  			<br>
													    		<h4 class="media-heading">오늘의 주인공</h4>
																<!--  <p class="text-right">By Francisco</p> -->
																          <p>  	
																           서비스 이용한지 어느덧 10개월째 되가네요 항상 만족하며 서비스 이용하고있습니다~♥
																          </p>
													          <ul class="list-inline list-unstyled">
													  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
													            <li>|</li>
													            <li><span><i class="glyphicon glyphicon-comment"></i> 2 comments</span></li>
													            <li>|</li>
													            <li>
											               			<span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
                                                                    <span class="glyphicon glyphicon-star-empty"></span>
													            </li>
													            <li>|</li>
													            <li>
													            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
													              <span><i class="fa fa-facebook-square"></i></span>
													              <span><i class="fa fa-twitter-square"></i></span>
													              <span><i class="fa fa-google-plus-square"></i></span>
													            </li>
																</ul>
													       </div>
													    </div>
													  </div>							
												</li>												
												<li class = "juj-home-realtimebar-li">
													<div class="well">
													      <div class="media">
													      	<a class="pull-left" href="#">
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자3.JPG" style="width: 110px; height: 128px;">
													  		</a>
													  		<div class="media-body">
													  			<br>
													    		<h4 class="media-heading">오늘의 주인공</h4>
																<!--  <p class="text-right">By Francisco</p> -->
																          <p>  	
																           서비스 이용한지 어느덧 10개월째 되가네요 항상 만족하며 서비스 이용하고있습니다~♥
																          </p>
													          <ul class="list-inline list-unstyled">
													  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
													            <li>|</li>
													            <li><span><i class="glyphicon glyphicon-comment"></i> 2 comments</span></li>
													            <li>|</li>
													            <li>
											               			<span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star-empty"></span>
											                        <span class="glyphicon glyphicon-star-empty"></span>
													            </li>
													            <li>|</li>
													            <li>
													            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
													              <span><i class="fa fa-facebook-square"></i></span>
													              <span><i class="fa fa-twitter-square"></i></span>
													              <span><i class="fa fa-google-plus-square"></i></span>
													            </li>
																</ul>
													       </div>
													    </div>
													  </div>							
												</li>												
												<li class = "juj-home-realtimebar-li">
													<div class="well">
													      <div class="media">
													      	<a class="pull-left" href="#">
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자4.JPG" style="width: 110px; height: 128px;">
													  		</a>
													  		<div class="media-body">
													  			<br>
													    		<h4 class="media-heading">오늘의 주인공</h4>
																<!--  <p class="text-right">By Francisco</p> -->
																          <p>  	
																           서비스 이용한지 어느덧 10개월째 되가네요 항상 만족하며 서비스 이용하고있습니다~♥
																          </p>
													          <ul class="list-inline list-unstyled">
													  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
													            <li>|</li>
													            <li><span><i class="glyphicon glyphicon-comment"></i> 2 comments</span></li>
													            <li>|</li>
													            <li>
											               			<span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
													            </li>
													            <li>|</li>
													            <li>
													            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
													              <span><i class="fa fa-facebook-square"></i></span>
													              <span><i class="fa fa-twitter-square"></i></span>
													              <span><i class="fa fa-google-plus-square"></i></span>
													            </li>
																</ul>
													       </div>
													    </div>
													  </div>							
												</li>												
												<li class = "juj-home-realtimebar-li">
													<div class="well">
													      <div class="media">
													      	<a class="pull-left" href="#">
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자5.JPG" style="width: 110px; height: 128px;">
													  		</a>
													  		<div class="media-body">
													  			<br>
													    		<h4 class="media-heading">오늘의 주인공</h4>
																<!--  <p class="text-right">By Francisco</p> -->
																          <p>  	
																           서비스 이용한지 어느덧 10개월째 되가네요 항상 만족하며 서비스 이용하고있습니다~♥
																          </p>
													          <ul class="list-inline list-unstyled">
													  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
													            <li>|</li>
													            <li><span><i class="glyphicon glyphicon-comment"></i> 2 comments</span></li>
													            <li>|</li>
													            <li>
											               			<span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
											                        <span class="glyphicon glyphicon-star"></span>
													            </li>
													            <li>|</li>
													            <li>
													            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
													              <span><i class="fa fa-facebook-square"></i></span>
													              <span><i class="fa fa-twitter-square"></i></span>
													              <span><i class="fa fa-google-plus-square"></i></span>
													            </li>
																</ul>
													       </div>
													    </div>
													  </div>							
												</li>
											</ol>
										</dd>
									</dl>
								</div>
							</div>
							
			<table class="ohw-home-table"> <!-- main화면 data-slide-to="0" -->					
				<tr>
					<td class = "ohw-home-table-td" align = "center" style="padding: 0; Sectiongin: 0;">
					<table class="ohw-home-table2">
						<tr>
							<td style="padding: 0;">							
								<font size="6" face="굴림" style="font-weight: bold;">오늘의 이벤트</font><br><br>
									<div class="row" align="center" style="Sectiongin: 0; padding-right: 20px; padding-left: 20px;">
									  <div class="col-sm-4">
									   <div class="mega-pricing-item gradient-style-1">
								     	 <div class="pricing-icon">
									     <i class="fa fa-heart-o"></i>
									     </div>
									 
									 	<h3><strong>Event</strong><br><br><button style="background: none;" onclick="event1();">One</button></h3>
		
									   </div>
									  </div>
									 
									 <div class="col-sm-4">
										 <div class="mega-pricing-item gradient-style-2 active">
										 <div class="pricing-icon">
										 <i class="fa fa-plane"></i>
										 </div>
										 
									 	 <h3><strong>Event</strong><br><br><button style="background: none;" onclick="event2();">Two</button></h3>
									 	
										 </div>
									 </div>
									 
									 <div class="col-sm-4">
									 <div class="mega-pricing-item gradient-style-3">
									 <div class="pricing-icon">
									 <i class="fa fa-grav"></i>
									 </div>
									 
									 	 <h3><strong>Event</strong><br><br><button style="background: none;" onclick="event3();">Three</button></h3>

									  </div>
									 </div>
								</div>		
						  </td>
						</tr>
					</table>
					</td>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2">
							<tr>
								<td style="padding-top: 11px; padding-bottom: 4px;">
									<iframe width="520" height="320" src="https://www.youtube.com/embed/QI7cYnBlkFQ"></iframe>
				
									<br>
									<font size="6" face="굴림" style="font-weight: bold;">독신들을 위한 레시피!!</font>

								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">독신사 공지사항</font>								
									<table class="jwj-innertable" id="j1" border="1">
										<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td></tr>

									</table>								
								</td>
							</tr>
						</table>					
					</td>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">자주묻는질문?!!..FAQ</font>								
									<table class="jwj-innertable" id="j2" border="1">
										<tr><td>번호</td><td>카테고리</td><td>제목</td></tr>
									</table>								
								</td>
							</tr>
						</table>					
					</td>
				</tr>
			</table>
		
			</div> 
			
			
			<div class="item">	<!-- 생활영역 -->
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/life/생활1.jpg"></td>
						<td align="center"> 
							<h4 style="margin-top: 0;"> 제 공 합 니 다 </h4>
							<div id="ukjaetypical_tablearea" align="center"> <!--  -->
								<!-- width: 40px;  -->
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>		
							</div>
						</td>					
					</tr>
				</table>					
				<div id="ukjae_Areaspace"></div>				
				<table id="ukjae_TableAreaSecond">							
					<tr>
						<td><img id="low_image" alt="첫번째 이미지" src="/goodluck/resources/common/img/life/생활1.jpg"></td> 	
						<td> 거실로 꾸미기, 가벽 세우고<br>화이트 톤 으로 패인팅<br>(서비스 제공자 : 홍 길 동) </td>	
						<td><img id="low_image" alt="두번째 이미지" src="/goodluck/resources/common/img/life/생활2.jpg"></td> 
						<td> 수납은 기본, 바다를 닮은<br>좁안 아이방 만들기!!<br>(서비스 제공자 : 정 욱 재)</td>	
						<td><img id="low_image" alt="두번째 이미지" src="/goodluck/resources/common/img/life/생활3.jpg"></td> 
						<td> 다시 짱짱하게! 늘어난<br> 티셔츠 수선 해드립니다.<br>(서비스 제공자 : 도 우 너)</td>							
					</tr>
				</table>
				<div id="ukjae_Areaspace"></div>					
				<table id="ukjae_TableAreaSecond">					
					<tr>
						<td><img id="low_image" alt="두번째 이미지" src="/goodluck/resources/common/img/life/생활3.jpg"></td> 
						<td> 다시 짱짱하게! 늘어난<br> 티셔츠 수선 해드립니다.<br>(서비스 제공자 : 도 우 너)</td>							
						<td><img id="low_image" alt="첫번째 이미지" src="/goodluck/resources/common/img/life/생활1.jpg"></td> 	
						<td> 거실로 꾸미기, 가벽 세우고<br>화이트 톤 으로 패인팅<br>(서비스 제공자 : 홍 길 동) </td>	
						<td><img id="low_image" alt="두번째 이미지" src="/goodluck/resources/common/img/life/생활2.jpg"></td> 
						<td> 수납은 기본, 바다를 닮은<br>좁안 아이방 만들기!!<br>(서비스 제공자 : 정 욱 재)</td>					
					</tr>
				</table>
				<br>
		    </div>			
		    <div class="item"> 

 						<img src="http://i.imgur.com/RcmcLv4.png" class="img-responsive" alt="이미지준비중.." />
					    <div class="row user-menu-container square">
					        <div class="col-md-7 user-details">
					            <div class="row coralbg white">
					                <div class="col-md-6 no-pad">
					                    <div class="user-pad">
					                        <h3>반려동물<br> 킹카를 소개합니다.!</h3>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 종류 : 코숏 </h4>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 이름 : 페퍼 </h4>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 나이 : 2세(24개월) </h4>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 성격 : 차분함 </h4>

					                    </div>
					                </div>
					                <div class="col-md-6 no-pad">
					                    <div class="user-image">
											<img src="/goodluck/resources/common/img/main/반려동물2.jpg" class="img-responsive thumbnail"  style="width:300px; height:80px; margin-top: 40px; ">					        
           									<!-- <iframe width="350" height="200" src="https://www.youtube.com/embed/qM6Jtq_U3e0" style="padding-top: 35px;"></iframe> -->
           								</div>
					               </div>
					            </div>
					            <div class="row overview" style=" background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg');">
					                <div class="col-md-4 user-pad text-center" align="center"> 
					                    <h3 style="color: white">FOLLOWERS</h3>
					                    <h4 style="color: white">588</h4>
					                </div>
					                <div class="col-md-4 user-pad text-center" align="center">
					                    <h3 style="color: white">FOLLOWING</h3>
					                    <h4 style="color: white">456</h4>
					      
					                </div>
					                <div class="col-md-4 user-pad text-center" >
					                    <h3 style="color: white">SOSO</h3>
					                    <h4 style="color: white">12</h4>
					                </div>
					            </div>
					        </div>
					        <div class="col-md-1 user-menu-btns">
					            <div class="btn-group-vertical square" id="responsive">
					                <a href="#" class="btn btn-block btn-default active">
					                  <i class="fa fa-bell-o fa-3x"></i>
					                </a>
					                <a href="#" class="btn btn-default">
					                  <i class="fa fa-envelope-o fa-3x"></i>
					                </a>
					                <a href="#" class="btn btn-default">
					                  <i class="fa fa-laptop fa-3x"></i>
					                </a>
					                <a href="#" class="btn btn-default">
					                  <i class="fa fa-cloud-upload fa-3x"></i>
					                </a>
					            </div>
					        </div>
					        <div class="col-md-4 user-menu user-pad" align="center">
					            <div class="user-menu-content active">
					                <h3 style="margin-top: 10px;">
					                    서비스 제공해요
					                </h3>
									<table id="ukjaetypical_table" border="1" style="width: 100%;">
										<tr align="center"><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
										<tr align="center"><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr align="center"><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr align="center"><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr align="center"><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr align="center"><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr align="center"><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
									</table>	
					            </div>  
					            <div class="user-menu-content">
					                <h3>
					                    독신사 안내사항(반려동물)
					                </h3>
					                <ul class="user-menu-list">
					                    <li>
					                        <h4> 1.고객상담 가능시간 <br><small class="coral"><strong>운영시간</strong> 
					                        <i class="fa fa-clock-o"></i> 8:00 A.M. ~ <i class="fa fa-clock-o"></i>20:00 P.M.</small></h4>
					                    </li>
					                    <li>
					                        <h4> 2.고객상담 가능시간 <br><small class="coral"><strong>운영시간</strong> 
					                        <i class="fa fa-clock-o"></i> 8:00 A.M. ~ <i class="fa fa-clock-o"></i>20:00 P.M.</small></h4>
					                    </li>
					                    <li>
					                        <h4> 3.고객상담 가능시간 <br><small class="coral"><strong>운영시간</strong> 
					                        <i class="fa fa-clock-o"></i> 8:00 A.M. ~ <i class="fa fa-clock-o"></i>20:00 P.M.</small></h4>
					                    </li>
					                </ul>
					            </div>
					            <div class="user-menu-content">
					                <h3>
					                    반려동물 News
					                </h3>
					                <div class="row">
					                    <div class="col-md-6">
					                        <div class="view">
					                            <div class="caption">
					                                <p>47LabsDesign</p>
					                                <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
					                                <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
					                            </div>
					                            <img src="/goodluck/resources/common/img/pet/펫1.jpg" class="img-responsive" style="height: 110px;">
					                        </div>
					                        <div class="info">
					                            <p class="small" style="text-overflow: ellipsis">나 올라갈래~~ 강아지는<br> 높은곳을 좋아할까요?</p>
					                            <p class="small coral text-right"><i class="fa fa-clock-o"></i> 10:42 A.M.
					                        </div>
					                        <div class="stats turqbg">
					                            <span class="fa fa-heart-o"> <strong>47</strong></span>
					                            <span class="fa fa-eye pull-right"> <strong>137</strong></span>
					                        </div>
					                    </div>
					                    <div class="col-md-6">
					                        <div class="view">
					                            <div class="caption">
					                                <p>47LabsDesign</p>
					                                <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
					                                <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
					                            </div>
					                            <img src="/goodluck/resources/common/img/pet/펫2.jpg" class="img-responsive" style="height: 110px;">
					                        </div>
					                        <div class="info">
					                            <p class="small" style="text-overflow: ellipsis">'친구 사귀라니까...'애견카페만 가면 얼음되는 댕댕이</p>
					                            <p class="small coral text-right"><i class="fa fa-clock-o"></i> 14:20 P.M.
					                        </div>
					                        <div class="stats turqbg">
					                            <span class="fa fa-heart-o"> <strong>47</strong></span>
					                            <span class="fa fa-eye pull-right"> <strong>137</strong></span>
					                        </div>
					                    </div>
					                </div>
					            </div>
					            
					            <div class="user-menu-content">
					                <h2 class="text-center">
					                    반려동물 Care꿀팁
					                </h2>

					                <ul class="user-menu-list">
					                    <li>
					                        <h4 id="ukjaeTitle_effect"> 1.외출후 잘 씻긴다. </h4>
					                    </li>
					                    <li>
					                        <h4 id="ukjaeTitle_effect"> 2.잘 타이른다. </h4> 
					                    </li>
					                    <li>
					                        <h4 id="ukjaeTitle_effect"> 3.맛있는 간식을 많이준다. </h4>
					                    </li>
					                </ul>		
					                
					            </div>
					        </div>
					    </div>
					
 			<hr style="clear: both;">


				    
		    <div align="center">
	
			 	<h2> 동 물 뉴 스 </h2>
				<table id="ukjae_TableAreaFiveth">
						<tr align="center">
							<td style="width: 5px; border: none;"></td> 		
							<td><img id="low_image3" alt="첫번째 후보" src="/goodluck/resources/common/img/pet/동물공감1.jpg">
							<font id="ukjaeTitle_effect"> 아기강아지의 귀여움 <br>(제 공 자 : 정 욱 재) </font>	   
							
							</td>
							<td style="width: 5px; border: none;"></td> 
		
		
							<td><img id="low_image3" alt="두번째 후보" src="/goodluck/resources/common/img/pet/동물공감2.jpg">
							<font id="ukjaeTitle_effect"> 동물도 은혜를갚는다 <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td><img id="low_image3" alt="세번째 후보" src="/goodluck/resources/common/img/pet/동물공감3.jpg">
							<font id="ukjaeTitle_effect"> 우리해병이를 잊지마<br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td><img id="low_image3" alt="네번째 후보" src="/goodluck/resources/common/img/pet/동물공감4.jpg">
							<font id="ukjaeTitle_effect"> 누가 더 귀여워? <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	 	
		
							<td><img id="low_image3" alt="다섯번째 후보" src="/goodluck/resources/common/img/pet/동물공감1.jpg">
							<font id="ukjaeTitle_effect"> 아기강아지의 귀여움 <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td><img id="low_image3" alt="여섯번째 후보" src="/goodluck/resources/common/img/pet/동물공감2.jpg">
							<font id="ukjaeTitle_effect"> 동물도 은혜를갚는다 <br>(제 공 자 : 정 욱 재) </font>				
							</td>
							<td style="width: 5px; border: none;"></td> 		
						</tr>				
					</table><br>
					
					<div class="icon arrow-refresh"></div>
					
					<input type="button" id="animalNews_BeforeBtn" value="이전"> 
					<script type="text/javascript">
						
						
					</script>
					&nbsp; &nbsp; &nbsp; &nbsp;	
					<input type="button" id="animalNews_NextBtn" value="다음">
					<script type="text/javascript">
						$(function(){	
							$("#animalNews_NextBtn").on("click",function(){
								alert("다음기사로 변경을 시도하셨습니다.")
								
								$.ajax({
									url : "animalPageNews_next.do",
									data: "",
									type: "post",
									datatype: "",
									success : function(data){
										
									},
									error: function(request, status, errorData){
										alert("error code : " + request.status + "\n"
											+ "message : " + request.responseText + "\n"
											+ "error : " + errorData);
									}
								});
							});
						
						});
					</script>
			</div>


 			<br>
			
			</div> <!-- item end  -->
			<div class="item"> <!-- 게임영역 -->
			
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/game/게임1.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제 공 합 니 다 </h4>
							<div id="ukjaetypical_tablearea" align="center"> 
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>		
							</div>	
						</td>					
					</tr>
				</table>					
				<div id="ukjae_Areaspace"></div>				
				<table id="ukjae_TableAreaThird">					
					<tr>
						<td width="360px;"> <iframe id="ukjae_video" src="https://www.youtube.com/embed/uxk1HLGPDA4"></iframe> </td> 
						<td width="210px;"> (리그오브레젼드)영웅 '메자이'<br> 컨트롤은 이렇게 <br>(SKT페이커 제공) </td>							
						<td width="360px;"> <iframe id="ukjae_video" src="https://www.youtube.com/embed/xSCYOsnXsNo"></iframe></td> 	
						<td width="210px;"> (모두의마블)신규캐릭터 꽃미남 아서<br>어떻게써야될까?<br>(Bj랩해도돼? 제공) </td>	
					</tr>
				</table>
				<div id="ukjae_Areaspace"></div>					

				<table id="ukjae_TableAreaSecond">					
					<tr>
						<td><img id="low_image" alt="두번째 이미지" src="/goodluck/resources/common/img/game/게임3.jpg"></td> 
						<td> (PS3)던전 앤 드레곤<br>타이틀 판매! <br>(작 성 자 : 태 극 기)</td>							
						<td><img id="low_image" alt="첫번째 이미지" src="/goodluck/resources/common/img/game/게임2.jpg"></td> 	
						<td> (닌텐도)HOT!신작 마리오<br>테니스 같이 하실분~? <br>(작 성 자 : 마 리 오) </td>	
						<td><img id="low_image" alt="두번째 이미지" src="/goodluck/resources/common/img/game/게임5.jpg"></td> 
						<td> (게임장비)게임 컨트롤러 판매<br> 사용법 안내해드립니다.<br>(작 성 자 : 장 비 맨) </td>					
					</tr>
				</table>


				
				<br>
			</div>
			<div class="item"> <!-- 음악영역 -->
			
				<div style="height:800px; overflow: scroll;">
					<table id="ukjae_TableAreaFiveth">					
						<tr align="center">
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg"><br>
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>
							</td> 	
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td>
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td> 	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>
							<td style="width: 5px; border: none;"></td> 			
						</tr>
					</table>
					<div id="ukjae_Areaspace"></div>				
					<table id="ukjae_TableAreaFiveth">					
						<tr align="center">
							<td style="width: 5px; border: none;"></td>
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠6.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠8.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠7.jpg" style="border:1px solid black;">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>						
						</tr>
					</table>
					<div id="ukjae_Areaspace"></div>				
					<table id="ukjae_TableAreaFiveth">					
						<tr align="center">
							<td style="width: 5px; border: none;"></td>
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>
							<td style="width: 5px; border: none;"></td>			
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>
							<td style="width: 5px; border: none;"></td> 	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td> 	
							<td style="width: 5px; border: none;"></td>	
						</tr>
					</table>
					<div id="ukjae_Areaspace"></div>				
					<table id="ukjae_TableAreaFiveth">					
						<tr align="center">					
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>
							<td style="width: 5px; border: none;"></td> 					
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠8.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠6.jpg">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td> 			
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠7.jpg" style="border:1px solid black;">
							<font id="ukjaeTitle_effect">(보컬)발성의 기초~중급 <br>(제 공 자 : 정 욱 재) </font>						
							</td>	
							<td style="width: 5px; border: none;"></td>									
						</tr>
					</table>
				<div id="ukjae_Areaspace"></div>				
				
				</div>
				
				<br>
				
			</div>
			<div class="item"> <!-- 렌탈영역  -->
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/rent/렌탈1.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(홈) </h4>
							<div id="ukjaetypical_tablearea" align="center"> 
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>	
							</div>	
						</td>					
					</tr>
				</table>	
				<div id="ukjae_Areaspace"></div>
				
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/rent/렌탈2.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(스포츠용품) </h4>
							<div id="ukjaetypical_tablearea" align="center"> 
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>	
							</div>	
						</td>					
					</tr>
				</table>	
				<div id="ukjae_Areaspace"></div>
				
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/rent/렌탈3.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(생활용품) </h4>
							<div id="ukjaetypical_tablearea" align="center"> 
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>	
							</div>	
						</td>					
					</tr>
				</table>	
				<div id="ukjae_Areaspace"></div>
				
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/rent/렌탈4.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(기타) </h4>
							<div id="ukjaetypical_tablearea" align="center"> 
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>	
							</div>	
						</td>					
					</tr>
				</table>	
		
			<br>
			</div>			
			
			<div class="item">
			
				<div align="center">
				<h3> 추 천 여 행 가 이 더 </h3>
				<table id="ukjae_TableAreaFiveth">					
					<tr align="center">
						<td style="width: 5px; border: none;"></td>	
						<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg"><br>
						<font id="ukjaeTitle_effect"> "가이드 해드립니다^^<br>(제 공 자 : 나 천 재)" </font>
						</td> 	
						<td style="width: 5px; border: none;"></td>	
						<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg">
						<font id="ukjaeTitle_effect"> "가이드 해드립니다^^<br>(제 공 자 : 나 천 재)" </font>					
						</td>
						<td style="width: 5px; border: none;"></td> 	
						<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg">
						<font id="ukjaeTitle_effect"> "가이드 해드립니다^^<br>(제 공 자 : 나 천 재)" </font>					
						</td>	
						<td style="width: 5px; border: none;"></td>	
						<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg">
						<font id="ukjaeTitle_effect"> "가이드 해드립니다^^<br>(제 공 자 : 나 천 재)" </font>						
						</td>	
						<td style="width: 5px; border: none;"></td> 	
						<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg">
						<font id="ukjaeTitle_effect"> "가이드 해드립니다^^<br>(제 공 자 : 나 천 재)" </font>					
						</td>
						<td style="width: 5px; border: none;"></td> 			
					</tr>
				</table>
				</div>
				<br>		
			
				<div style="width: 55%; float: left; border: 1px solid gray;">
						    <div class="container-fluid" style="overflow: scroll; max-height: 760px;">
						        <div class="container container-pad" id="property-listings" style="width: auto;">
						            
						              <div class="col-md-12" style="width: 100%;" align="center">
						                <h2 id="ukjaeTitle_effect">추천 여행지</h2>
						              </div>
						              <hr style="clear: both;">
						            
						            <div class="row" style="width: auto;">
						                <div class="col-sm-6" style="width: auto;"> 
						                
										<% for(int i=0; i<7; i++){ %>
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading"> <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>					
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->														                	
						                	<% } %>

						                </div>
						            </div><!-- End row -->
						        </div><!-- End container -->
						    </div>				
						</div>
						<div style="width: 44%; height:40%; float: right; border: 1px solid gray; padding-bottom: 44px; padding-top: 44px;" align="center" > <!-- 오른쪽 영역1  -->
							<font size="6" face="굴림" style="font-weight: bold;">여행가이드 제공해요</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>독신사 홈페이지 안내1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>독신사 홈페이지 안내2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>독신사 홈페이지 안내3</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>독신사 홈페이지 안내4</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>독신사 홈페이지 안내5</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
							</table>										
						</div>
				
						<div style="float: right; width: 44%; height: 15px;"> &nbsp; </div> <!-- 오른쪽1,2 두 영역의 공백을 주기위한 div -->
				
						<div style="width: 44%; height:330px; max-height:600px; float: right;" align="center"> <!-- 오른쪽 영역2  -->

									  <div class="col-md-8" style="width: 100%;  height:369px; padding: 0; border: 1px solid gray;">
									     <br>
									      <h2 class="page-header" style="margin-top: 0;"> 고객의 소리 </h2>
									        <section class="comment-list" style="padding-left: 2px; max-height:283px; width:100%; overflow: scroll;">
									          <!-- First Comment -->
									          <article class="row">
									            <div class="col-md-2 col-sm-2 hidden-xs">
									              <figure class="thumbnail" style="padding: 0;">
									                <img src="/goodluck/resources/common/img/main/이용자1.JPG" alt="이미지준비중" width="100" height="120">
									                <figcaption class="text-center">설리</figcaption>
									              </figure>
									            </div>
									            <div class="col-md-10 col-sm-10">
									              <div class="panel panel-default arrow left">
									                <div class="panel-body">
									                  <header class="text-left">
									                    <div class="comment-user"><i class="fa fa-user"></i> 설리 </div>
									                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> May 10, 2018</time>
									                  </header>
									                  <div class="comment-post">
									                    <p align="left">
														    일본어에 대한 언어장벽에 . . 가이드를 <br>
														 	이용하였는데 너무 편하게 여행하여 좋았습니다.
		
									                    </p>
									                  </div>
									                </div>
									              </div>
									            </div>
									          </article>
									          <article class="row">
									            <div class="col-md-2 col-sm-2 hidden-xs">
									              <figure class="thumbnail">
									                <img src="/goodluck/resources/common/img/main/이용자2.JPG" alt="이미지준비중" width="100" height="120">
									                <figcaption class="text-center">수지</figcaption>
									              </figure>
									            </div>
									            <div class="col-md-10 col-sm-10">
									              <div class="panel panel-default arrow left">
									                <div class="panel-body">
									                  <header class="text-left">
									                    <div class="comment-user"><i class="fa fa-user"></i> 수지 </div>
									                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> May 12, 2018</time>
									                  </header>
									                  <div class="comment-post">
									                    <p align="left">
														   영국에 처음가봐서 많이 걱정도 되고<br>
														   어디로 갈지 몰랐는데 잘 안내해주셔서 좋았습니다.
									                    </p>
									                  </div>
									                </div>
									              </div>
									            </div>
									          </article>
									          <article class="row">
									            <div class="col-md-2 col-sm-2 hidden-xs">
									              <figure class="thumbnail">
									                <img src="/goodluck/resources/common/img/main/이용자3.JPG" alt="이미지준비중" width="100" height="120">
									                <figcaption class="text-center">아이유</figcaption>
									              </figure>
									            </div>
									            <div class="col-md-10 col-sm-10">
									              <div class="panel panel-default arrow left">
									                <div class="panel-body">
									                  <header class="text-left">
									                    <div class="comment-user"><i class="fa fa-user"></i> 아이유 </div>
									                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> May 13, 2018</time>
									                  </header>
									                  <div class="comment-post">
									                    <p align="left">
														   중국에 막상 생각없이 가는것보다,<br>
														   독신사싸이트에서 가이드를 받고가는게<br>
														   도움이 많이 되었고 즐거운 여행이었습니다. 
									                    </p>
									                  </div>
									                </div>
									              </div>
									            </div>
									          </article>
									          <article class="row">
									            <div class="col-md-2 col-sm-2 hidden-xs">
									              <figure class="thumbnail">
									                <img src="/goodluck/resources/common/img/main/이용자4.JPG" alt="이미지준비중" width="100" height="120">
									                <figcaption class="text-center">하니</figcaption>
									              </figure>
									            </div>
									            <div class="col-md-10 col-sm-10">
									              <div class="panel panel-default arrow left">
									                <div class="panel-body">
									                  <header class="text-left">
									                    <div class="comment-user"><i class="fa fa-user"></i> 하니 </div>
									                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> May 16, 2018</time>
									                  </header>
									                  <div class="comment-post">
									                    <p align="left">
							
														   매번 잘 이용하고있어요 독신사 화이팅~~♥ 
								                    
									                  </p>
									                  </div>
									                </div>
									              </div>
									            </div>
									          </article>
									          <article class="row">
									            <div class="col-md-2 col-sm-2 hidden-xs">
									              <figure class="thumbnail">
									                <img src="/goodluck/resources/common/img/main/이용자5.JPG" alt="이미지준비중" width="100" height="120">
									                <figcaption class="text-center">태연</figcaption>
									              </figure>
									            </div>
									            <div class="col-md-10 col-sm-10">
									              <div class="panel panel-default arrow left">
									                <div class="panel-body">
									                  <header class="text-left">
									                    <div class="comment-user"><i class="fa fa-user"></i> 태연 </div>
									                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> May 18, 2018</time>
									                  </header>
									                  <div class="comment-post">
									                    <p align="left">
														   매번 잘 이용하고있어요 독신사 화이팅~~♥ 
		
									                    </p>
									                  </div>
									                </div>
									              </div>
									            </div>
									          </article>
									        </section>
								       </div>
								    </div>
								    <div style="width:100%; height: 10px; float: left;"> &nbsp; </div>
								    
								    
			</div>	
			<div class="item" align="center">  <!-- 프리랜서 -->
				<div>
					<h2> 추 천 프 리 랜 서 </h2>
					<table id="ukjae_TableAreaFiveth">					
						<tr align="center">
							<td style="width: 5px; border: none;"></td> 		
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/free/프리1.jpg"><br>
							<font id="ukjaeTitle_effect"> "요리사 백종원" </font>
							</td> 	
							<td style="width: 5px; border: none;"></td> 	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/free/프리2.jpg"><br>
							<font id="ukjaeTitle_effect"> "웹 디자이너" </font>
							</td> 	
							<td style="width: 5px; border: none;"></td> 	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/free/프리3.jpg"><br>
							<font id="ukjaeTitle_effect"> "JAVA 프로그래머" </font>
							</td> 	
							<td style="width: 5px; border: none;"></td> 	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/free/프리2.jpg"><br>
							<font id="ukjaeTitle_effect"> "웹 디자이너" </font>
							</td> 	
							<td style="width: 5px; border: none;"></td> 	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/free/프리1.jpg"><br>
							<font id="ukjaeTitle_effect"> "요리사 백종원" </font>
							</td> 	
							<td style="width: 5px; border: none;"></td>  	
							<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/free/프리랜서1.jpg"><br>
							<font id="ukjaeTitle_effect"> "JAVA 프로그래머" </font>
							</td> 	
							<td style="width: 5px; border: none;"></td> 		
						</tr>
					</table>			
				</div>

				<table class="ohw-home-table"> 
							<tr>
								<td class = "ohw-home-table-td" align = "center"> 
									<table class="ohw-home-table2">
										<tr>
											<td style="padding: 0;">
												<font size="6" face="굴림" style="font-weight: bold;">프로그래머 서비스 제공합니다.</font>
												<table class="jwj-innertable" border="1">
													<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
													<tr><td>01</td><td>독신사 홈페이지 안내1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
													<tr><td>02</td><td>독신사 홈페이지 안내2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
													<tr><td>03</td><td>독신사 홈페이지 안내3</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
													<tr><td>04</td><td>독신사 홈페이지 안내4</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
													<tr><td>05</td><td>독신사 홈페이지 안내5</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
												</table>						
											</td>
										</tr>
									</table>
			
								</td>
								<td class = "ohw-home-table-td" align = "center">
									<table class="ohw-home-table2">
										<tr>
											<td style="padding: 0;">
												<font size="6" face="굴림" style="font-weight: bold;">홈페이지 디자인해드립니다.</font>
												<table class="jwj-innertable" border="1">
													<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
													<tr><td>01</td><td>독신사 홈페이지 안내1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
													<tr><td>02</td><td>독신사 홈페이지 안내2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
													<tr><td>03</td><td>독신사 홈페이지 안내3</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
													<tr><td>04</td><td>독신사 홈페이지 안내4</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
													<tr><td>05</td><td>독신사 홈페이지 안내5</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
												</table>						
											</td>
										</tr>
									</table>						
								</td>
							</tr>
							<tr>
								<td class = "ohw-home-table-td" align = "center"> 
									<table class="ohw-home-table2">
										<tr>
											<td style="padding: 0;">
												<font size="6" face="굴림" style="font-weight: bold;">작가 서비스 제공합니다.</font>
												<table class="jwj-innertable" border="1">
													<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
													<tr><td>01</td><td>독신사 홈페이지 안내1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
													<tr><td>02</td><td>독신사 홈페이지 안내2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
													<tr><td>03</td><td>독신사 홈페이지 안내3</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
													<tr><td>04</td><td>독신사 홈페이지 안내4</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
													<tr><td>05</td><td>독신사 홈페이지 안내5</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
												</table>							
											</td>
										</tr>
									</table>				
								</td>
								<td class = "ohw-home-table-td" align = "center"> 
									<table class="ohw-home-table2">
										<tr>
											<td style="padding: 0;">
												<font size="6" face="굴림" style="font-weight: bold;">번역 서비스 제공합니다.</font>								
												<table class="jwj-innertable" border="1">
													<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
													<tr><td>01</td><td>독신사 홈페이지 안내1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
													<tr><td>02</td><td>독신사 홈페이지 안내2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
													<tr><td>03</td><td>독신사 홈페이지 안내3</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
													<tr><td>04</td><td>독신사 홈페이지 안내4</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
													<tr><td>05</td><td>독신사 홈페이지 안내5</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
												</table>								
											</td>
										</tr>
									</table>					
								</td>
							</tr>
					</table>
		    </div>
			<div class="item">
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/gainperson/구인1.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(1인대역) </h4>
							<div id="ukjaetypical_tablearea" align="center"> <!--  -->
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>			
							</div>
						</td>					
					</tr>
				</table>	
				<div id="ukjae_Areaspace"></div>			
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/gainperson/구인4.jpg"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(多,2인이상) </h4>
							<div id="ukjaetypical_tablearea" align="center"> <!--  -->
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>		
							</div>
						</td>					
					</tr>
				</table>	
				<div id="ukjae_Areaspace"></div>			
				<table border="1" id="ukjae_TableAreaFirst" class="ukjae_firstArea">
					<tr> 
						<td colspan="3"><img alt="대표이미지" id="typical_image" align="middle" src="/goodluck/resources/common/img/gainperson/대신맨.JPG"></td>
						<td colspan="3" align="center"> 
							<h4 style="margin-top: 0;"> 제공합니다(기타) </h4>
							<div id="ukjaetypical_tablearea" align="center"> <!--  -->
								<table id="ukjaetypical_table">
									<tr align="center"><td style="width: 20px;">번호</td><td style="width: 120px;">제목</td><td style="width: 30px;">작성자</td><td style="width: 30px;">작성일</td><td style="width: 20px;">조회수</td></tr>
									<tr align="center"><td style="width: 20px;">01</td><td style="width: 120px;">독신사 홈페이지 안내사항1</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">02</td><td style="width: 120px;">독신사 홈페이지 안내사항2</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">03</td><td style="width: 120px;">독신사 홈페이지 안내사항3</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">04</td><td style="width: 120px;">독신사 홈페이지 안내사항4</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">05</td><td style="width: 120px;">독신사 홈페이지 안내사항5</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
									<tr align="center"><td style="width: 20px;">06</td><td style="width: 120px;">독신사 홈페이지 안내사항6</td><td style="width: 30px;">정욱재</td><td style="width: 30px;">2018-05-05</td><td style="width: 20px;">58</td></tr>
								</table>			
							</div>
						</td>					
					</tr>
				</table>	
				<div id="ukjae_Areaspace"></div>			

			</div>	
		</div>				
	</div> <!-- homeCarousel -->	
</div> <!-- container div  -->

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>