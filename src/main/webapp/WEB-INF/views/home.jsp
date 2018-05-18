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
		font-size: 16px;
	}
	
	jwj-innertable{
		width: 400px;
		height: 400px;	
	}
	
	/*  Bootstrap icon */				
	.btn-glyphicon { padding:2px; background:#ffffff; margin-right:2px; } 
	
	.icon-btn { padding: 1px 5px 3px 2px; border-radius:50px;}			  												
	
	
	/* **************************************************************  */

	/* 고객의 소리 */
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
	

	/* ********************************반려동물쪽******************************  */
	

/**** BASE ****/
a {
    color: #03a1d1;
    text-decoration: none!important;
}

/**** LAYOUT ****/
.list-inline>li {
    padding: 0 10px 0 0;
}
.container-pad {
    padding: 30px 15px;
}


/**** MODULE ****/
.bgc-fff {
    background-color: #fff!important;
}
.box-shad {
    -webkit-box-shadow: 1px 1px 0 rgba(0,0,0,.2);
    box-shadow: 1px 1px 0 rgba(0,0,0,.2);
}
.brdr {
    border: 1px solid #ededed;
}

/* Font changes */
.fnt-smaller {
    font-size: .9em;
}
.fnt-lighter {
    color: #bbb;
}

/* Padding - Margins */
.pad-10 {
    padding: 10px!important;
}
.mrg-0 {
    margin: 0!important;
}
.btm-mrg-10 {
    margin-bottom: 10px!important;
}
.btm-mrg-20 {
    margin-bottom: 20px!important;
}

/* Color  */
.clr-535353 {
    color: #535353;
}
/**** MEDIA QUERIES ****/
@media only screen and (max-width: 991px) {
    #property-listings .property-listing {
        padding: 5px!important;
    }
    #property-listings .property-listing a {
        margin: 0;
    }
    #property-listings .property-listing .media-body {
        padding: 10px;
    }
}

@media only screen and (min-width: 992px) {
    #property-listings .property-listing img {
        max-width: 180px;
    }
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


				<div style="width: 62%; float: left;">
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
					            <span><i class="glyphicon glyphicon-comment"></i> 2 comments</span>
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
					</div>


					<script type="text/javascript">
					(function($) {
					    /**
						 * attaches a character counter to each textarea element in the jQuery object
						 * usage: $("#myTextArea").charCounter(max, settings);
						 */
						
						$.fn.charCounter = function (max, settings) {
							max = max || 100;
							settings = $.extend({
								container: "<span></span>",
								classname: "charcounter",
								format: "(%1 characters remaining)",
								pulse: true,
								delay: 0
							}, settings);
							var p, timeout;
							
							function count(el, container) {
								el = $(el);
								if (el.val().length > max) {
								    el.val(el.val().substring(0, max));
								    if (settings.pulse && !p) {
								    	pulse(container, true);
								    };
								};
								if (settings.delay > 0) {
									if (timeout) {
										window.clearTimeout(timeout);
									}
									timeout = window.setTimeout(function () {
										container.html(settings.format.replace(/%1/, (max - el.val().length)));
									}, settings.delay);
								} else {
									container.html(settings.format.replace(/%1/, (max - el.val().length)));
								}
							};
							
							function pulse(el, again) {
								if (p) {
									window.clearTimeout(p);
									p = null;
								};
								el.animate({ opacity: 0.1 }, 100, function () {
									$(this).animate({ opacity: 1.0 }, 100);
								});
								if (again) {
									p = window.setTimeout(function () { pulse(el) }, 200);
								};
							};
							
							return this.each(function () {
								var container;
								if (!settings.container.match(/^<.+>$/)) {
									// use existing element to hold counter message
									container = $(settings.container);
								} else {
									// append element to hold counter message (clean up old element first)
									$(this).next("." + settings.classname).remove();
									container = $(settings.container)
													.insertAfter(this)
													.addClass(settings.classname);
								}
								$(this)
									.unbind(".charCounter")
									.bind("keydown.charCounter", function () { count(this, container); })
									.bind("keypress.charCounter", function () { count(this, container); })
									.bind("keyup.charCounter", function () { count(this, container); })
									.bind("focus.charCounter", function () { count(this, container); })
									.bind("mouseover.charCounter", function () { count(this, container); })
									.bind("mouseout.charCounter", function () { count(this, container); })
									.bind("paste.charCounter", function () { 
										var me = this;
										setTimeout(function () { count(me, container); }, 10);
									});
								if (this.addEventListener) {
									this.addEventListener('input', function () { count(this, container); }, false);
								};
								count(this, container);
							});
						};

					})(jQuery);

					$(function() {
					    $(".counted").charCounter(320,{container: "#counter"});
					});
					</script>


					<div style="width: 37%; float: right;">		
						  <div class="row" style="width: 100%;">
								<div class="col-sm-4 col-md-4" style="width: 100%; padding-right: 0;">
						            <div class="panel panel-default" style="width: 100%;">
						            	<h4 style="padding-left: 25px; margin-bottom: 0;"> 소원의 봉투함</h4>
						                <div class="panel-body" style="width: 100%; padding-top: 0; padding-bottom: 8px;" align="right">                
						                    <form accept-charset="UTF-8" action="" method="POST">

						                        <textarea class="form-control counted" name="message" placeholder="당신이 원하는것을 입력하시면 소원이 이루어진데요!.." rows="3" cols="100" style="margin-bottom:10px;"></textarea>
						                        <button class="btn btn-info" type="submit">전달</button>
						                    </form>
						                </div>
						            </div>
						        </div>
							</div>
					</div>	
			
			<table class="ohw-home-table"> <!-- main화면 data-slide-to="0" -->
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 										
					<table class="ohw-home-table2" style="border: 1px solid gray;">
						<tr>
							<td id="ukcustom_talk" style="padding-left: 21px; padding-right: 0; padding-top: 0; padding-bottom: 0;" align="center">
							  <div class="row" style="width: 100%;">
							    <div class="col-md-8" style="width: 101%; padding-right: 0; padding-left: 0; margin: 0;">
							     <br>
							      <h2 class="page-header" style="margin-top: 1px; margin-bottom: 1; width: 25;"> 고객의 소리
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
								<td style="padding-top: 15px; padding-bottom: 10px;">
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
							<td style="padding-top: 0px;">
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
							

							</tr>
						</table>				
					</td>
					<td class = "ohw-home-table-td" align = "center"> 
						<table class="ohw-home-table2" style="border: 1px solid gray;">
							<tr>
								<td style="padding: 0;">
									<font size="6" face="굴림" style="font-weight: bold;">자주묻는질문!!FAQ</font>								
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
				<table class = "ohw-home-table"> <!-- 생활화면 data-slide-to="1" -->
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
				<div style="width: 40%; float: left; overflow: scroll;">
						
						
						    <div class="container-fluid" style="background-color:YELLOW">
						        <div class="container container-pad" id="property-listings">
						            
						            <div class="row">
						              <div class="col-md-12">
						                <h1>타이틀</h1>
						                <p>설명</p>
						              </div>
						            </div>
						            
						            <div class="row">
						                <div class="col-sm-6"> 
						
						                    <!-- Begin Listing: 609 W GRAVERS LN-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/Yu59d899Ocpyr_RnF0-8qNJX1oYibjwp9TiLy-bZvU9vRJ2iC1zSQgFwW-fTCs6tVkKrj99s7FFm5Ygwl88xIA.jpg"></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">$1,975,000 <small class="pull-right">609 W Gravers Ln</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>4,820 SqFt</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>5 Beds</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>5 Baths</li>
						                                </ul>
						
						                                <p class="hidden-xs">Situated between fairmount
						                                park and the prestigious philadelphia cricket
						                                club, this beautiful 2+ acre property is truly
						                                ...</p><span class="fnt-smaller fnt-lighter fnt-arial">Courtesy of HS Fox & Roach-Chestnut Hill
						                                Evergreen</span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						                    <!-- Begin Listing: 9006 CREFELD ST-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/uLp58OH37CTPHxXcgJXYw8zT2u3xg_2XIbFndB6J0WTSAStGBaEV6YsdAseSZTKAdthm0OzG-Ca_EIkoXIEBxw.jpg"></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">$1,295,000 <small class="pull-right">9006 Crefeld St</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>7,672 SqFt</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>7 Beds</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>5 Baths</li>
						                                </ul>
						
						                                <p class="hidden-xs">Located in chestnut hill,
						                                recently named by the american planning
						                                association as one of america's top 10 great
						                                neighborh...</p><span class="fnt-smaller fnt-lighter fnt-arial">Courtesy of RE/MAX Services</span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->
						
						                    <!-- Begin Listing: 701 W ALLENS LN-->
						                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
						                        <div class="media">
						                            <a class="pull-left" href="#" target="_parent">
						                            <img alt="image" class="img-responsive" src="http://images.prd.mris.com/image/V2/1/K12MLs4i-e2rsQ-rA6DoCwlysXSrEXZyHtCFkrOLsvK1y2mvbUrlmw5pMXX1laXlnY9_0VU82YeS3EucwIchtg.jpg"></a>
						
						                            <div class="clearfix visible-sm"></div>
						
						                            <div class="media-body fnt-smaller">
						                                <a href="#" target="_parent"></a>
						
						                                <h4 class="media-heading">
						                                  <a href="#" target="_parent">$1,175,000 <small class="pull-right">701 W Allens Ln</small></a></h4>
						
						
						                                <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
						                                    <li>9,824 SqFt</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>8 Beds</li>
						
						                                    <li style="list-style: none">|</li>
						
						                                    <li>5 Baths</li>
						                                </ul>
						
						                                <p class="hidden-xs">A once in a lifetime
						                                opportunity! live in this grand home with its
						                                stunning entry and staircase, bedroom suites,
						                                firepla...</p><span class="fnt-smaller fnt-lighter fnt-arial">Courtesy of HS Fox & Roach-Chestnut Hill
						                                Evergreen</span>
						                            </div>
						                        </div>
						                    </div><!-- End Listing-->						

						

						                </div>
						

						            </div><!-- End row -->
						        </div><!-- End container -->
						    </div>				
				</div>
			
			
				<div style="width: 100%; float: left;">
				  <div class="well">
					      <div class="media">
					      	<a class="pull-left" href="#">
					    		<img class="media-object" src="/goodluck/resources/common/img/main/이용자2.JPG" width="110" height="120">
					  		</a>
					  		<div class="media-body">
					  			<br>
					    		<h4 class="media-heading">오늘의 당첨자</h4>
								<!--  <p class="text-right">By Francisco</p> -->
								          <p> 
								          	반려동물 서비스를 받은지 어느덧 10개월째 되가네요 항상 만족하며 싸이트를 이용하고있습니다.
								          </p>
					          <ul class="list-inline list-unstyled">
					  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
					            <li>|</li>
					            <span><i class="glyphicon glyphicon-comment"></i> 2 comments</span>
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



		
				<!-- <table class = "ohw-home-table"> 반려동물화면 data-slide-to="2"
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
				</table> -->
				</div>
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
			<table class="ohw-home-table"> <!-- 여행화면 data-slide-to="6" -->
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