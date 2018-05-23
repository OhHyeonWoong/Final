<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset=UTF-8>
	<title> 이벤트1 </title>
	<style type="text/css">

		body {
		    padding-top:20px
		}
		#custom_carousel .item {
		
		    color:#000;
		    background-color:#eee;
		    padding:20px 0;
		}
		#custom_carousel .controls{
		    overflow-x: auto;
		    overflow-y: hidden;
		    padding:0;
		    margin:0;
		    white-space: nowrap;
		    text-align: center;
		    position: relative;
		    background:#ddd
		}
		#custom_carousel .controls li {
		    display: table-cell;
		    width: 1%;
		    max-width:90px
		}
		#custom_carousel .controls li.active {
		    background-color:#eee;
		    border-top:3px solid orange;
		}
		#custom_carousel .controls a small {
		    overflow:hidden;
		    display:block;
		    font-size:10px;
		    margin-top:5px;
		    font-weight:bold
		}
	    
	</style>
	<script type="text/javascript">
		$(document).ready(function(ev){
		    $('#custom_carousel').on('slide.bs.carousel', function (evt) {
		      $('#custom_carousel .controls li.active').removeClass('active');
		      $('#custom_carousel .controls li:eq('+$(evt.relatedTarget).index()+')').addClass('active');
		    })
		});
	</script>
	
	<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
	<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
	<script src="/goodluck/resources/common/js/bootstrap.min.js"></script>	
	</head>
	<body>
		<%-- <%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %> --%>


			<div class="container-fluid">
			    <div id="custom_carousel" class="carousel slide" data-ride="carousel" data-interval="2500">
			    
			        <!-- Wrapper for slides -->
			        <div class="carousel-inner">
			            <div class="item active">
			                <div class="container-fluid">
			                    <div class="row">
			                        <div class="col-md-3"><img src="/goodluck/resources/common/img/무한극장.gif" class="img-responsive" style="height: 250px;"></div>
			                        <div class="col-md-9" align="center">
			                            <h2>이벤트 하나</h2>
			                            <p>
			                            	<ol>
			                            	<li><h4> 50%할인 </h4></li>
			                            	<li><h4> 내용2 </h4></li>
			                            	<li><h4> 내용3 </h4></li>
			                            	<li><h4> 내용4 </h4></li>
			                            	</ol>
			                            	
			                            </p>
			                        </div>
			                    </div>
			                </div>            
			            </div> 
			            <div class="item">
			                <div class="container-fluid">
			                    <div class="row">
			                        <div class="col-md-3"><img src="/goodluck/resources/common/img/main/여행3.jpg" class="img-responsive"  style="height: 250px;"></div>
			                        <div class="col-md-9" align="center">
			                            <h2>이벤트 두울</h2>
			                            <p>
			                            	<ol>
			                            	<li><h4> 50%할인 </h4></li>
			                            	<li><h4> 내용2 </h4></li>
			                            	<li><h4> 내용3 </h4></li>
			                            	<li><h4> 내용4 </h4></li>
			                            	</ol>			                            	
			                            </p>
			                        </div>
			                    </div>
			                </div>            
			            </div> 
			            <div class="item">
			                <div class="container-fluid">
			                    <div class="row">
			                        <div class="col-md-3"><img src="/goodluck/resources/common/img/main/여행4.jpg" class="img-responsive"  style="height: 250px;"></div>
			                        <div class="col-md-9" align="center">
			                            <h2>이벤트 셋</h2>
			                            <p>
			                            	<ol>
			                            	<li><h4> 50%할인 </h4></li>
			                            	<li><h4> 내용2 </h4></li>
			                            	<li><h4> 내용3 </h4></li>
			                            	<li><h4> 내용4 </h4></li>
			                            	</ol>			                            	
			                            </p>ㄴ
			                        </div>
			                    </div>
			                </div>           
			            </div> 
			            <div class="item">
			                <div class="container-fluid">
			                    <div class="row">
			                        <div class="col-md-3"><img src="/goodluck/resources/common/img/main/여행5.jpg" class="img-responsive"  style="height: 250px;"></div>
			                        <div class="col-md-9" align="center">
			                            <h2>이벤트 넷</h2>
			                            <p>
			                            	<ol>
			                            	<li><h4> 50%할인 </h4></li>
			                            	<li><h4> 내용2 </h4></li>
			                            	<li><h4> 내용3 </h4></li>
			                            	<li><h4> 내용4 </h4></li>
			                            	</ol>			                            	
			                            </p>
			                        </div>
			                    </div>
			                </div>           
			            </div> 
			        <!-- End Item -->
			        </div>
			        <!-- End Carousel Inner -->
			        <div class="controls">
			            <ul class="nav">
			                <li data-target="#custom_carousel" data-slide-to="0" class="active"><a href="#"><img src="/goodluck/resources/common/img/무한극장.gif" width="50" height="50"><small>Slide One</small></a></li>
			                <li data-target="#custom_carousel" data-slide-to="1"><a href="#"><img src="/goodluck/resources/common/img/main/여행3.jpg" width="50" height="50"><small>Slide Two</small></a></li>
			                <li data-target="#custom_carousel" data-slide-to="2"><a href="#"><img src="/goodluck/resources/common/img/main/여행4.jpg" width="50" height="50"><small>Slide Three</small></a></li>
			                <li data-target="#custom_carousel" data-slide-to="3"><a href="#"><img src="/goodluck/resources/common/img/main/여행5.jpg" width="50" height="50"><small>Slide Four</small></a></li>
			            </ul>
			        </div>
			    </div>
			    <!-- End Carousel -->
			</div>	
	
	
		
		<%-- <%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %> --%>
	</body>
</html>