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
	}
	
	jwj-innertable{
		width: 400px;
		height: 400px;	
	}
	
	/*  Bootstrap icon */				
	.btn-glyphicon { padding:2px; background:#ffffff; margin-right:2px; } 
	
	.icon-btn { padding: 1px 5px 3px 2px; border-radius:50px;}			  												
	
	
				/* **************************************************************  */

				/*font Awesome http://fontawesome.io*/
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
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/구인.jpg" alt="구인" style="width:100%;"></a>
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
			<table class="ohw-home-table"> <!-- main화면 data-slide-to="0" -->
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 
												
					<table class="ohw-home-table2" style="border: 1px solid gray;">
						<tr>
							<td style="padding-left: 21px; padding-right: 0; padding-top: 0; padding-bottom: 0;" align="center">
							  <div class="row" style="width: 100%;">
							    <div class="col-md-8" style="width: 101%; padding-right: 0; padding-left: 0; margin: 0;">
							     <br>
							      <h2 class="page-header" style="margin-top: 1px; margin-bottom: 1; width: 25;"> 고객의 한마디 
							      </h2>
							        <section class="comment-list" style="padding-left: 20px; max-height:311px; width:101%; overflow: scroll;">
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
							</td>	
						</tr>
					</table>	

					</td>
					<td class = "ohw-home-table-td" align = "center">
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td>
									<iframe width="520" height="320" src="https://www.youtube.com/embed/QI7cYnBlkFQ" allowfullscreen></iframe>
									<br>
									<font size="6" face="굴림" style="font-weight: bold;">독신들을 위한 레시피!!</font>
								</td>
							</tr>
						</table>
						<!-- <font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
						<div id="homeCarousel" class="ohw-homeCarousel2 carousel slide" data-ride="carousel" data-interval="false">
							Indicators
							<ol class="carousel-indicators">
								<li data-target=".ohw-homeCarousel2" data-slide-to="0" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="1" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="2" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="3" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="4" class="active"></li>
							</ol>		

							<div class="carousel-inner">
								<div class="item active">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=001&aid=0008319484"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스1.jpg" alt="이미지준비중.." width="550" height="150"></a></td></tr>
										<tr align="center"> <td><h4>"연령대별 독신가구 소득·소비 실태"</h4></td> </tr>
									</table>
								</div>		
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://news.donga.com/3/all/20180401/89399594/1"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스4.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><h4>“결혼 해봐야 돈만 들지… 독신이 낫다</h4></td> </tr>
									</table>						
								</div>																
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr align="center"><td style="padding: 0;"><iframe width="567" height="395" style="border: 1px solid black;" src="https://www.youtube.com/embed/QI7cYnBlkFQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></td></tr>
										<tr align="center"><td><h4>"[혼밥의정석]색다른 도시락 메뉴 없을까 싶을 때, 키쉬"</h4></td></tr>
									</table>																		
								</div>    
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://famtimes.co.kr/news/view/46456"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스3.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><font size="4" face="굴림" style="font-weight: bold;">"우아한 싱글, '독신 생활'의 장점"</font></td> </tr>
									</table>		
								</div>
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://www.jejunews.com/news/articleView.html?idxno=2112473"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스2.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><h4>"나 홀로 시대"</h4></td> </tr>
									</table>	
								</div>
							</div>		
							
							<a class="left carousel-control" href=".ohw-homeCarousel2" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left"></span> 
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href=".ohw-homeCarousel2" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span> 
								<span class="sr-only">Next</span>
							</a>
						</div> 	homeCarousel -->							
					</td>
				</tr>
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
							<td style="padding: 0;">
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
															window.open("Eventpopup1.go","이벤트 원","width=350,height=550");
															/* 아이템컨트롤러와 연동 */
														}
														function event2(){			
															window.open("Eventpopup2.go","이벤트 투","width=350,height=550");
															/* 아이템컨트롤러와 연동 */
														}
														function event3(){			
															window.open("Eventpopup3.go","이벤트 쓰리","width=350,height=550");
															/* 아이템컨트롤러와 연동 */
														}
													</script>
										 </div>
										 </div>
										
									</div>		
							</td>							
							
								<!-- <td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
									<table class="jwj-innertable" border="1">
										<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
										<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
										<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
										<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
									</table>							
								</td> -->
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
										<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
										<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
										<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
									</table>								
								</td>
							</tr>
						</table>					
					</td>
				</tr>
			</table>
			</div> 

			<div class="item">
				<table class = "ohw-home-table"> <!-- 생활화면 data-slide-to="1" -->
						<tr>
						<td class = "ohw-home-table-td" align = "center" style="padding: 0; margin: 0;">
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
									<table class="jwj-innertable" border="1">
										<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
										<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
										<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
										<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
										<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
										<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
										<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
										<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
										<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
										<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
										<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
										<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
										<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
										<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
										<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
									</table>						
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
			</div>    
			
			<div class="item">
				<table class = "ohw-home-table"> <!-- 반려동물화면 data-slide-to="2" -->
					<tr>
						<td class = "ohw-home-table-td"> 	
						<table class="ohw-home-table2" style="border: 1px solid gray;">
								<tr>
									<td style="padding-left: 21px; padding-right: 0; padding-top: 200; padding-bottom: 0;" align="center">
									  <div class="row" style="width: 100%;">
									    <div class="col-md-8" style="width: 101%; padding-right: 0; padding-left: 0; margin: 0;">
									     <br>
									      <h2 class="page-header" style="margin-top: 1px; margin-bottom: 1; width: 25;">이용후기 리스트..</h2>
									        <section class="comment-list" style="padding-left: 20px; max-height:311px; width:101%; overflow: scroll;">
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
									                    <p>
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
									                    <p>
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
									                    <p>
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
									                    <p>
							
														   강아지를 키우는데 집안 가구배치가 너무 걱정되서 잠을 못이루었는데..<br>
														   가구배치하는분이 정말 잘 설계해주셔서 아주조항요!~
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
									                    <p>
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
									</td>
								</tr>
						</table>
						

						</td>
						<td class = "ohw-home-table-td" align = "center">						
							<table class="ohw-home-table2" style="border: 1px solid gray;">
								<tr>
									<td style="padding: 0;">
										<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font> <i class="fa fa-facebook fa-3x"></i> <i class="fa fa-twitter fa-3x"></i>
										<table class="jwj-innertable" border="1">
											<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
											<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
											<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
											<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
											<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
											<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
											<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
											<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
											<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
											<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
											<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
											<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
											<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
											<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
											<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
											<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
											</table>								
										</td>
									</tr>
								</table>					
							</td>
						</tr>
					</table>
			</div>
			
			<div class="item">
			<table class="ohw-home-table"> <!-- 여행화면 data-slide-to="6" -->
						<tr>
							<td class = "ohw-home-table-td" align = "center"> 
								<table class="ohw-home-table2" style="border: 1px solid gray;">
									<tr>
										<td style="padding: 0;">
											<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
											<table class="jwj-innertable" border="1">
												<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
											</table>								
										</td>
									</tr>
								</table>					
							</td>
						</tr>
					</table>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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
												<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
												<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
												<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
												<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
												<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
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