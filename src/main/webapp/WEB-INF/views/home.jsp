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
<link rel="stylesheet" type="text/css" href="resources/A2.JUJ/css/ukjaeLifeContents.css">
<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen"> 

<style type="text/css">
	.ohw-home-table {
		Sectiongin:0;
		width:100%;
		height:800px;
	}
	.ohw-home-table-td {
		Sectiongin:200;
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
		Sectiongin: 0;
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
	
	
	/* 여행컨텐츠  */
	
	/* .container-fluid{  background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); } */
	.container-fluid{
	background: url(http://i.imgur.com/GHr12sH.jpg) no-repeat center center fixed;	
	}
	
	
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
	@import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
	/*Comment List styles*/
	.comment-list .row {
	  Sectiongin-bottom: 0px;
	  padding-top:0;
	  width: 100%;
	}
	.comment-list .panel .panel-heading {
	  Sectiongin-top:0;
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
	  Sectiongin-top: 6px;
	}		
	
	/* 반려동물 영역 */
	
	.btn-glyphicon { float:right; padding:8px; background:#ffffff; margin-left:4px; }
	.icon-btn { padding: 1px 2px 3px 6px; border-radius:50px; float:left; line-height:2em; margin-left:3px;}
	
	.square, .btn {
	    border-radius: 0px!important;
	}
	              
	/* -- color classes -- */
	.coralbg {
	    background-color: #FA396F;
	} 
	
	.coral {
	    color: #FA396f;
	}
	
	.turqbg {
	    background-color: #46D8D2;
	}
	
	.turq {
	    color: #46D8D2;
	}
	
	.white {
	    color: #fff!important;
	}
	
	div.user-menu-container {
	  z-index: 10;
	  background-color: #fff;
	  margin-top: 20px;
	  background-clip: padding-box;
	  opacity: 0.97;
	  filter: alpha(opacity=97);
	  -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
	  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
	}
	
	div.user-menu-container .btn-lg {
	    padding: 0px 12px;
	}
	
	div.user-menu-container h4 {
	    font-weight: 300;
	    color: #8b8b8b;
	}
	
	div.user-menu-container a, div.user-menu-container .btn  {
	    transition: 1s ease;
	}
	
	div.user-menu-container .thumbnail {
	   width:100%;
	   min-height:200px;
	   border: 0px!important;
	   padding: 0px;
	   border-radius: 0;
	   border: 0px!important;
	}
	
	/* -- Vertical Button Group -- */
	div.user-menu-container .btn-group-vertical {
	    display: block;
	}
	
	div.user-menu-container .btn-group-vertical>a {
	    padding: 20px 25px;
	    background-color: #46D8D2;
	    color: white;
	    border-color: #fff;
	}
	
	div.btn-group-vertical>a:hover {
	    color: white;
	    border-color: white;
	}
	
	div.btn-group-vertical>a.active {
	    background: #FA396F;
	    box-shadow: none;
	    color: white;
	}
	/* -- Individual button styles of vertical btn group -- */
	div.user-menu-btns {
	    padding-right: 0;
	    padding-left: 0;
	    padding-bottom: 0;
	}
	
	div.user-menu-btns div.btn-group-vertical>a.active:after{
	  content: '';
	  position: absolute;
	  left: 100%;
	  top: 50%;
	  margin-top: -13px;
	  border-left: 0;
	  border-bottom: 13px solid transparent;
	  border-top: 13px solid transparent;
	  border-left: 10px solid #46D8D2;
	}
	/* -- The main tab & content styling of the vertical buttons info-- */
	div.user-menu-content {
	    color: #323232;
	}
	
	ul.user-menu-list {
	    list-style: none;
	    margin-top: 20px;
	    margin-bottom: 0;
	    padding: 10px;
	    border: 1px solid #eee;
	}
	ul.user-menu-list>li {
	    padding-bottom: 8px;
	    text-align: center;
	}
	
	div.user-menu div.user-menu-content:not(.active){
	  display: none;
	}
	
	/* -- The btn stylings for the btn icons -- */
	.btn-label {position: relative;left: -12px;display: inline-block;padding: 6px 12px;background: rgba(0,0,0,0.15);border-radius: 3px 0 0 3px;}
	.btn-labeled {padding-top: 0;padding-bottom: 0;}
	
	/* -- Custom classes for the snippet, won't effect any existing bootstrap classes of your site, but can be reused. -- */
	
	.user-pad {
	    padding: 20px 25px;
	}
	
	.no-pad {
	    padding-right: 0;
	    padding-left: 0;
	    padding-bottom: 0;
	}
	
	.user-details {
	    background: #eee;
	    min-height: 333px;
	}
	
	.user-image {
	  max-height:200px;
	  overflow:hidden;
	}
	
	.overview h3 {
	    font-weight: 300;
	    margin-top: 15px;
	    margin: 10px 0 0 0;
	}
	
	.overview h4 {
	    font-weight: bold!important;
	    font-size: 40px;
	    margin-top: 0;
	}
	
	.view {
	    position:relative;
	    overflow:hidden;
	    margin-top: 10px;
	}
	
	.view p {
	    margin-top: 20px;
	    margin-bottom: 0;
	}
	 
	.caption {
	    position:absolute;
	    top:0;
	    right:0;
	    background: rgba(70, 216, 210, 0.44);
	    width:100%;
	    height:100%;
	    padding:2%;
	    display: none;
	    text-align:center;
	    color:#fff !important;
	    z-index:2;
	}
	
	.caption a {
	    padding-right: 10px;
	    color: #fff;
	}
	
	.info {
	    display: block;
	    padding: 10px;
	    background: #eee;
	    text-transform: uppercase;
	    font-weight: 300;
	    text-align: right;
	}
	
	.info p, .stats p {
	    margin-bottom: 0;
	}
	
	.stats {
	    display: block;
	    padding: 10px;
	    color: white;
	}
	
	.share-links {
	    border: 1px solid #eee;
	    padding: 15px;
	    margin-top: 15px;
	}
	
	.square, .btn {
	    border-radius: 0px!important;
	}
	
	/* -- media query for user profile image -- */
	@media (max-width: 767px) {
	    .user-image {
	        max-height: 400px;
	    }
	}	

	/* 음악영역 */
	
	#pinBoot {
	  position: relative;
	  max-width: 100%;
	  width: 100%;
	}

	.white-panel {
	  position: absolute;
	  background: white;
	  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
	  padding: 10px;
	}
	/*
	stylize any heading tags withing white-panel below
	*/
	
	.white-panel h1 {
	  font-size: 1em;
	}
	.white-panel h1 a {
	  color: #A92733;
	}
	.white-panel:hover {
	  box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
	  margin-top: -5px;
	  -webkit-transition: all 0.3s ease-in-out;
	  -moz-transition: all 0.3s ease-in-out;
	  -o-transition: all 0.3s ease-in-out;
	  transition: all 0.3s ease-in-out;
	}
	
	/* 프리랜서 상부영역 */
	.tutor-content{ color : white; width: 230px; }
	
	.tutor-block { background-image : url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); width: 250px; margin-right: 0;}
	.tutor-img { width: 230px; height: 150px; margin-right: 0; }
	.tutor-img img { width: 150px; height:150px; padding: 0; margin: 0; }
	.social-media { background-color: #292929; padding: 12px; text-align: center; }
	.social-media span { margin-right: 18px; font-size: 20px; font-family: "FontAwesome";}
	.mb60{margin-bottom:60px;}
	
	
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
		
		<div class="carousel-inner">
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
					<td class = "ohw-home-table-td" align = "center" style="padding: 0; Sectiongin: 0;">
					<table class="ohw-home-table2" style="border: 1px solid gray;">
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
				<div class='container2'>
				  <div class='blog-posts'>
				    <div class='post featured'>
				        <!-- <div class='image' style='background-image: url(https://unsplash.it/600/400/?random)'> -->
				        <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활1.jpg');"></div>
				        <div class='content' align="center">
					       	<h2> 제 공 해 요 </h2>
							<table border="1" style="width: 100%; height: 50%;">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							</table>
				        </div>
				    </div>
				    
				    <div class='row cf'>
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활1.jpg');">

				          </div>
				          <div class='content'>
				          	거실 꾸미기, 가벽 세우고 화이트 톤으로 페인팅<br>
				          	(서비스 제공자 : 홍 길 동)
				          
		
				            
				            
				          </div>
				      </div>
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활2.jpg');">

				          </div>
				          <div class='content'>
				          	수납은 기본, 바다를 닮은 좁은 아이방 만들기!<br>
				          	(서비스 제공자 : 정 욱 재)
		
				            
				            
				          </div>

				      </div>
				      
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활3.jpg');">

				          </div>
				          <div class='content'>
				            다시짱짱해게! 늘어난 티셔츠 수선해드립니다!<br>
				          	(서비스 제공자 : 도 우 너)
		
				            
				            
				          </div>
				
				      </div>


				    </div>
				    
				    <div class='row cf'>
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활3.jpg');">
				          </div>
				          <div class='content'>
				            다시짱짱해게! 늘어난 티셔츠 수선해드립니다!<br>
				          	(서비스 제공자 : 도 우 너)
				          </div>
				
				      </div>				    
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활1.jpg');">
				          </div>
				          <div class='content'>
				          	거실 꾸미기, 가벽 세우고 화이트 톤으로 페인팅<br>
				          	(서비스 제공자 : 홍 길 동)
				          </div>
				      </div>				      
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/life/생활2.jpg');">	
				          </div>
				          <div class='content'>
				          	수납은 기본, 바다를 닮은 좁은 아이방 만들기!<br>
				          	(서비스 제공자 : 정 욱 재)
				          </div>				 
				      </div>	
				    </div>				    
				  </div>
				</div>
		    </div>	 
		    <div class="item" style="background-image:-webkit-linear-gradient(left,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4);background-image:-moz-linear-gradient(left,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4);background-image:-o-linear-gradient(left,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4);background-image:linear-gradient(to right,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4)">		    
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
 					}); 					
 					
 					</script>
 
 
 					<div style="width: 100%; height: 5%;">
 					<img src="http://i.imgur.com/RcmcLv4.png" class="img-responsive" alt="" />
 					</div>
					    <div class="row user-menu-container square">
					        <div class="col-md-7 user-details">
					            <div class="row coralbg white">
					                <div class="col-md-6 no-pad">
					                    <div class="user-pad">
					                        <h3>이번달의 반려동물<br> 킹카를 소개합니다.!</h3>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 종류 : 코숏 </h4>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 이름 : 페퍼 </h4>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 나이 : 2세(24개월) </h4>
					                        <h4 class="white"><i class="fa fa-check-circle-o"></i> 성격 : 차분함 </h4>
					                        <!-- <h4 class="white"><i class="fa fa-twitter"></i> 이름 : 페퍼</h4> -->

					                    </div>
					                </div>
					                <div class="col-md-6 no-pad">
					                    <div class="user-image">
					                        <img src="/goodluck/resources/common/img/main/반려동물2.jpg" class="img-responsive thumbnail"  style="margin-top: 40px; margin-bottom: 0;">
					                    </div>
					                </div>
					            </div>
					            <div class="row overview" style=" background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg');">
					                <div class="col-md-4 user-pad text-center" align="center"> 
					                    <h3 style="color: white">FOLLOWERS - <span class="fa fa-heart-o"></span> </h3>
					                    <h4 style="color: white">588</h4>
					                </div>
					                <div class="col-md-4 user-pad text-center" align="center">
					                    <h3 style="color: white">FOLLOWING - <span class="fa fa-heart-o"></span></h3>
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
					        <div class="col-md-4 user-menu user-pad">
					            <div class="user-menu-content active">
					                <h3>
					                    서비스 제공해요
					                </h3>

									<table border="1" style="width: 100%; height: 50%;">
										<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
										<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
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
					                        <h4 id="ukjaeTarvel_title"> 1.외출후 잘 씻긴다. </h4>
					                    </li>
					                    <li>
					                        <h4 id="ukjaeTarvel_title"> 2.잘 타이른다. </h4> 
					                    </li>
					                    <li>
					                        <h4 id="ukjaeTarvel_title"> 3.맛있는 간식을 많이준다. </h4>
					                    </li>
					                </ul>		
					                
					            </div>
					        </div>
					    </div>
			<div style="width: 100%; height: 600px; margin-top: 10px;"> &nbsp;
			</div>
			<hr style="clear: both;">
			
			</div> <!-- item end  -->
			<div class="item">
				<div class='container2'>
				  <div class='blog-posts'>
				    <div class='post featured'>
				        <!-- <div class='image' style='background-image: url(https://unsplash.it/600/400/?random)'> -->
				        <div class='image' style="background-image: url('/goodluck/resources/common/img/game/게임1.jpg');"></div>
				        <div class='content' align="center">
					       	<h2> 제 공 해 요 </h2>
							<table border="1" style="width: 100%; height: 50%;">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							</table>
				        </div>
				    </div>
				    
				   <div class='row cf'>
				      <div class='post'>
				          <div class='image'>
							<iframe style="width:280px; height: 199px;" src="https://www.youtube.com/embed/4mh-5-dEoVs"></iframe>
				          </div>
				          <div class='content' style="padding-top: 10px;">
							
							<h4>아서왕 어떻게 써야될까?<br>Bj랩해도돼 공략글</h4>


				          </div>
				      </div>
				      <div class='post'>
				          <div class='image'>
							<iframe  style="width:280px; height: 199px;" src="https://www.youtube.com/embed/u9mjViuNoDM"></iframe>
				          </div>
				          <div class='content' style="padding-top: 10px;">
							
							<h4>역대급 신행템...?<br>Bj랩해도돼 공략글</h4>


				          </div>
				      </div>
				      
				      

				    </div> 				    
				    

				    <div class='row cf'>
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/game/게임3.jpg');">

				          </div>
				          <div class='content'>
				          	<br>
				            (PS3)던전 앤 드레곤<br> 타이틀판매.<br><br>
				            (제공자 : 태 극 기)
				          </div>
				      </div>				    

				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/game/게임2.jpg');">
				          </div>
				          <div class='content'>
				            <br>(닌텐도)신게임 '마리오테니스'! 친절하게 가르쳐 드립니다.<br><br>
				            (제공자 : 짱 짱 맨)

				          </div>
				      </div>
				      
				      <div class='post'>
				          <div class='image' style="background-image: url('/goodluck/resources/common/img/game/게임5.jpg');">

				          </div>
				          <div class='content'>
							<br>
							(일반)게이밍장비 판매 + 가이드 해드립니다.<br>
				            (제공자 : 짱 구 아 빠)							
		
				            
				            
				          </div>
		
				      </div>

				    </div>				    
			
				  </div>
				</div>
			</div>
			<div class="item">
				<script type="text/javascript"> /* 음악 영역에 대한 스크립트. */
					$(document).ready(function() {
							$('#pinBoot').pinterest_grid({
							no_columns: 4,
							padding_x: 10,
							padding_y: 10,
							margin_bottom: 50,
							single_column_breakpoint: 700
							});
						});
		
						;(function ($, window, document, undefined) {
						    var pluginName = 'pinterest_grid',
						        defaults = {
						            padding_x: 10,
						            padding_y: 10,
						            no_columns: 3,
						            margin_bottom: 50,
						            single_column_breakpoint: 700
						        },
						        columns,
						        $article,
						        article_width;
		
						    function Plugin(element, options) {
						        this.element = element;
						        this.options = $.extend({}, defaults, options) ;
						        this._defaults = defaults;
						        this._name = pluginName;
						        this.init();
						    }
		
						    Plugin.prototype.init = function () {
						        var self = this,
						            resize_finish;
		
						        $(window).resize(function() {
						            clearTimeout(resize_finish);
						            resize_finish = setTimeout( function () {
						                self.make_layout_change(self);
						            }, 11);
						        });
		
						        self.make_layout_change(self);
		
						        setTimeout(function() {
						            $(window).resize();
						        }, 500);
						    };
		
						    Plugin.prototype.calculate = function (single_column_mode) {
						        var self = this,
						            tallest = 0,
						            row = 0,
						            $container = $(this.element),
						            container_width = $container.width();
						            $article = $(this.element).children();
		
						        if(single_column_mode === true) {
						            article_width = $container.width() - self.options.padding_x;
						        } else {
						            article_width = ($container.width() - self.options.padding_x * self.options.no_columns) / self.options.no_columns;
						        }
		
						        $article.each(function() {
						            $(this).css('width', article_width);
						        });
		
						        columns = self.options.no_columns;
		
						        $article.each(function(index) {
						            var current_column,
						                left_out = 0,
						                top = 0,
						                $this = $(this),
						                prevAll = $this.prevAll(),
						                tallest = 0;
		
						            if(single_column_mode === false) {
						                current_column = (index % columns);
						            } else {
						                current_column = 0;
						            }
		
						            for(var t = 0; t < columns; t++) {
						                $this.removeClass('c'+t);
						            }
		
						            if(index % columns === 0) {
						                row++;
						            }
		
						            $this.addClass('c' + current_column);
						            $this.addClass('r' + row);
		
						            prevAll.each(function(index) {
						                if($(this).hasClass('c' + current_column)) {
						                    top += $(this).outerHeight() + self.options.padding_y;
						                }
						            });
		
						            if(single_column_mode === true) {
						                left_out = 0;
						            } else {
						                left_out = (index % columns) * (article_width + self.options.padding_x);
						            }
		
						            $this.css({
						                'left': left_out,
						                'top' : top
						            });
						        });
		
						        this.tallest($container);
						        $(window).resize();
						    };
		
						    Plugin.prototype.tallest = function (_container) {
						        var column_heights = [],
						            largest = 0;
		
						        for(var z = 0; z < columns; z++) {
						            var temp_height = 0;
						            _container.find('.c'+z).each(function() {
						                temp_height += $(this).outerHeight();
						            });
						            column_heights[z] = temp_height;
						        }
		
						        largest = Math.max.apply(Math, column_heights);
						        _container.css('height', largest + (this.options.padding_y + this.options.margin_bottom));
						    };
		
						    Plugin.prototype.make_layout_change = function (_self) {
						        if($(window).width() < _self.options.single_column_breakpoint) {
						            _self.calculate(true);
						        } else {
						            _self.calculate(false);
						        }
						    };
		
						    $.fn[pluginName] = function (options) {
						        return this.each(function () {
						            if (!$.data(this, 'plugin_' + pluginName)) {
						                $.data(this, 'plugin_' + pluginName,
						                new Plugin(this, options));
						            }
						        });
						    }
		
						})(jQuery, window, document);			
					</script>
					
			
			
			   <div  style="width: 100%; height: 100%;" align="center">  
				  <div class="row"  style="width: 98%; height: auto; max-width:100%; overflow: scroll;">
				    <h2> 음 악 영 역  서비스 제공공간 </h2>
				    		
				    <hr>
				    <section id="pinBoot">
				
				     <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>
  			     	 </article>
				
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]흉성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>				
				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]기초부터~실전까지.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비강의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠6.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]복식호흡의 기초</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠7.jpg" style="width: 220px; height: 230px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]공명점의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠8.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				     <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>
  			     	 </article>
				
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]흉성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>				
				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]기초부터~실전까지.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비강의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠6.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]복식호흡의 기초</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠7.jpg" style="width: 220px; height: 230px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]공명점의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠8.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				     <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>
  			     	 </article>
				
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]흉성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>				
				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]기초부터~실전까지.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비강의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠6.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]복식호흡의 기초</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠7.jpg" style="width: 220px; height: 230px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]공명점의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠8.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				     <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠1.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>
  			     	 </article>
				
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠2.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]흉성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠3.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>				
				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠4.jpg" style="width: 220px; height: 220px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]기초부터~실전까지.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠5.jpg" style="width: 220px; height: 103px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]비강의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠6.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]복식호흡의 기초</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠7.jpg" style="width: 220px; height: 230px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]공명점의 울림</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				      
				      <article class="white-panel"><img src="/goodluck/resources/common/img/music/음악컨텐츠8.jpg" style="width: 220px; height: 150px;" alt="이미지준비중">
				        <h4><a href="#">[보컬]두성 알려드립니다.</a><br>(제공자: 정 욱 재)</h4>

				      </article>
				    </section>
				    <hr>
				    
				  <p>
				    노 래 는 한 만 큼 실 력 이 늘 은 다.
				  </p>

				  </div>

				</div>
			</div>
			<br><br>
			
			<div class="item"> <!-- 렌탈 작성영역  -->
	
				<div class='container2'>
				  <div class='blog-posts'>
				    <div class='post featured'>				    
				        <div class='image' style="background-image: url('/goodluck/resources/common/img/rent/렌탈1.jpg');"></div>
				        <div class='content' align="center">
					       	<h2> 홈(HOME) 제 공 해 요 </h2>
							<table border="1" style="width: 100%; height: 50%;">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							</table>
				        </div>
				    </div>
				    <div class='post featured'>
				        <div class='content' align="center">
					       	<h2> 스포츠용품(SPORTS) 제 공 해 요 </h2>
							<table border="1" style="width: 100%; height: 50%;">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							</table>
				        </div>
				        <div class='image' style="background-image: url('/goodluck/resources/common/img/rent/렌탈2.jpg');"></div>				        
				    </div>
				    <div class='post featured'>
				        <div class='image' style="background-image: url('/goodluck/resources/common/img/rent/렌탈3.jpg');"></div>
				        <div class='content' align="center">
					       	<h2> 생활용품(Liveing) 제 공 해 요 </h2>
							<table border="1" style="width: 100%; height: 50%;">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							</table>
				        </div>
				    </div>
				    <div class='post featured'>
				        <div class='content' align="center">
					        <h2> 기타(Etc) 제 공 해 요 </h2>
							<table border="1" style="width: 100%; height: 50%;">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>제공합니다1</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>제공합니다2</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>04</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>05</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>06</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>07</td><td>제공합니다3</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							</table>
				        </div>
				        <div class='image' style="background-image: url('/goodluck/resources/common/img/rent/렌탈4.jpg');"></div>				        
				    </div>
				  </div>
				</div>
			<div style="width: 100%; height: 35px;"> &nbsp; </div>	
				
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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing" style="background: none;">
						                        <div class="media"  style="background: black; color: white;">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="/goodluck/resources/common/img/travel/후쿠오카.JPG" style="width: auto; height: 135px;"></a>

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



					<div style="width: 44%; height:40%; float: right; border: 1px solid gray; padding-bottom: 44px; padding-top: 44px;" align="center" > <!-- 오른쪽 영역1  -->
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">여행가이드 제공해요</font>
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
				</div>
				
				<div style="float: right; width: 44%; height: 15px;"> &nbsp; </div> <!-- 오른쪽1,2 두 영역의 공백을 주기위한 div -->
				
				<div style="width: 44%; height:330px; border:1px solid gray;  max-height:350px; float: right;" align="center"> <!-- 오른쪽 영역2  -->
				
  						  <div class="row" style="width: 100%;">
							    <div class="col-md-8" style="width: 100%;  height:330px; padding-right: 0; padding-left: 0; Sectiongin: 0;">
							     <br>
							      <h2 class="page-header" style="Sectiongin-top: 1px; Sectiongin-bottom: 1; width: 300px; Sectiongin-bottom: 0px; margin-top: 0;"> 고객의 소리
							      </h2>
							        <section class="comment-list" style="padding-left: 2px; max-height:250px; width:100%; overflow: scroll;">
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
												   독신사싸이트 덕분에 새로운 가족이 생겼어요 !! 
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
												   우리 아지 미용 너무 잘시켜주셔서 감사해요!<br> 또 이용할께요^^ 
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
			<div class="item" align="center">  <!-- 대행화면 data-slide-to="7" -->

	            <div class="row" style="width: 100%; height: 30px; padding-left: 40px;">
	                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb60 text-center" style="margin-bottom: 0;">
	                        <h2 style="margin-top: 0;">추천 프리랜서</h2>
	             		</div>
	            </div>
	            <div class="row"  align="center" style="padding-left: 50px;" >
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
	                    <div class="tutor-block">
	                        <div class="tutor-img">
	                            <img src="/goodluck/resources/common/img/free/프리랜서1.jpg">
	                        </div>
	                        <div class="tutor-content">
	                        		타이틀 : 싸이트개발해드립니다.<br>
	                        		이름 : 황마담<br>
									직종 : 프로그래머 <br>
									주종 : JAVA언어 <br>
									경력 : 웹개발5년차 
	                        </div>
	                    </div>
	                 </div>
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
	                    <div class="tutor-block">
	                        <div class="tutor-img">
	                            <img src="/goodluck/resources/common/img/free/프리1.jpg">
	                        </div>
	                        <div class="tutor-content">
	                        		타이틀 : 출장부폐 차려드립니다. <br>
	                        		이름 : 백종원<br>
									직종 : 요리사 <br>
									주종 : 만능 <br>
									경력 : 요리10년차 이상 
	                        </div>
	                    </div>
	                 </div>
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
	                    <div class="tutor-block">
	                        <div class="tutor-img">
	                            <img src="/goodluck/resources/common/img/free/프리2.jpg">
	                        </div>
	                        <div class="tutor-content">
	                        		타이틀 : 홈페이지 디자인 해드려요<br>
	                        		이름 : 미소미<br>
									직종 : 웹디자이너 <br>
									주종 : 포토샵,CSS,JAVASCRIPT <br>
									경력 : 웹디자이너 3년차
	                        </div>
	                    </div>
	                 </div>
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
	                    <div class="tutor-block">
	                        <div class="tutor-img">
	                            <img src="/goodluck/resources/common/img/free/프리3.jpg">
	                        </div>
	                        <div class="tutor-content">
	                        		타이틀 : 문서 번역해드립니다.<br>(영어,일본어,중국어) <br>
	                        		이름 : 나번역<br>
									직종 : 번역가 <br>
									경력 : 번역 10년차
	                        </div>
	                    </div>
	                 </div>
		  	 </div>
			
			<hr style="clear: both;">

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