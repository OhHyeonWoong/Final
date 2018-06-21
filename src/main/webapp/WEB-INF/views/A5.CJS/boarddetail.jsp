<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page autoFlush="true" buffer="1094kb"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>보더 타이틀</title>
</head>
<body>

<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<script type="text/javascript">
	
	$(function () {
        
	if("${loginUser}" == "")	
		{
		$("#loginModalCancel").hide();
		$("#text-login-msg").text("서비스 이용을 위해 로그인해주세요");
		$('#login-modal').modal({backdrop: 'static', keyboard: false}); 
		$('.modal-backdrop.in').css('opacity','0.95');
		//location.href="Error500.go";
		}
		$("#ukapplybtn").on("click",function(){		
			$('#myModal').modal('show');
		});	
        var kanbanCol = $('.panel-body1');
        kanbanCol.css('max-height', (window.innerHeight - 150) + 'px');
        var kanbanColCount = parseInt(kanbanCol.length);
        $('.container-fluid').css('min-width', (kanbanColCount * 350) + 'px');
        draggableInit();
        $('.panel-heading').click(function() {
            var $panelBody = $(this).parent().children('.panel-body1');
            $panelBody.slideToggle();
        });
    });
	if('${loginUser}' != '' ){
	$.ajax({
		url:"chackboardStatusByuser.go",
		data:{
			memberid:'${loginUser.member_id}',
			BoardNo:'${Board.agency_no}'
		},
		  success:function(data){
			  console.log(data);
			  if(data == 1)
			  {
				 console.log("이글에 이미 지원함");
				$("#ukapplybtn").removeAttr("data-target");
				$("#ukapplybtn").text("해당 글에 이미 지원했습니다.");
				$("#ukapplybtn").removeAttr("id");
			 
			  }else if(data == 2){
				  console.log("본인의 글임");
				$("#ukapplybtn").removeAttr("data-target");
				$("#ukapplybtn").text("본인의 글입니다.");
				$("#ukapplybtn").removeAttr("id");  
				}
			  
			  if("${loginUser.member_id}" == 'guest'){
				$("#ukapplybtn").removeAttr("data-target");
				$("#ukapplybtn").text("글을 신청하기 위해선 본사이트에 로그인해주세요!");
				$("#ukapplybtn").removeAttr("id");  
			  }
			  
		  }
		
	})
	}
	
    function draggableInit() {
        var sourceId;
	 $('[draggable=true]').bind('dragstart', function (event) {
            sourceId = $(this).parent().attr('id');
            event.originalEvent.dataTransfer.setData("text/plain", event.target.getAttribute('id'));
        });

        $('.panel-body1').bind('dragover', function (event) {
            event.preventDefault();
        });

        $('.panel-body1').bind('drop', function (event) {
            var children = $(this).children();
            var targetId = children.attr('id');
            if (sourceId != targetId) {
                var elementId = event.originalEvent.dataTransfer.getData("text/plain");

                $('#processing-modal').modal('toggle'); //before post


                // Post data 
                setTimeout(function () {
                    var element = document.getElementById(elementId);
                    children.prepend(element);
                    $('#processing-modal').modal('toggle'); // after post
                }, 1000);

            }

            event.preventDefault();
        });
    }
</script>

<style type="text/css">
  .wrap {display:none;    position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5; }
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
.with-nav-tabs.panel-primary .nav-tabs > li > a,
.with-nav-tabs.panel-primary .nav-tabs > li > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li > a:focus {
    color: #fff;
}
.with-nav-tabs.panel-primary .nav-tabs > .open > a,
.with-nav-tabs.panel-primary .nav-tabs > .open > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > .open > a:focus,
.with-nav-tabs.panel-primary .nav-tabs > li > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li > a:focus {
	color: #fff;
	background-color: #3071a9;
	border-color: transparent;
}
.with-nav-tabs.panel-primary .nav-tabs > li.active > a,
.with-nav-tabs.panel-primary .nav-tabs > li.active > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.active > a:focus {
	color: #428bca;
	background-color: #fff;
	border-color: #428bca;
	border-bottom-color: transparent;
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu {
    background-color: #428bca;
    border-color: #3071a9;
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a {
    color: #fff;   
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
    background-color: #3071a9;
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a,
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
    background-color: #4a9fe9;
}
</style>
<div class="container">

<%-- <c:forEach var="a" items="${allance}">
${a.ALLIANCE_NAME},
${a.ALLIANCE_URL},
${a.ALLIANCE_LOC}
</c:forEach> --%>
<style>
#boardDetailTable tr {
 height: 40px;
}
</style>
<table style="border-color: red; width:100%" id="boardDetailTable">
<tr>
<th style="width: 60%">
        <div class="col-xs-12 col-sm-6 col-md-6" style="width: 100%">
            <div class="well well-sm">
                <div class="row">
                   <div class="col-sm-6 col-md-8" style="width: 100%">
                        <h3> 
                        <a href="bshtest.go?link2_no=${Cateinfo.CATEGORY_BIG_NAME}&page=1"><font size="6">${Cateinfo.CATEGORY_BIG_NAME}</font> </a> > 
                        <a href="bshtest.go?link2_no=${Cateinfo.CATEGORY_MID_NAME}&page=1"><font size="5">${Cateinfo.CATEGORY_MID_NAME}</font> </a> >
                        <a href="bshtest.go?link2_no=${Cateinfo.CATEGORY_SMALL_NAME}&page=1"><font size="4">${Cateinfo.CATEGORY_SMALL_NAME}</font> </a> 
                       </h3><Br>
                       <c:choose>
                       <c:when test="${Board.agency_type == 1}"><h4><font style="color: blue">구합니다!</font></h4></c:when>
                       <c:when test="${Board.agency_type == 2}"><h4><font style="color: red">해줍니다!</font></h4></c:when>
    
                       </c:choose>
                   
                   
                       <h5>${Board.agency_title}</h5>
                       
                       <c:if test="${filename ne null }">
                       <c:choose>
                       <c:when test="${Board.agency_type == 1}"><h4><font style="color: blue"> 오너 :
                       <img src="/goodluck/resources/A5.CJS/itemimg/${filename}" style="width:20px; height: 30px;">${Board.agency_writer}</font></h4></c:when>
                       
                       <c:when test="${Board.agency_type == 2}"><h4><font style="color: red"> 서비스 제공자 :
                       <img src="/goodluck/resources/A5.CJS/itemimg/${filename}" style="width:20px; height: 30px;"> ${Board.agency_writer}</font></h4></c:when>
                       </c:choose>                           
                       </c:if>  
                       <c:if test="${filename eq null }">
                       <c:choose>
                       <c:when test="${Board.agency_type == 1}"><h4><font style="color: blue"> 오너 :
                       ${Board.agency_writer}</font></h4></c:when>
                       <c:when test="${Board.agency_type == 2}"><h4><font style="color: red"> 서비스 제공자 :
                        ${Board.agency_writer}</font></h4></c:when>
                       </c:choose>                           
                       </c:if>  
                       
                       
                       
                       
                       
                       
                                         
                        <table  style="width: 100%"> 
                        <tr>
                        <td width="30%">
                        <small><cite title="San Francisco, USA">지역 : ${Board.agency_loc}<i class="glyphicon glyphicon-map-marker">
                        </i></cite></small>
                        </td>
                        <td>
                        </td>
                        </tr>
                        <tr>
                        <td>수행 시작 예정일: ${Board.agency_startdate} </td>
                        <td>마감 예정일: ${Board.agency_enddate} </td>
                        </tr>
             
                       
                        <tr>
                        <td>게시물 등록일 : ${Board. agency_enrolldate}  
                        <i class="fa fa-calendar-check-o"></i></td>
                        <td>  </td>
                        </tr>
                        
                        <tr>
                        <td>수당 방식 : 
                        <c:choose>
                        <c:when test="${Board.agency_paytype == 1}">시급</c:when>
                        <c:when test="${Board.agency_paytype == 2}">일급</c:when>
                        
                        </c:choose></td>
                        <td>최종페이 : ${Board.agency_pay}원  </td>
                        </tr>
                  
                  <tr>
                  <td>조회수 : ${Board.AGENCY_VEIWS}
                  </td>
                  
                  </tr>
                  
                  <tr>
                  <th colspan="2" style="width: 80%">

	<c:forEach var="keyword" items="${keywords}" varStatus="s">
	<c:if test="${s.last eq true}">
	<a href="headerSearch.go?searchKeyword=${keyword}">#${keyword}</a> &nbsp;
	</c:if>
	<c:if test="${s.last ne true}">
	<a href="headerSearch.go?searchKeyword=${keyword}">#${keyword} ,</a> &nbsp;
	</c:if>
	</c:forEach>
                  
                  
                  
                  </th>
                  
                  </tr>
                        </table>
                    </div>
                </div>
            </div> 
        </div>
</th>

<th style="width: 30%; height: 325px;"> 
<div id="map" style="width:100%; height:100%;">
</div>
</th>
</tr>
<tr>
<table style="width: 100%; height: 200px;">
<tr>
<th style="width: 70%">
  		<div class="col-md-6" style="width: 100%;">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1primary" data-toggle="tab">상세 설명</a></li>
                       
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">${Board.agency_content}</div>
                  
                    </div>
                </div>
            </div>
        </div>    
        <hr style="clear: both;">

     <center>
     <c:choose>
     <c:when test="${loginUser eq null}">   
     <button type="button" class="btn btn-default" data-toggle="modal" data-target="#login-modal">
	 <i class="fa fa-sign-in"></i> 로그인하러가기  
	 </c:when>
    
     <c:when test="${loginUser ne null && Board.agency_status == 1}"> 
      <button id="ukapplybtn" data-target="#myModal2">신청하기</button> 
     </c:when>
     
     <c:when test="${loginUser ne null && Board.agency_status == 2}">  
        <button id="ukapplybtn" data-target="#myModal2">예비인력으로 신청하기!</button>
     </c:when>
     
     <c:when test="${loginUser ne null && Board.agency_status == 3}">  
        <button>예비인력이 가득찼습니다!</button>
     </c:when>
     
     <c:when test="${loginUser ne null && Board.agency_status == 4}">  
        <button>이미 종료된 작업입니다.</button>
     </c:when>

     </c:choose>
     <button onclick="window.history.go(-1);">뒤로가기</button>
     </center> 
</th>




<th style="width: 25%"> 
<div class="panel panel-primary kanban-col">
                <div class="panel-heading">
                 작성자가 서비스 제공자라면 리뷰를 볼수있습니다!
                </div>
                <div class="panel-footer">
              
              
                </div>
                <c:choose>
               <c:when test="${Board.agency_type eq 2}"> <a href="#" onclick="openreview();">작성자가 받은 리뷰 보기</a></c:when>
          
               </c:choose>
                <script type="text/javascript">
               function openreview(){
            	
            	   $('#reviewModal').modal('show');		
               }
                </script>
                
                
                
            </div>
       </th>
</tr>
</table>
</tr>

</table>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=120b01867e29e09658100681cf1d0604&libraries=services,clusterer,drawing"></script>
<style type="text/css">
  .wrap {display:none;    position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5; }
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
    </style>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};  
var geocoder = new daum.maps.services.Geocoder();
var coords="";
var coords1="";
geocoder.addressSearch('${Board.agency_loc}', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

    coords = new daum.maps.LatLng(result[0].y, result[0].x);
    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    console.log("coords="+coords)
     var circle = new daum.maps.Circle({
    	    center : coords,  // 원의 중심좌표 입니다 
    	    radius: 50, // 미터 단위의 원의 반지름입니다 
    	    strokeWeight: 5, // 선의 두께입니다 
    	    strokeColor: '#75B8FA', // 선의 색깔입니다
    	    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    	    strokeStyle: 'dashed', // 선의 스타일 입니다
    	    fillColor: '#CFE7FF', // 채우기 색깔입니다
    	    fillOpacity: 0.7  // 채우기 불투명도 입니다   
    	}); 

    	// 지도에 원을 표시합니다 
    	circle.setMap(map); 
});

var map = new daum.maps.Map(mapContainer, mapOption); 

var  positions =  [];
var  zero= {};
var i=0;
<c:forEach var="a" items="${allance}" varStatus="status">
geocoder.addressSearch('${a.ALLIANCE_LOC}', function(result, status) {
if (status === daum.maps.services.Status.OK) {
	coords1 = new daum.maps.LatLng(result[0].y, result[0].x);
	zero={content : 
		    '<div class="wrap" id='+i+' onclick="closeOverlay(this.id)">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            <center>${a.ALLIANCE_NAME} <center>' + 
            '            <div class="close"  title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' +
            '            <div class="desc">' + 
            '                <div class="ellipsis">${a.ALLIANCE_LOC}</div>' + 
            '                <div><a href="${a.ALLIANCE_URL}" target="_blank" class="link">홈페이지</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>', latlng:coords1};
    positions.push(zero);
    i++;
    console.log(${fn:length(allance)});
    console.log(i);
    if(${fn:length(allance)}==i){
    	console.log(positions.length);
    	mapst();
    }  
   }
})
</c:forEach>
    function mapst(){
      for (var i = 0; i < positions.length; i ++) {
    	  var content = positions[i].content;
    	
    

		            // 마커를 생성합니다
		          
		            var marker = new daum.maps.Marker({
		                map: map, // 마커를 표시할 지도
		                position:positions[i].latlng // 마커의 위치
		               
		            });
		            var overlay = new daum.maps.CustomOverlay({
		                content: content,
		                map: map,
		                position: marker.getPosition()
		            });
		         
    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
    daum.maps.event.addListener(marker, 'click', function() {
    	 $('.wrap').show();   
        overlay.setMap(map);
    });
      }    
            
    };
    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
    function closeOverlay(i) {
    	
    	 $('#'+i).hide();     
    }
</script>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>

		<div class="modal fade"  id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="width:500px; height: 200px; margin-top: 200px;">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">제대로 확인하셨나요??</h4>
		      </div>
		      <div class="modal-body">
    			<table>
    			<tr>
    			<td>예상   
    			<c:choose>
    			<c:when test="${Board.agency_paytype eq 1}">시급</c:when>
    			<c:when test="${Board.agency_paytype eq 2}">일급</c:when>
    			</c:choose>
    			:${Board.agency_pay}원</td>
    			<td><td>
    			
    			</tr>
    			<tr>
    			<td colspan="2">  수행 예정일: ${Board.agency_startdate}
                       ~ ${Board.agency_enddate}</td><td></td>
    			</tr>
    			<tr>
    			<td>관련 작업:${Cateinfo.CATEGORY_SMALL_NAME}</td>
    			</tr>
    			<tr>
    		    <td></td>
    			</tr>
    			</table>
    			<center>
    		    <th colspan="2">  <small>※제대로 확인하셨나요? ※</small></th>
    			</center>
    			<br>
				<center>
				<button id="susumit" onclick="test1();">확인</button>
				<button onclick="test2();">취소</button>
				</center>
				<script type="text/javascript">
					function test1(){
						$("#susumit").hide();
					      var bool = confirm('정말로 신청 하시겠습니까?');
					      if(bool==true){
					         alert("신청이 완료 되었습니다!");
					         location.href="DealingState.go?BoardNo=${Board.agency_no}&memberid=${loginUser.member_id}";
					      }else {
					         alert("신청이 취소 되었습니다.");            
					      }
					      $("#susumit").show();
					}			
					  function test2(){
							$('#myModal').modal('hide');											
					  }
				</script>
					<br />
					<br />
		      </div>
		      <div class="modal-footer">
		      </div>
		    </div>
		  </div>
		</div>
		
		
		<div class="modal fade"  id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="reviewModal" aria-hidden="true">
		  <div class="modal-dialog" style="width: 100%; margin:  0;">
		    <div class="modal-content" style="width:100%; height: 100%; margin-top: 200px;">
		      <div class="modal-header">
		   
		  <h4 class="modal-title" id="myModalLabel">
		${Board.agency_writer}님이 받은 봉사 평가

</h4>
		      </div>
		      <div class="modal-body">
    		<style type="text/css">
 	.carousel-control{ 	      
 		background :rgba(255, 255, 255, 0) !important;
 	}
	.glyphicon-chevron-right, .glyphicon-chevron-left {
		color: red;
	}
</style>
<div id="carousel-reviews" class="carousel slide" data-ride="carousel">
<div class="carousel-inner">
<div class="item active">
<c:if test="${review ne null}">
<c:forEach items="${review}" var="review" end="2">
<div class="col-md-4 col-sm-6">
<div class="block-text rel zmin">
<a title="" href="#">${review.MEMBER_ID}</a>
<div class="mark">점수:<span class="rating-input">
<span data-value="0" class="glyphicon glyphicon-star">
<c:if test="${review.REVIEW_RATE==1}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star-empty">
</span><span data-value="3" class="glyphicon glyphicon-star-empty">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==2}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star-empty">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==3}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">

</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==4}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star">

</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==5}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star">
</span></span>
</c:if>







</div>
<p>${review.REVIEW_CONTENT}</p>
<ins class="ab zmin sprite sprite-i-triangle block"></ins>
</div>
<div class="person-text rel">
<c:if test="${review.MEMBER_RENAMEPHOTO eq null}">
<img src="/goodluck/resources/A5.CJS/usertitleimg/fghdgfdgsgfdsd.png" style="width: 90px; height: 90px; border-radius: 50% 50% 50% 50% ">
</c:if>
<c:if test="${review.MEMBER_RENAMEPHOTO ne null}">
<img src="/goodluck/resources/A5.CJS/usertitleimg/${review.MEMBER_RENAMEPHOTO}" style="width: 90px; height: 90px; border-radius: 50% 50% 50% 50% ">
</c:if>
<a title="" href="#">카테고리 분야:</a>
<i>${review.CATEGORY_SMALL_NAME}</i>				
</div>
</div>
</c:forEach>
</c:if>
</div>
                    
          
     
<c:if test="${fn:length(review)>3}">   
<div class="item">
<c:forEach items="${review}" var="review" begin="2" end="5">
<div class="col-md-4 col-sm-6">
<div class="block-text rel zmin">
<a title="" href="#">${review.MEMBER_ID}</a>
<div class="mark">점수:<span class="rating-input">
<span data-value="0" class="glyphicon glyphicon-star">
<c:if test="${review.REVIEW_RATE==1}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star-empty">
</span><span data-value="3" class="glyphicon glyphicon-star-empty">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==2}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star-empty">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==3}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==4}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==5}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star">
</span></span>
</c:if>







</div>
<p>${review.REVIEW_CONTENT}</p>
<ins class="ab zmin sprite sprite-i-triangle block"></ins>
</div>
<div class="person-text rel">
<c:if test="${review.MEMBER_RENAMEPHOTO eq null}">
<img src="/goodluck/resources/A5.CJS/usertitleimg/fghdgfdgsgfdsd.png" style="width: 90px; height: 90px; border-radius: 50% 50% 50% 50% ">
</c:if>
<c:if test="${review.MEMBER_RENAMEPHOTO ne null}">
<img src="/goodluck/resources/A5.CJS/usertitleimg/${review.MEMBER_RENAMEPHOTO}" style="width: 90px; height: 90px; border-radius: 50% 50% 50% 50% ">
</c:if>
<a title="" href="#">카테고리 분야:</a>
<i>${review.CATEGORY_SMALL_NAME}</i>				
</div>
</div>
</c:forEach>
</c:if>     
</div>

<c:if test="${fn:length(review)>6}">  
<div class="item">
<c:forEach items="${review}" var="review" begin="6" end="8">
<div class="col-md-4 col-sm-6">
<div class="block-text rel zmin">
<a title="" href="#">${review.MEMBER_ID}</a>
<div class="mark">점수:<span class="rating-input">
<span data-value="0" class="glyphicon glyphicon-star">
<c:if test="${review.REVIEW_RATE==1}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star-empty">
</span><span data-value="3" class="glyphicon glyphicon-star-empty">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==2}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star-empty">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==3}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star-empty">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==4}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star">
</span></span>
</c:if>
<c:if test="${review.REVIEW_RATE==5}"> 
</span><span data-value="1" class="glyphicon glyphicon-star">
</span><span data-value="2" class="glyphicon glyphicon-star">
</span><span data-value="3" class="glyphicon glyphicon-star">
</span><span data-value="4" class="glyphicon glyphicon-star">
</span></span>
</c:if>
</div>
<p>${review.REVIEW_CONTENT}</p>
<ins class="ab zmin sprite sprite-i-triangle block"></ins>
</div>
<div class="person-text rel">
<c:if test="${review.MEMBER_RENAMEPHOTO eq null}">
<img src="/goodluck/resources/A5.CJS/usertitleimg/fghdgfdgsgfdsd.png" style="width: 90px; height: 90px; border-radius: 50% 50% 50% 50% ">
</c:if>
<c:if test="${review.MEMBER_RENAMEPHOTO ne null}">
<img src="/goodluck/resources/A5.CJS/usertitleimg/${review.MEMBER_RENAMEPHOTO}" style="width: 90px; height: 90px; border-radius: 50% 50% 50% 50% ">
</c:if>
<a title="" href="#">카테고리 분야:</a>
<i>${review.CATEGORY_SMALL_NAME}</i>				
</div>
</div>
</c:forEach>
</c:if>
</div>                 
                </div>
                <a class="left carousel-control" href="#carousel-reviews" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-reviews" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
		      </div>
		      <div class="modal-footer">
		      </div>
		    </div>
		  </div>
		</div>	
			
</body>
</html>