<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>아이템몰</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<style type="text/css">
</style>
<script type="text/javascript">
$(document).ready( function() {
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
});
</script>

<div style="overflow: hidden;">
</div>
<div class="container">
<!-- 아이템몰 사이드바 -->
<div class="container" style=" float: left; width:100%;">
<div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                 ${loginUser.member_name} 회원님<br>
                   보유 캐시:${loginUser.member_cash} 포인트
                 </h4>
                    </div>
                   	 <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                             	<tr>
                               	 <td>
                             <div class="input-group">
    	<div class="form-group  has-feedback">
            <input type="text" class="form-control" id="inputSuccess5" style="border-radius: 3px 0px 0px 3px" placeholder="아이템검색">
            <span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
        </div>
        <span class="input-group-btn">
            <button class="btn btn-default" type="button"  style="border-radius: 0px 3px 3px 0px  ">검색!</button>
        </span>
    </div>
                                
                                </td>
                                
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">최신 아이템보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com">인기 아이템보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-file text-info"></span><a href="http://www.jquery2dotnet.com">소모품 보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">기간제 보기</a>
                                        
                                    </td>
                                </tr>
                                  <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">이모티콘 보기</a>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">청약철회보기</a>
                                        
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
       	<div style="background: blue">
        <div class="col-sm-9 col-md-9">
            <div class="well">
           
           
           
           
           <!--카로셀 시작 -->
         <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="http://placehold.it/1200x400/cccccc/ffffff">
           <div class="carousel-caption">
            <h3>1</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Bootstrap 3 - Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="http://placehold.it/1200x400/999999/cccccc">
           <div class="carousel-caption">
            <h3>2</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Bootstrap 3 - Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/1200x400/dddddd/333333">
           <div class="carousel-caption">
            <h3>3</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Bootstrap 3 - Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/1200x400/999999/cccccc">
           <div class="carousel-caption">
            <h3>4</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    	<ul class="nav nav-pills nav-justified">
          <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#"><small>이달의 랜덤박스</small></a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="#"><small>이달의 최신 아이템!</small></a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="#"><small>이달의 패키지 상품</small></a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="#"><small>이달의 인기 아이템</small></a></li>
          
        </ul>


    </div><!-- End Carousel -->
                
                
                
                
                
                
                
                
                   
            </div>
       <table style="width: 100%; min-height:150px;" >
            <tr style="height: 60%;">
            <td style="width: 70%; background: white; "> 

        <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">     최신 추가된 아이템   </h3>
				   
				</div>
				<div class="panel-body" style="width: 100%; padding: 10">    
				  <table style="width: 100%; height: 100%;">
				<tr>
			<c:forEach var="item" items="${newitem}" begin="0" end="3">
   			<th>
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			 이름 : ${item.ITEMNAME}<br>
   			 가격 : ${item.ITEMPRICE} 원 <br>
   			 <button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			 	
   			 
   			 </center>
			</th>
			</c:forEach>
			
					  </tr>
					  <tr>
					  <td><label> </label></td>
					  </tr>
					  <tr>		
			<c:forEach var="item" items="${newitem}" begin="4">
   			<th>
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			 이름 : ${item.ITEMNAME}<br>
   			 가격 : ${item.ITEMPRICE} 원 <br>
   			<button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			 
   			 </center>
			</th>
			</c:forEach>
					  </tr>
				 
				 
				 
				 
				 
				  </table>
					
		
</div>
			</div>
		</div>
            </td>
            <td  style="width: 25%;"> 
           
           <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">인기목록</h3>
				    
				</div>
				<div class="panel-body" style="width: 100%; padding: 5px"	>    

<center>
<table style="width: 80%; height: 100%;">
				
		
		<c:forEach var="item" items="${popularlitm}" begin="0" end="2">
			<tr>
   			<td style="width:30%">
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px; margin-right: 15px">
			</td>
		 <td  style="width:65%">
		 <center>
   			 ${item.ITEMNAME}<br>
   			 ${item.ITEMPRICE} 원 <br>
   			<button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			
   			</center>
   			 </td>
			</tr>
			<tr><td><label> </label></td></tr>
			</c:forEach>
				
				
	
	
</table>
          </center>  
            
            
            </div>
			</div>
		</div>
        
            
            
             </td>
            </tr>
            
            <tr style="height: 40%;">
            <table style="width: 100%; height: 100%;">
            <tr>
            <th style="width: 50%; background: white;">
       <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">아이템 관련 공지사항  전체공지바로가기></h3>
				    >인기 바로가기
				</div>
				<div class="panel-body" style="width: 100%; "	>   
			단순 리스트 방식 4개정도.
</div>
			</div>
		</div>
            
            
            
            </th>
            <th style="width: 50%;">

     <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title"> 여기 뭐 넣지?</h3>
				   
				</div>
				<div class="panel-body" style="width: 100%; "	>   할인중 아이템</div>
			</div>
		</div>
		
		</th>
            </tr>
            </table>
             </tr>
            </table>
            
            
            
            
            
        </div>
        
        
        
        
        
        </div>
        
        
    </div>

</div>
                                                                                
</div>
<br>
<br>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>