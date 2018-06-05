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
	height: 2500px;
	
	padding-left: 45px;
	}

	.coupon{
	width: 1010px;
	height: 2500px;	
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
		width: 775px;
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
		                    <i class="fa fa-github fa-2x"></i> [가족이 되어주세요] 7개월 백구 자매 스카이와 블루		
		                </div>
		              </div>
		              <div class="panel-body">
		              	<!-- 대표이미지가 들어가는곳 -->
		                <img src="/goodluck/resources/common/img/news_pet/기사1_1.jpg" class="coupon-img img-rounded">
		                <hr style="clear: both;">
		               	<div class="contents-body" align="left">스카이(7개월ㆍ암컷)와 블루(7개월ㆍ암컷)은 지난 겨울 애니멀호더 가정으로부터 구조됐습니다. 
원래 스카이와 블루를 키우던 주인은 어미개 하늘이와 다섯 마리의 강아지들을 
동물보호단체 카라가 운영하는 입양카페 앞에 버리고 갔고, 카라가 이를 추적해 밝혀냈는데요. 
애니멀호더는 법에 의해 처벌 받도록 신고했지만 하늘이 가족은 카라가 보듬을 수 밖에 없었습니다. 

카라는 당시 입양행사를 통해 하늘이의 다섯 마리 강아지들에게 새 가족을 찾아주었습니다. 
하지만 3개월 뒤 스카이와 블루를 입양했던 입양자는 상황이 바뀌어 더 이상 키울 수 없다며 카라에 연락을 해왔습니다. 
입양하기 전에 충분히 반려동물을 키울 때 일어날 수 있는 일들을 설명하고 충분히 고민 해 볼 것을 수십 번 
강조하고 설명했지만 입양자는 결국 파양을 선택했습니다.
						</div>
						<br><br>
		                <img src="/goodluck/resources/common/img/news_pet/기사1_2.jpg" class="coupon-img img-rounded">	
		                <div class="contents-body" align="left">3개월 안팎 어린 강아지일 때는 입양 확률이 높습니다. 때문에 강아지를 입양한 이후 몇 개월 뒤 자라고 난 다음에 다시 파양하는 것은 입양 기회를 뺏은 거와 다름이 없습니다. 
이제 태어난 지 7개월이 된 스카이와 블루는 아직 어리긴 하지만 다시 새로운 가족을 찾아야 합니다. 
카라가 병원에서 스카이와 블루의 건강검진을 결과 기본 접종조차 이뤄지지 않은 것으로 확인했습니다. 
살뜰히 보살핌을 받아야 할 나이에 아이들은 방치되었고, 결국 입양카페로 다시 오게 된 겁니다.
		                
						</div>
						<br>
		                <div class="contents-body" align="left">
스카이와 블루는 서로를 의지하며 항상 함께합니다. 같이 장난도 잘 치고 먹기도 잘 먹고 둘이 항상 붙어 다니는 게 누가 봐도 의좋은 자매라는 게 
활동가들의 설명입니다. 스카이는 엄마 하늘이와 외모도 똑똑함도 똑같습니다. 
눈치도 빠르고 사람뿐 아니라 개 친구들도 좋아해서 다른 개 친구들이 있는 곳에서도 잘 지낼 수 있습니다. 
스카이의 필살기는 폭풍애교라고 하네요.
						</div>	
				  		
						<br><br>	                						
		                <img src="/goodluck/resources/common/img/news_pet/기사1_3.jpg" class="coupon-img img-rounded">						
		                <div class="contents-body" align="left">
							블루의 매력은 뽀송뽀송한 털입니다. 같이 태어났는데도 스카이보다 더 동생 같다고 할까요? 
외모처럼 성격도 해맑습니다. 아직 이빨이 간지러워 한참 물어뜯을 때인데 활동가 손을 살짝 물어서 놀라면 영문을 모르겠다며 해맑은 얼굴로 쳐다본다고 하네요. 
활동적이어서 사람 품에 안겨있기보다는 함께 뛰어 놀기를 좋아합니다.
스카이와 블루는 지금 8㎏정도입니다. 거의 다 컸지만 지금보다 조금 더 자랄 수도 있습니다. 
태어나자 마자 파양이라는 아픔을 겪은 스카이와 블루에게 평생 든든한 울타리가 되어줄 가족을 기다립니다.
						
						</div>								
						
		              </div>
		              <div class="panel-footer">
		                <div class="coupon-code">
		                    Code: 2018.06.03
		                </div>
		                <div class="exp">출처 : 네이버</div>
		              </div>
		            </div>
		    	</div>
		    </div>
		    
		    <br>
		    <p class="text-center" style="margin-bottom: 0;"><a href="#" class="btn btn-default"> TopMove <i class="fa fa-chevron-up"></i></a></p>
		

	</body>
</html>