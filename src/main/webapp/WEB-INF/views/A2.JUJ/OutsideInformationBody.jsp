<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
 	<style type="text/css">
	 .coupon {
	    border: 3px dashed #bcbcbc;
	    border-radius: 10px;
	    font-family: "HelveticaNeue-Light", "Helvetica Neue Light", 
	    "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
	    font-weight: 300;
	}
	
	.coupon #head {
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    min-height: 56px;
	}
	
	.coupon #footer {
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	}
	
	.coupon #title img {
	    font-size: 30px;
	    height: 30px;
	    margin-top: 5px;
	}
	
	@media screen and (max-width: 500px) {
	    .coupon #title img {
	        height: 15px;
	    }
	}
	
	.coupon #title span {
	    float: right;
	    margin-top: 5px;
	    font-weight: 700;
	    text-transform: uppercase;
	}
	
	.coupon-img {
	    width: 80%;
	    height : 450px;
	    margin-bottom: 3px;
	    padding: 0;
	    border: 1px dotted gray;
	    border-radius: 15px;
	}
	
	.items {
	    margin: 15px 0;
	}
	
	.usd, .cents {
	    font-size: 20px;
	}
	
	.number {
	    font-size: 40px;
	    font-weight: 700;
	}
	
	sup {
	    top: -15px;
	}
	
	#business-info ul {
	    margin: 0;
	    padding: 0;
	    list-style-type: none;
	    text-align: center;
	}
	
	#business-info ul li { 
	    display: inline;
	    text-align: center;
	}
	
	#business-info ul li span {
	    text-decoration: none;
	    padding: .2em 1em;
	}
	
	#business-info ul li span i {
	    padding-right: 5px;
	}
	
	.disclosure {
	    padding-top: 15px;
	    font-size: 11px;
	    color: #bcbcbc;
	    text-align: center;
	}
	
	.coupon-code {
	    color: #333333;
	    font-size: 11px;
	}
	
	.exp {
	    color: #f34235;
	}
	
	.print {
	    font-size: 14px;
	    float: right;
	}
	
	
	
	/*------------------dont copy these lines----------------------*/
	body {
	    font-family: "HelveticaNeue-Light", "Helvetica Neue Light", 
	    "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
	    font-weight: 300;
	}
	.row {
	    margin: 30px 0;
	}
	
	.btn-danger, 
	.btn-success, 
	.btn-info, 
	.btn-warning, 
	.btn-primary {
	    width: 105px;
	}
	
	.btn-default {
	    margin-bottom: 40px;
	}
	
    /* *************************************************************************** */	
	.col-md-offset-3{
	margin-left: 0;
	width: 1100px;

	
	padding-left: 45px;
	}

	.coupon{
	width: 1010px;
	}
	
	.panel-body{
	height: 95%;
	}
	.panel-body,
	.panel-footer{
		width: 1000px;
	}
	.contents-body{
		
		background-color: white;
		width: 900px;
		font-size: 20px;
		/* font-weight: bold; */
	}
 	</style>
</head>
	<body>
		<div class="container" align="center">
		
		        <div class="col-md-6 col-md-offset-3">
		            <div class="panel panel-danger coupon">
		              <div class="panel-heading" id="head">
		                <div class="panel-title" id="title" align="center">
		                    <i class="fa fa-github fa-2x"></i>${selectNews.osp_news_datatitle}	 <!-- 글제목 -->	
		                </div>
		              </div>
		              <div class="panel-body">
		              	<img src="${selectNews.osp_news_pic1}">
		              	<!-- 대표이미지가 들어가는곳 이미지1-->
		                <hr style="clear: both;">
			               	<div class="contents-body" align="left">${selectNews.osp_news_content1}
								<!-- 내용1 -->
							</div><br><br>
		                <!-- 이미지2 -->
		                <img src="${selectNews.osp_news_pic2}"><br><br>
			                <div class="contents-body" align="left">${selectNews.osp_news_content2}
			                	<!-- 내용2  -->
							</div><br><br>
		                <!-- 이미지3 -->							
		                <img src="${selectNews.osp_news_pic3}"><br><br>	
			                <div class="contents-body" align="left">${selectNews.osp_news_content3}
								<!-- 내용3 -->
							</div><br><br>	            
						<!-- 이미지4  -->					    						
		                <img src="${selectNews.osp_news_pic4}"><br>			
			                <div class="contents-body" align="left">${selectNews.osp_news_content4}
								<!-- 내용4  -->
							</div>									
		              </div>
		              <div class="panel-footer">
		                <div class="coupon-code">작성일 : ${selectNews.osp_news_date}
		                    <!-- 글 작성일 -->
		                </div>
		                <div class="exp">출처 : ${selectNews.osp_news_origin} <!-- 출처 --> </div>
		              </div>
		            </div>
		    	</div>
		    </div>
		    
		    <br>
		    <p class="text-center" style="margin-bottom: 0;"><a href="#" class="btn btn-default"> TOP <i class="fa fa-chevron-up"></i></a> &nbsp;&nbsp;  <a href="news_total.go" class="btn btn-default"> 뉴스전체 <i class="fa fa-chevron-up"></i></a></p>
		

	</body>
</html>