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

<script type="text/javascript">
$(document).ready( function() {
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav .mall').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav .mall.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav .mall').first().addClass('active');	
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
         <c:choose>
         <c:when test="${loginUser ne null}">
        <c:if test="${loginUser.emoticonfile ne null}">
        <img style="width:20px; height: 30px;" src="/goodluck/resources/A5.CJS/itemimg/${loginUser.emoticonfile}">
        </c:if>
        
        ${loginUser.member_name} 회원님<br>
                   
                   보유 캐시:${loginUser.member_cash} 포인트
        
        </c:when>
                 
                 <c:when test="${loginUser eq null}">
                   <button type="button" class="btn btn-default" data-toggle="modal" data-target="#login-modal">
					<i class="fa fa-sign-in"></i> 로그인하러가기
                 </c:when>
                 </c:choose>
       
                 </h4>
                    </div>
                   	 <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">      
                  <tr>
               <td>
            <span class="glyphicon glyphicon-pencil text-primary"></span><a href="cjsitemmellhome.go">아이템몰 메인</a>
              </td>
      </tr>
         <tr>
                               <td>
      <span class="glyphicon glyphicon-pencil text-primary"></span><a href="cjsnewitem.go">아이템 검색</a>
                                    </td>
                                </tr>
                               
                                  <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="cjsrandom.go">랜덤박스 보기</a>
                                        
                                    </td>
                                </tr>
                                  <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="cjspackage.go">패키지 보기</a>
                                        
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
           
           
           
       <style>
@import url(https://fonts.googleapis.com/css?family=Lato:700);
.ribbon {
  width: 150px;
  height: 150px;
  overflow: hidden;
  position: absolute;
}
.ribbon::before,
.ribbon::after {
  position: absolute;
  z-index: -1;
  content: '';
  display: block;
  border: 5px solid #2980b9;
}
.ribbon span {
  position: absolute;
  display: block;
  width: 225px;
  padding: 15px 0;
  background-color: #3498db;
  box-shadow: 0 5px 10px rgba(0,0,0,.1);
  color: #fff;
  font: 700 18px/1 'Lato', sans-serif;
  text-shadow: 0 1px 1px rgba(0,0,0,.2);
  text-transform: uppercase;
  text-align: center;
}
/* top left*/
.ribbon-top-left {
  top: -10px;
  left: -10px;
}
.ribbon-top-left::before,
.ribbon-top-left::after {
  border-top-color: transparent;
  border-left-color: transparent;
}
.ribbon-top-left::before {
  top: 0;
  right: 0;
}
.ribbon-top-left::after {
  bottom: 0;
  left: 0;
}
.ribbon-top-left span {
  right: -25px;
  top: 30px;
  transform: rotate(-45deg);
}
.ribbon-top-right {
  top: -10px;
  right: -10px;
}
.ribbon-top-right::before, .ribbon-top-right::after {
  border-top-color: transparent;
  border-right-color: transparent;
}
.ribbon-top-right::before {
  top: 0;
  left: 0;
}
.ribbon-top-right::after {
  bottom: 0;
  right: 0;
}
.ribbon-top-right span {
  left: -25px;
  top: 30px;
  transform: rotate(45deg);
}

       
       </style>    
           <!--카로셀 시작 -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
    <!-- Wrapper for slides -->
    <div class="carousel-inner ">
    <div class="item active">
     <div class="box">
	<div class="ribbon ribbon-top-left"><span>6월 한정</span></div>
	</div>
	
      <img src="/goodluck/resources/A5.CJS/itemmallcaros/bg.png" style="width:100%; height: 250px;">
      <div class="carousel-caption" style="    width:  80%;" >
         <table>
           <tr>
           <th> 
          	<img src="/goodluck/resources/A5.CJS/itemmallcaros/fdsadadsf.png" style="width:100%; height: 100%; float:left;">
          	</th>
           <th width="100"></th>
           <th>
           <table style="width:100%">
           <tr><th><h2>6월의 랜덤박스</h2></th></tr>
           <tr><th height="10">여름의 시작 새로운 랜덤박스와 다시</th></tr>
           <tr><th>한정판 아이콘 포함</th></tr>
           <tr><th> </th></tr>
           <tr><th>2018-06 한정      <button>바로가기</button></th></tr>
           </table>
           </th>
          </tr>
           </table>
           </div>
         </div><!-- End Item -->

   <div class="item">
       <div class="box">
	  <div class="ribbon ribbon-top-right"><span style="background-color: green;">지금만나!</span></div>
	</div>
	
      <img src="/goodluck/resources/A5.CJS/itemmallcaros/adsoit57y24d.png" style="width:100%; height: 250px;">
       <div class="carousel-caption" style="    width:  80%;">
      	 <table>
           <tr>
           <th> 
            <table style="width:100%">
           <tr><th><h2>6월의 최신</h2></th></tr>
           <tr><th height="10">무더운 여름의 시작 새로운 아이템과!</th></tr>
           <tr><th>${newitemthismonth.ITEMNAME}</th></tr>
           <tr><th>${newitemthismonth.ITEMPRICE}원    <button>바로가기</button></th></tr>
           </table>
           </th>
           <th width="50"></th>
           <th>
          	<img src="/goodluck/resources/A5.CJS/itemimg/${newitemthismonth.ITEMFILENAME}" style="width:100%; height: 150px; float:left;">
           </th>
          </tr>
           </table>   
          </div>
        </div><!-- End Item -->
        
<!-- thismonthpackage -->

  <div class="item">
    <div class="box">
	<div class="ribbon ribbon-top-left"><span>6월 한정</span></div>
	</div>
	<img src="/goodluck/resources/A5.CJS/itemmallcaros/maxresdefault.jpg" style="width:100%;height: 250px;">
         <div class="carousel-caption" style="width: 80%; left: 15%;">
        <table>
           <tr>
           <th> 
          	<img src="/goodluck/resources/A5.CJS/itemmallcaros/asdlhka5ylc.png" style="width:140px; height:140px; float:left;">
          	</th>
           <th width="15"></th>
           <th>
           <table style="width:100%">
           <tr><th><h4>${pack.PACKAGE_NAME}출시!</h4></th></tr>
           <tr><th height="10">연령별 패키지와함께!</th></tr>
           <tr><th>${itemsName}</th></tr>
           <tr><th><del>${orimoney}</del>-> </th></tr>
           <tr><th>${pack.PACKAGE_PRICE} <button>바로가기</button></th></tr>
           </table>
           </th>
          </tr>
           </table>
          </div>
        </div><!-- End Item -->
        
        
  
<!--  popitemthismonth -->    
<div class="item">
    <div class="box">
	  <div class="ribbon ribbon-top-right"><span style="background-color: gray;">놓히지마셈!</span></div>
	</div>
          <img src="/goodluck/resources/A5.CJS/itemmallcaros/sdffxxdas.jpg" style="width:100%; height: 250px;">
           <div class="carousel-caption" style="    width:  80%;">
        <table>
           <tr style="width:100%">
           <th> 
            <table style="width:100%">
           <tr><th><h2>6월의 인기템!</h2></th></tr>
           <tr><th height="10">무더운 여름의 시작 새로운 아이템과!</th></tr>
           <tr><th>${popitemthismonth.ITEMNAME}과 함께</th></tr>
           <tr><th>${popitemthismonth.ITEMPRICE}원   <button>바로가기</button></th></tr>
           </table>	</th>
           <th width="50"></th>
           <th>
          	<img src="/goodluck/resources/A5.CJS/itemimg/${popitemthismonth.ITEMFILENAME}" style="width:200px; height: 150px; float:left;">
           </th>
          </tr>
           </table>  </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    	<ul class="nav nav-pills nav-justified">
          <li data-target="#myCarousel" data-slide-to="0" class="mall active"><a  href="#"><small>이달의 랜덤박스</small></a></li>
          <li data-target="#myCarousel" data-slide-to="1" class="mall"><a href="#"><small>이달의 최신 아이템!</small></a></li>
          <li data-target="#myCarousel" data-slide-to="2" class="mall"><a href="#"><small>이달의 패키지 상품</small></a></li>
          <li data-target="#myCarousel" data-slide-to="3" class="mall"><a href="#"><small>이달의 인기 아이템</small></a></li>
        </ul>
    </div><!-- End Carousel -->
                
                
                
                
                
                
                
                
                   
            </div>
       <table style="width: 100%; min-height:150px;" >
            <tr style="height: 60%;">
            <td style="width: 70%; background: white; "> 

        <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title"> 아이템 랜덤보기  </h3>
				   
				</div>
				<div class="panel-body" style="width: 100%; padding: 25px">    
				  <table style="width: 100%; height: 100%;">
				<tr>
			<c:forEach var="item" items="${newitem}" begin="0" end="3">
   			<th style="width: 100px;">
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			${item.ITEMNAME}<br>
   			${item.ITEMPRICE} 원 <br>
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
   			<th style="width: 100px;">
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			${item.ITEMNAME}<br>
   			 ${item.ITEMPRICE} 원 <br>
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
				<div class="panel-body" style="width: 100%;"	>    

<center>
<table style="width: 80%; height: 100%;">
	<c:forEach var="item" items="${popularlitm}" begin="0" end="2">
			<tr>
   			<td style="width:30%">
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px; margin-right: 15px">
			</td>
		 <td  style="width:65%">
		 <center>
   			 <a onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">${item.ITEMNAME}</a>  <br>
   			 ${item.ITEMPRICE} 원 <br>
<%--<button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button> --%>
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
       <div class="col-md-6" style="width: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">아이템 관련 공지사항  전체공지바로가기--></h3>
				    
				</div>
				<div class="panel-body" style="width: 100%; ">   
	<table>
	<tr>
	<th>글번호</th>
	<th><center>공지사항</center></th>
	<th>작성일</th>
	</tr>
	<c:forEach var="notice" items="${itemNotice}">
	<tr style="height: 30px">
	<th><center>${notice.ITEMNOTICE_NO}</center></th>
	<th>${notice.ITEMNOTICE_TITLE}</th>
	<th>${notice.ITEMNOTICE_DATE}</th>
	</tr>
	</c:forEach>
	</table>
	

</div>
			</div>
		</div>
            
            
            
            </th>
            <th style="width: 50%;">

     <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">신상 패키지</h3>
				   
				</div>
				<div class="panel-body" style="width: 100%;    padding-bottom: 0px;">
				
	<table style="width: 100%; height: 100% ">
	<tr><th><center>패키지명</center></th><th>원래가격</th><th></th><th>할인가격</th></tr>
	<c:forEach var="packageitems" items="${packageitems}">
	<tr height="50px">
	<th><center><a href="#">${packageitems.PACKAGE_NAME}</a></center></th>
	<th><del>${packageitems.ori_PRICE}</del></th>
	<th>=></th>
	<th>${packageitems.PACKAGE_PRICE}</th>
	</tr>
	</c:forEach>
	</table>
</div>
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