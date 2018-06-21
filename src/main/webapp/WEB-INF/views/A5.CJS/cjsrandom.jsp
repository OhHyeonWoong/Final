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
            <div class="panel-heading">${item.ITEMNAME}</div>
            <div class="panel-body" style="border-radius: 5px 5px 5px 5px">
<!-- 1 -->
<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container" style="height: 250px;">	
				<div class="col-md-12" style="padding: 0; height:  250px;">
				<div style="float: left;  padding-top: 50px;" >
	<div class="product col-md-3 service-image-left"  style="float: left; width: 110px; height: 150px;">
     <img id="item-display" src="/goodluck/resources/A5.CJS/itemmallcaros/${item.ITEMFILENAME}" style="width: 100%; height: 100%" alt=""></img>
	</div>
				<div class="container service1-items col-sm-2 col-md-2 pull-left" style="width:50px;">
					<center>
					<a id="item-1" class="service1-item" style="width:50px; height: 50px">
						<img src="/goodluck/resources/A5.CJS/itemimg/${itemchance[0].ITEMFILENAME}" style="width:50px; height: 50px"></img>
						</a>
						<a id="item-2" class="service1-item"  style="width:50px; height: 50px">
						<img src="/goodluck/resources/A5.CJS/itemimg/${itemchance[1].ITEMFILENAME}" style="width:50px; height: 50px"></img>
						</a>
						<a id="item-3" class="service1-item"  style="width:50px; height: 50px" >
						<img src="/goodluck/resources/A5.CJS/itemimg/${itemchance[2].ITEMFILENAME}" style="width:50px; height: 50px"></img>
						</a>
					</center>
					</div>
		</div>		
				
				<div class="col-md-7" style="margin-left: 50px">
					<div class="product-title">${item.ITEMNAME}</div>
					<hr>
					<div class="product-price">${item.ITEMPRICE}포인트</div>
					<hr>
			
					<div class="btn-group cart">
					<c:choose>
             <c:when test="${loginUser eq null}">  
                  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#login-modal">
					<i class="fa fa-sign-in"></i> 로그인하러가기
				</button>
				
				</c:when>
				<c:when test="${loginUser ne null}">
               <script type="text/javascript">
             function buyitem(memberid,itemprice){
                	
               console.log(memberid);//유저아이디
              $.ajax({
                url:"checkusercash.go",
                data:{memberid:memberid},
                success:function(data){
                if(data-itemprice >= 0){
                $("#balance").html(data);
                $('#cjsModalbuyitem').modal('show') 
                }else{
                $('#cjsModalbuyitemfail').modal('show') 
                }
               }
              })
             }
             function buyitem2(ITEMLIST_NO,member_id){
            	 $("#realbuyitem").hide();
            	 console.log(ITEMLIST_NO);//아이템 pk
            	 console.log(member_id);//유저아이디
            	 $.ajax({
                     url:"buyitem.go",
                     data:{memberid:member_id,
                    	   itempk:ITEMLIST_NO},
                     success:function(data){
                     if(data == 1){
                    //구매 성공시
                    alert("구매에 성공하였습니다! 아이템은 my_item인벤토리에서 확인할수있습니다.");
                    window.history.go(0);
                   
                     }else{
                    //구매 실패시
                    alert("구매에 실패하였습니다! 자세한 사항은 운영자에게 문의해주세요");
                    window.histroy.go(0);
                     }
                    }
                 })	 
                 $("#realbuyitem").show();
             }
            
             
                </script>
               <button onclick="buyitem('${loginUser.member_id}','${item.ITEMPRICE}')">구매하기</button></c:when>
              
<%--                 '${item.ITEMLIST_NO}','${item.ITEMPRICE}',${loginUser.member_id},'${item.ITEMNAME}' --%>
                </c:choose>
                      
                  
                     
                     
                      <button onclick="window.history.go(-1)">뒤로가기</button>
					</div>
				
				</div>
			</div>
		</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">상세정보</a></li>
						<li><a href="#service-two" data-toggle="tab">확률 보기</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
						
						
						해당아이템을 구입 후, my_item란에서 확인 후 사용 하실수 있습니다 <br>
						각 랜덤박스마다 지정된 아이템은 재기각각 다릅니다. <br>
						이달의 랜덤박스에서는 일반 아이템몰에서는 구할수없는 희귀 아이콘을 구할수있습니다.<br>
						단 1가지의 아이템만이 등장합니다.
								<h3>주의 사항</h3>
								<li>이모티콘은 중첩됩니다.</li>
								<li>구매한뒤 마이아이템에서 사용할수있습니다.	 </li>
								<li>환불안됩니다 ㅋ	</li>
	
						
							</section>
										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
						<center>
					<table border="1">
					<tr><th>아이템명</th><th>확률</th></tr>
					<c:forEach var="item" items="${itemchance}">
					<tr>
					<th>${item.itemname}</th><td>${item.CHANCE}%</td>
					</tr>
					</c:forEach>
					</table>	
					</center>
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
 
 <div class="modal fade" id="cjsModalbuyitem" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin-top: 10%;  margin-left: 40%;">
    <div class="modal-content" style=" width: 50%;" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">정말 구매하실건가요?</h4>
      </div>
      <div class="modal-body" style="padding: 30px;">
        <table style="width: 100%">
        <tr><th rowspan="3" style="width: 30%" bordercolor="black">
     	<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 80px; height:70px;">	
        </th><th width="20"></th><th> 상품명:${item.ITEMNAME}</th></tr>
        <tr><th></th><th> 가격:${item.ITEMPRICE}</th></tr>
        <tr><th></th><th></th></tr>
        <tr><th><label> </label></th></tr>
        <tr><th>보유잔액:</th><th></th><th><span id="balance" style="color: red"></span></th></tr>
        </table>
      </div>
      <div style="padding: 10px">
      <small>"구매 확정" 버튼을 누르면 아이템이 구매. <br>아이템정보를 제대로 확인하셨나요? <br>구매후 아이템은 my_itme에서 확인가능합니다.
    </small>
     </div>
      <div class="modal-footer">
      <center>
        <button type="button" id="realbuyitem" class="btn btn-primary" onclick="buyitem2('${item.ITEMLIST_NO}','${loginUser.member_id}')"> 구매 확정 </button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
       </center>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="cjsModalbuyitemfail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin-top: 10%;  margin-left: 40%;">
    <div class="modal-content" style=" width: 50%;" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">구매실패!</h4>
      </div>
      <div class="modal-body" style="padding: 50px;">
        <h3>캐시가 부족합니다.</h3>
      </div>
      <div style="padding: 10px">
     </div>
      <div class="modal-footer">
     </div>
    </div>
  </div>
</div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>

</body>
</html>