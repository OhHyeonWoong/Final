<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Home</title>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
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
	}); */   
</script>
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaemainEvent.css">
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaeTravelContents.css">
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaetablestyle.css">


<style type="text/css">
	.ohw-home-table {
		margin:0;
		width:100%;
		height:800px;
	}
	.ohw-home-table-td {
		margin:200;
		padding:0;	
		padding-top:0;
		width:50%;
		height:400px;
	}
    .ohw-carousel-img {
      height:400px !important;
   }   
	.ohw-home-table2 {
		border:1px solid gray;
		width: 97%;
		height: 97%;
	}
	
	.ohw-home-table2 tr td{
		padding-top: 0px;
		margin: 0;
		text-align: center;
		font-size: 16px;
	}
	
	jwj-innertable{
		width: 400px;
		height: 400px;	
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
		margin: 0;
	}

	.juj-home-realtimebar-dt {
		display: none;
	}

	.juj-home-realtimebar-dd {
		position: relative;
		margin: 0;
	}

	.juj-home-realtimebar-ol {
		position: absolute;
		top: 0;
		left: 0;
		margin: 0;
		padding: 0;
		list-style-type: none;
	}
	
	.juj-home-realtimebar-li {
		height: 160px;
		line-height: 20px;
	}	
	
	
	/* 여행컨텐츠  */
	
	.container-fluid{  background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); }
	
	#ukjaeTarvel_title{
		color:red;
		animation: traveltitle 2s infinite;		
	}
			
	@-webkit-keyframes traveltitle {
	    from {color: red;}
	    to {color: blue;}
	} 
	
	@keyframes traveltitle {
	    from {color: red;}
	    to {color: blue;}
	}  
		
		
	/* 고객의 소리 */					
	.btn-glyphicon { padding:2px; background:#ffffff; margin-right:2px; } 
	
	.icon-btn { padding: 1px 5px 3px 2px; border-radius:50px;}		

	@import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
	/*Comment List styles*/
	.comment-list .row {
	  margin-bottom: 0px;
	  padding-top:0;
	  width: 100%;
	}
	.comment-list .panel .panel-heading {
	  margin-top:0;
	  /* padding: 4px 15px; */
	  position: absolute;
	  border:none;
	  /*Panel-heading border radius*/
	  border-top-right-radius:0px;
	  top: 1px;
	}
	.comment-list .panel .panel-heading.right {
	  border-right-width: 0px;
	  /*Panel-heading border radius*/
	  border-top-left-radius:0px;
	  
	}
	.comment-list .panel .panel-heading .panel-body {
	  padding-top: 6px;
	}
	.comment-list figcaption {
	  /*For wrapping text in thumbnail*/
	  word-wrap: break-word;
	}
	
	
	/* Portrait tablets and medium desktops */
	@media (min-width: 768px) {
	  .comment-list .arrow:after, .comment-list .arrow:before {
	    content: "";
	    position: absolute;
	    width: 0;
	    height: 0;
	    border-style: solid;
	    border-color: transparent;
	  }
	  .comment-list .panel.arrow.left:after, .comment-list .panel.arrow.left:before {
	    border-left: 0;
	  }
	  /*****Left Arrow*****/
	  /*Outline effect style*/
	  .comment-list .panel.arrow.left:before {
	    left: 0px;
	    top: 30px;
	    /*Use boarder color of panel*/
	    border-right-color: inherit;
	    border-width: 16px;
	  }
	  /*Background color effect*/
	  .comment-list .panel.arrow.left:after {
	    left: 1px;
	    top: 31px;
	    /*Change for different outline color*/
	    border-right-color: #FFFFFF;
	    border-width: 15px;
	  }
	  /*****Right Arrow*****/
	  /*Outline effect style*/
	  .comment-list .panel.arrow.right:before {
	    right: -16px;
	    top: 30px;
	    /*Use boarder color of panel*/
	    border-left-color: inherit;
	    border-width: 16px;
	  }
	  /*Background color effect*/
	  .comment-list .panel.arrow.right:after {
	    right: -14px;
	    top: 31px;
	    /*Change for different outline color*/
	    border-left-color: #FFFFFF;
	    border-width: 15px;
	  }
	}
	.comment-list .comment-post {
	  margin-top: 6px;
	}		
</style>

<script type="text/javascript"> /* 오늘의주인공 애니메이션 함수 끝 */	
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
	});
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
				<a href="Notice.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/공지사항.jpg" alt="공지사항" style="width:100%;"></a>
			</div>
			
			<div class="item" id="1">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;"></a>	
			</div>    

			<div class="item" id="2">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물2.jpg" alt="반려동물" style="width:100%;"></a>
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
		
		<div class="carousel-inner">
			<div class="item active">	
					
				<div style="width: 100%; margin-bottom: 12px;">			
					<div class = "juj-home-realtimebar-content">
									<dl class = "juj-home-realtimebar-dl">										
										<dd class ="juj-home-realtimebar-dd">
											<ol class = "juj-home-realtimebar-ol">
												<li class = "juj-home-realtimebar-li">
													<div class="well">
													      <div class="media">
													      	<a class="pull-left" href="#">
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자2.JPG" width="110" height="120">
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
											                        <span class="glyphicon glyphicon-nonstar"></span>
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
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자1.JPG" width="110" height="120">
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
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자3.JPG" width="110" height="120">
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
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자4.JPG" width="110" height="120">
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
													    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자5.JPG" width="110" height="120">
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
					<td class = "ohw-home-table-td" align = "center" style="padding: 0; margin: 0;">
					<table class="ohw-home-table2" style="border: 1px solid gray;">
						<tr>
							<td style="padding: 0;">							
								<font size="6" face="굴림" style="font-weight: bold;">오늘의 이벤트</font><br><br>
									<div class="row" align="center" style="margin: 0; padding-right: 20px; padding-left: 20px;">
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
												<script type="text/javascript">
													function event1(){			
														window.open("Eventpopup1.go","이벤트 원","left=300, top=120, width=350,height=550");
														/* 아이템컨트롤러와 연동 */
													}
													function event2(){			
														window.open("Eventpopup2.go","이벤트 투","left=600, top=120, width=350,height=550");
														/* 아이템컨트롤러와 연동 */
													}
													function event3(){			
														window.open("Eventpopup3.go","이벤트 쓰리","left=900, top=120, width=350,height=550");
														/* 아이템컨트롤러와 연동 */
													}
												</script>
									  </div>
									 </div>
								</div>		
						  </td>
						</tr>
					</table>
					</td>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding-top: 11px; padding-bottom: 4px;">
									<iframe width="520" height="320" src="https://www.youtube.com/embed/QI7cYnBlkFQ" allowfullscreen></iframe>
									<br>
									<font size="6" face="굴림" style="font-weight: bold;">독신들을 위한 레시피!!</font>

								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">독신사 공지사항</font>								
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">자주묻는질문?!!..FAQ</font>								
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
				<table class = "ohw-home-table">
						<tr>
						<td class = "ohw-home-table-td" align = "center" style="padding: 0; margin: 0;">
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>
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
				
							
			
			
          		  
<!-- 			<div id="ukjaeLifeCarousel" class="carousel slide" data-ride="carousel">
			      <div class="carousel-inner">
			      
			        <div class="item active">
			          <img src="/goodluck/resources/common/img/main/여행1.jpg">
			        </div>End Item
			 
			         <div class="item">
			          <img src="/goodluck/resources/common/img/main/여행2.jpg">
  			         </div>End Item
			        
			        <div class="item">
			          <img src="/goodluck/resources/common/img/main/여행3.jpg">
			        </div>End Item
			        
			        <div class="item">
			          <img src="/goodluck/resources/common/img/main/여행4.jpg">
			        </div>End Item  
			        
			      </div>End Carousel Inner
			      
			 
			    	<ul class="nav nav-pills nav-justified">
			          <li data-target="#ukjaeLifeCarousel" data-slide-to="0" class="mall active"></li>
			          <li data-target="#ukjaeLifeCarousel" data-slide-to="1" class="mall"></li>
			          <li data-target="#ukjaeLifeCarousel" data-slide-to="2" class="mall"></li>
			          <li data-target="#ukjaeLifeCarousel" data-slide-to="3" class="mall"></li>
			        </ul>			      
			    </div>End Carousel	 -->		
					
					
					
					<!-- <div class="jwj-lifeCarousel carousel slide" data-ride="carousel">
						Indicators
						<ol class="carousel-indicators">
							<li data-target=".jwj-lifeCarousel" data-slide-to="0" class="active2"></li> 
							<li data-target=".jwj-lifeCarousel" data-slide-to="1" class="active2"></li>
							<li data-target=".jwj-lifeCarousel" data-slide-to="2" class="active2"></li>
							<li data-target=".jwj-lifeCarousel" data-slide-to="3" class="active2"></li>
							<li data-target=".jwj-lifeCarousel" data-slide-to="4" class="active2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active2" id="0">
							
								<img class = "jwj-lifeCarousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;">									
							</div>
							
							<div class="item" id="1">
								<img class = "jwj-lifeCarousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;">	
							</div>    
				
							<div class="item" id="2">
								<img class = "jwj-lifeCarousel-img" src="/goodluck/resources/common/img/main/반려동물2.jpg" alt="반려동물" style="width:100%;">
							</div>
				
							<div class="item" id="3">
								<img class = "jwj-lifeCarousel-img" src="/goodluck/resources/common/img/main/게임.jpg" alt="게임" style="width:100%;">
							</div>
				
							<div class="item" id="4">
								<img class = "jwj-lifeCarousel-img" src="/goodluck/resources/common/img/main/음악.jpg" alt="음악" style="width:100%;">
							</div>
						</div>		
						
						<a class="left carousel-control" href=".jwj-lifeCarousel" data-slide="prev" id="topcaro">
							<span class="glyphicon glyphicon-chevron-left"></span> 화면상에 < 로 보여지는 버튼
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href=".jwj-lifeCarousel" data-slide="next" id="topcaro1">
							<span class="glyphicon glyphicon-chevron-right"></span> 화면상에 > 로 보여지는 버튼
							<span class="sr-only">Next</span>
						</a>
					</div> homeCarousel -->	

		    </div>	 
		    <div class="item">
				<table class = "ohw-home-table">
						<tr>
						<td class = "ohw-home-table-td" align = "center" style="padding: 0; margin: 0;">
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>
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
			<table class="ohw-home-table"> <!-- 게임화면 data-slide-to="3" -->
						<tr>
							<td class = "ohw-home-table-td" align = "center"> 
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>								
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
				<table class="ohw-home-table"> <!-- 음악화면 data-slide-to="4" -->
						<tr>
							<td class = "ohw-home-table-td" align = "center"> 
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>								
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
			<table class="ohw-home-table"> <!-- 렌탈화면 data-slide-to="5" -->
						<tr>
							<td class = "ohw-home-table-td" align = "center"> 
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>								
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
				<div style="width: 55%; float: left;">
						    <div class="container-fluid" style="overflow: scroll; max-height: 684px;">
						        <div class="container container-pad" id="property-listings" style="width: auto;">
						            
						              <div class="col-md-12" style="width: 100%;" align="center">
						                <h2 id="ukjaeTarvel_title">추천 여행지</h2>
						              </div>
						              <hr style="clear: both;">
						            
						            <div class="row" style="width: auto;">
						                <div class="col-sm-6" style="width: auto;"> 
						                
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>
						                            <!-- <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"> --></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">예상경비 : 1,900,000원 <small class="pull-right"> 후쿠오카 JAPAN</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>온천</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>함박스테이크</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>XXX호텔</li>
						                                </ul>
						
						                                <p class="hidden-xs">
							                                	후쿠오카가 좋은것같아요 후쿠오카공항에서  
							                                	바로 유후인으로 가는 버스가 있어서 유후인온천여행하시면 좋을것같네요
																자세한 내용은 여행블로그 참고해보세요~^^
																비행시간도 짧아서 부담없으실거에요~						                                
						                                </p><span class="fnt-smaller fnt-lighter fnt-arial"><a href="https://scurugi.blog.me/221277265688">상세보기</a></span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						

						                    				
						                </div>
						            </div><!-- End row -->
						        </div><!-- End container -->
						    </div>				
						</div>



				<div style="width: 44%; height:40%; float: right; border: 1px solid black; padding-bottom: 20px;" align="center" > <!-- 오른쪽 영역1  -->
						<h2>Planer</h2>
						<hr style="clear: both;">
						<div class="row">
							<div class="span12">
					    	    <table class="table-condensed table-bordered table-striped" style="width: 90%;">
					                <thead>
					                    <tr>
					                      <th colspan="7" align="center">
					                        <a class="btn"><i class="icon-chevron-left"></i></a>
					                        <a class="btn" al>February 2012</a>
					                        <a class="btn"><i class="icon-chevron-right"></i></a>
					                      </th>
					                    </tr>
					                    <tr>
					                        <th>Su</th>
					                        <th>Mo</th>
					                        <th>Tu</th>
					                        <th>We</th>
					                        <th>Th</th>
					                        <th>Fr</th>
					                        <th>Sa</th>
					                    </tr>
					                </thead>
					                <tbody>
					                    <tr>
					                        <td class="muted">29</td>
					                        <td class="muted">30</td>
					                        <td class="muted">31</td>
					                        <td>1</td>
					                        <td>2</td>
					                        <td>3</td>
					                        <td>4</td>
					                    </tr>
					                    <tr>
					                        <td>5</td>
					                        <td>6</td>
					                        <td>7</td>
					                        <td>8</td>
					                        <td>9</td>
					                        <td>10</td>
					                        <td>11</td>
					                    </tr>
					                    <tr>
					                        <td>12</td>
					                        <td>13</td>
					                        <td>14</td>
					                        <td>15</td>
					                        <td>16</td>
					                        <td>17</td>
					                        <td>18</td>
					                    </tr>
					                    <tr>
					                        <td>19</td>
					                        <td><strong>20</strong></td>
					                        <td>21</td>
					                        <td>22</td>
					                        <td>23</td>
					                        <td>24</td>
					                        <td>25</td>
					                    </tr>
					                    <tr>
					                        <td>26</td>
					                        <td>27</td>
					                        <td>28</td>
					                        <td>29</td>
					                        <td class="muted">1</td>
					                        <td class="muted">2</td>
					                        <td class="muted">3</td>
					                    </tr>
					                </tbody>
					            </table>    
							</div>
						</div>

	
				</div>
				
				<div style="float: right; width: 44%; height: 15px;"> &nbsp; </div> <!-- 오른쪽1,2 두 영역의 공백을 주기위한 div -->
				
				<div style="width: 44%; height:330px; border:1px solid gray;  max-height:350px; float: right;" align="center"> <!-- 오른쪽 영역2  -->
				
  						  <div class="row" style="width: 100%;">
							    <div class="col-md-8" style="width: 100%;  height:330px; padding-right: 0; padding-left: 0; margin: 0;">
							     <br>
							      <h2 class="page-header" style="margin-top: 1px; margin-bottom: 1; width: 300px; margin-bottom: 0px;"> 고객의 소리
							      </h2>
							        <section class="comment-list" style="padding-left: 2px; max-height:264px; width:100%; overflow: scroll;">
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
												    스케쥴이 바빠서 우리 슈슈를 돌볼수가 없어서.. <br>
												 	맡겼는데 너무 친절하게 잘 해주셔서 감사합니다.
												 	
												<br> <br>	
												<a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
												<a class="btn icon-btn btn-info" href="#"><span class="glyphicon btn-glyphicon glyphicon-share img-circle text-info"></span>Share</a>
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
												   독신사싸이트 덕분에 새로운 가족이 생겼어요 !! <br> <br>	
												<a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
												<a class="btn icon-btn btn-info" href="#"><span class="glyphicon btn-glyphicon glyphicon-share img-circle text-info"></span>Share</a>

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
												   우리 아지 미용 너무 잘시켜주셔서 감사해요!<br> 또 이용할께요^^ <br> <br>	
												<a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
												<a class="btn icon-btn btn-info" href="#"><span class="glyphicon btn-glyphicon glyphicon-share img-circle text-info"></span>Share</a>

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
					
												   강아지방의 배치가 어려웠는데  . .
												   잘 설계해주셔서 너무좋습니다~~♥	
												   
												   <br> <br>							                    
												<a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
												<a class="btn icon-btn btn-info" href="#"><span class="glyphicon btn-glyphicon glyphicon-share img-circle text-info"></span>Share</a>
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
												   매번 잘 이용하고있어요 독신사 화이팅~~ 
												<br> <br>	
												<a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
												<a class="btn icon-btn btn-info" href="#"><span class="glyphicon btn-glyphicon glyphicon-share img-circle text-info"></span>Share</a>

							                    </p>
							                  </div>
							                </div>
							              </div>
							            </div>
							          </article>
							        </section>
							    </div>
							  </div>
						</div>			

				<hr style="clear: both;">	
			</div>	
			<div class="item">
			<table class="ohw-home-table"> <!-- 프리랜서화면 data-slide-to="7" -->
						<tr>
							<td class = "ohw-home-table-td" align = "center"> 
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>								
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

			<table class="ohw-home-table"> <!-- 대행화면 data-slide-to="8" -->
						<tr>
							<td class = "ohw-home-table-td" align = "center"> 
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">FAQ</font>								
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
		</div>				
	</div> <!-- homeCarousel -->	
</div> <!-- container div  -->

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>