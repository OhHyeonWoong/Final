<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>랜덤아이템 상세보기</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<%@ include file = "/WEB-INF/views/A5.CJS/cjsitemheaderandsider.jsp" %>
</div>
<style>
.panel.panel-blue {
  border-radius: 0px;
  box-shadow: 0px 0px 10px #888;
  border-color: #266590;
}
.panel.panel-blue .panel-heading {
  border-radius: 0px;
  color: #FFF;
  background-color: #266590;
}
.panel.panel-blue .panel-body {
  background-color: #F2F2F2;
  color: #4D4D4D;
}
.product{
	height: 321px;
}

.product>img{
	max-width: 230px;
}

.product-rating{
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title{
	font-size: 20px;
}

.product-desc{
	font-size: 14px;
}

.product-price{
	font-size: 22px;
}

.product-stock{
	color: #74DF00;
	font-size: 20px;
	margin-top: 10px;
}

.product-info{
		margin-top: 50px;
}

/*********************************************
					VIEW
*********************************************/

.content-wrapper {
	max-width: 1140px;
	background: #fff;
	margin: 0 auto;
	margin-top: 25px;
	margin-bottom: 10px;
	border: 0px;
	border-radius: 0px;
}

.container-fluid{
	max-width: 1140px;
	margin: 0 auto;
}

.view-wrapper {
	float: right;
	max-width: 70%;
	margin-top: 25px;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
	max-width: 100%;
}

/*********************************************
				ITEM 
*********************************************/

.service1-items {
	padding: 0px 0 0px 0;
	float: left;
	position: relative;
	overflow: hidden;
	max-width: 100%;
	height: 321px;
	width: 130px;
}

.service1-item {
	height: 107px;
	width: 120px;
	display: block;
	float: left;
	position: relative;
	padding-right: 20px;

}

.service1-item > img {
	max-height: 110px;
	max-width: 110px;
	opacity: 0.6;
	transition: all .2s ease-in;
	-o-transition: all .2s ease-in;
	-moz-transition: all .2s ease-in;
	-webkit-transition: all .2s ease-in;
}

.service1-item > img:hover {
	cursor: pointer;
	opacity: 1;
}



.service-image-right {
	padding-left: 50px;
}

.service-image-left > center > img,.service-image-right > center > img{
	max-height: 155px;
}

</style>
    <div class="row" >
        <div class="col-sm-4" style="border-radius: 5px 5px 5px 5px  ;   width: 100%;">
           <div class="panel panel-blue" style="border-radius: 5px 5px 5px 5px">
            <div class="panel-heading">${packitems.PACKAGE_NAME}</div>
            <div class="panel-body" style="border-radius: 5px 5px 5px 5px">
<!-- 1 -->
<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container" style="height: 250px;">	
				<div class="col-md-12" style="padding: 0; height:  250px;">
				<div style="float: left;  padding-top: 50px;" >
	<div class="product col-md-3 service-image-left"  style="float: left; width: 110px; height: 150px;">
     <img id="item-display" src="/goodluck/resources/A5.CJS/itemmallcaros/asdlhka5ylc.png" style="height: 100%" alt=""></img>
	</div>
		
		</div>		  
		     
				<div class="col-md-7" style="margin-left: 10%">
					<div class="product-title">${packitems.PACKAGE_NAME}</div>
					${itemsName1}
					<hr>
					<div class="product-price">
					<del>${orimoney1}</del>=>${packitems.PACKAGE_PRICE }
					</div>
					<hr>
					<div class="btn-group cart">
						<button type="button" class="btn btn-success">
						구매하기
						</button>
					</div>
				
				</div>
			</div>
		</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">상세정보</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
								<table style="width: 100%" border="1"> 
								<tr>
								
								<c:forEach var="item" items="${inpack}">
								<th>
								<center>
								<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px">
								<br>
								${item.ITEMNAME}
								</center>
								</th>
								</c:forEach>
								
								</tr>
								
								</table>
								<br><br>
								해당아이템을 구입 후, my_item란에서 확인 후 사용 하실수 있습니다 <br>
								패키지 아이템은 구매시 바로 각각의 아이템으로 분할되어 my_item으로 들어갑니다.<br>
								이후, 일반 아이템처럼 사용하실수있습니다.<br>
								<h3>주의 사항</h3>
								<li>이모티콘은 중첩됩니다.</li>
								<li>구매한뒤 마이아이템에서 사용할수있습니다.	 </li>
								<li>환불안됩니다 ㅋ	</li>
	
						
							</section>
										  
						</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
<!-- 2 -->










            </div>
          </div>
        </div>
    </div>
 </div></div></div></div></div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>

</body>
</html>