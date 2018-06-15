<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page autoFlush="true" buffer="1094kb"%>
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
		location.href="Error500.go";
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
				$("#ukapplybtn").removeAttr("data-target");
				$("#ukapplybtn").text("해당 글에 이미 지원했습니다.");
				$("#ukapplybtn").removeAttr("id");
			  }else if(data == 2){
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

${Board};
<br>
${Cateinfo};

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
                       ${Cateinfo.CATEGORY_BIG_NAME} > 
                       ${Cateinfo.CATEGORY_MID_NAME} >
                       ${Cateinfo.CATEGORY_SMALL_NAME} 
                       </h3><Br>
                       <c:choose>
                       <c:when test="${Board.agency_type == 1}"><h4><font style="color: blue">구합니다!</font></h4></c:when>
                       <c:when test="${Board.agency_type == 2}"><h4><font style="color: red">해줍니다!</font></h4></c:when>
    
                       </c:choose>
                   
                        <h5>${Board.agency_title}</h5>
                                                     오너 : ${Board.agency_writer}
                        <table  style="width: 100%"> 
                        <tr>
                        <td width="30%">
                        <small><cite title="San Francisco, USA">지역 : ${Board.agency_loc}<i class="glyphicon glyphicon-map-marker">
                        </i></cite></small>
                        </td>
                        <td><i class="glyphicon glyphicon-envelope"></i>email@example.com
                        </td>
                        </tr>
                        <tr>
                        <td>수행 예정일: ${Board.agency_startdate} </td>
                        <td>마감 예정일: ${Board.agency_enddate} </td>
                        </tr>
             
                       
                        <tr>
                        <td>게시물 등록일 : ${Board. agency_enrolldate}  <i class="fa fa-calendar-check-o"></i></td>
                        <td>  </td>
                        </tr>
                        
                        <tr>
                        <td>수당 방식 : 
                        <c:choose>
                        <c:when test="${Board.agency_paytype == 1}">시급</c:when>
                        <c:when test="${Board.agency_paytype == 1}">일급</c:when>
                        
                        </c:choose></td>
                        <td>방식당 페이:${Board.agency_pay}원  </td>
                        </tr>
                  
                  <tr>
                  <td>조회수 : ${Board.AGENCY_VEIWS}
                  </td>
                  
                  </tr>
                  
                  <tr>
                  <th colspan="2" style="width: 80%">

	<c:forEach var="keyword" items="${keywords}">
	
	<a href="#">#${keyword}</a> &nbsp;
	
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
     <button>뒤로가기</button>
     </center> 
</th>




<th style="width: 25%"> 
<div class="panel panel-primary kanban-col">
                <div class="panel-heading">
                    작성자의 다른 글 보기
                    <i class="fa fa-2x fa-plus-circle pull-right"></i>
                </div>
                <div class="panel-body1" style="height: 300px; overflow: scroll; max-height: 799px; display: none;" >
                    <div id="TODO" class="kanban-centered">

                        <article class="kanban-entry grab" id="item1" draggable="true" >
                            <div class="kanban-entry-inner">
                                <div class="kanban-label">
                                    <h2><a href="#">Art Ramadani</a> <span>posted a status update</span></h2>
                                    <p>Tolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may.</p>
                                </div>
                            </div>
                        </article>

                        <article class="kanban-entry grab" id="item2" draggable="true">
                            <div class="kanban-entry-inner">
                                <div class="kanban-label">
                                    <h2><a href="#">Job Meeting</a></h2>
                                    <p>You have a meeting at <strong>Laborator Office</strong> Today.</p>
                                </div>
                            </div>
                        </article>

                        <article class="kanban-entry grab" id="item3" draggable="true">
                            <div class="kanban-entry-inner">
                                <div class="kanban-label">
                                    <h2><a href="#">Arlind Nushi</a> <span>checked in at</span> <a href="#">Laborator</a></h2>

                                    <blockquote>Great place, feeling like in home.</blockquote>

                                    <div id="sample-checkin" class="map-checkin" style="height: 170px; width: 100%; position: relative; background-color: rgb(229, 227, 223); overflow: hidden; -webkit-transform: translateZ(0);"><div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; cursor: url(http://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; -webkit-transform-origin: 0px 0px; -webkit-transform: matrix(1, 0, 0, 1, 0, 0);"><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; width: 100%; z-index: 200;"><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div></div><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; width: 100%; z-index: 201;"><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: -1;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0); position: absolute; left: 72px; top: -176px;"><canvas draggable="false" height="256" width="256" style="-webkit-user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;"></canvas></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0); position: absolute; left: 72px; top: 80px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0); position: absolute; left: -184px; top: -176px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0); position: absolute; left: -184px; top: 80px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0); position: absolute; left: 328px; top: -176px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0); position: absolute; left: 328px; top: 80px;"></div></div></div></div></div><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; width: 100%; z-index: 202;"><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div></div><div style="-webkit-transform: translateZ(0); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 72px; top: -176px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 72px; top: 80px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: -184px; top: -176px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: -184px; top: 80px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 328px; top: -176px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 328px; top: 80px;"></div></div></div></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><div style="overflow: hidden; width: 431px; height: 170px;"><img src="http://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&1i701363&2i1636267&2e1&3u14&4m2&1u431&2u170&5m4&1e0&5spt-BR&6sus&10b1&token=8503" style="width: 421px; height: 160px;"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 72px; top: -176px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://mt0.googleapis.com/vt?lyrs=m@248313357&src=apiv3&hl=pt-BR&x=2740&y=6391&z=14&style=47,37%7Csmartmaps" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 72px; top: 80px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://mt0.googleapis.com/vt?lyrs=m@248254527&src=apiv3&hl=pt-BR&x=2740&y=6392&z=14&style=47,37%7Csmartmaps" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: -184px; top: -176px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://mt1.googleapis.com/vt?lyrs=m@248282439&src=apiv3&hl=pt-BR&x=2739&y=6391&z=14&style=47,37%7Csmartmaps" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: -184px; top: 80px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://mt1.googleapis.com/vt?lyrs=m@248011677&src=apiv3&hl=pt-BR&x=2739&y=6392&z=14&style=47,37%7Csmartmaps" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 328px; top: -176px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://mt1.googleapis.com/vt?lyrs=m@248301220&src=apiv3&hl=pt-BR&x=2741&y=6391&z=14&style=47,37%7Csmartmaps" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0); position: absolute; left: 328px; top: 80px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://mt1.googleapis.com/vt?lyrs=m@248301220&src=apiv3&hl=pt-BR&x=2741&y=6392&z=14&style=47,37%7Csmartmaps" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0);"></div></div></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a target="_blank" href="http://maps.google.com/maps?ll=36.738888,-119.783013&z=14&t=m&hl=pt-BR&gl=US&mapclient=apiv3" title="Clique para ver esta área no Google Maps" style="position: static; overflow: visible; float: none; display: inline;"><div style="width: 62px; height: 26px; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/google_white2.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 62px; height: 26px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></a></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 192px; bottom: 0px; width: 85px;"><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer;">Dados do mapa</a><span style="display: none;">Dados cartográficos ©2014 Google</span></div></div></div><div style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); -webkit-box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 118px; position: absolute; left: 61px; top: 5px;"><div style="padding: 0px 0px 10px; font-size: 16px;">Dados do mapa</div><div style="font-size: 13px;">Dados cartográficos ©2014 Google</div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Dados cartográficos ©2014 Google</div></div><div class="gmnoprint gm-style-cc" draggable="false" style="z-index: 1000001; position: absolute; -webkit-user-select: none; right: 113px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a href="http://www.google.com/intl/pt-BR_US/help/terms_maps.html" target="_blank" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Termos de Uso</a></div></div><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; position: absolute; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a target="_new" title="Informar erros no mapa ou nas imagens para o Google" href="http://maps.google.com/maps?ll=36.738888,-119.783013&z=14&t=m&hl=pt-BR&gl=US&mapclient=apiv3&skstate=action:mps_dialog$apiref:1&output=classic" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Informar erro no mapa</a></div></div><div class="gmnoprint" draggable="false" controlwidth="32" controlheight="84" style="margin: 5px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;"><div controlwidth="32" controlheight="40" style="cursor: url(http://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; position: absolute; left: 0px; top: 0px;"><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -9px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -107px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -58px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -205px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoprint" controlwidth="0" controlheight="0" style="opacity: 0.6; display: none; position: absolute;"><div title="Girar o mapa em 90 graus" style="width: 22px; height: 22px; overflow: hidden; position: absolute; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -38px; top: -360px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoprint" controlwidth="20" controlheight="39" style="position: absolute; left: 6px; top: 45px;"><div style="width: 20px; height: 39px; overflow: hidden; position: absolute;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -39px; top: -401px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div title="Aumentar o zoom" style="position: absolute; left: 0px; top: 2px; width: 20px; height: 17px; cursor: pointer;"></div><div title="Diminuir o zoom" style="position: absolute; left: 0px; top: 19px; width: 20px; height: 17px; cursor: pointer;"></div></div></div><div class="gmnoprint" style="margin: 5px; z-index: 0; position: absolute; cursor: pointer; right: 0px; top: 0px;"><div class="gm-style-mtc" style="float: left;"><div draggable="false" title="Mostrar mapa de ruas" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 1px 6px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; border: 1px solid rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 28px; font-weight: 500;">Mapa</div><div style="background-color: white; z-index: -1; padding-top: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); border-left-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 19px; text-align: left; display: none;"><div draggable="false" title="Mostrar mapa de ruas com terreno" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Terreno</label></div></div></div><div class="gm-style-mtc" style="float: left;"><div draggable="false" title="Mostrar imagens de satélite" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 1px 6px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; border-width: 1px 1px 1px 0px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-top-color: rgba(0, 0, 0, 0.14902); border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 36px;">Satélite</div><div style="background-color: white; z-index: -1; padding-top: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); border-left-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 19px; text-align: left; display: none;"><div draggable="false" title="Aumentar o zoom para a visualização de 45 graus" style="color: rgb(184, 184, 184); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap; display: none;"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(241, 241, 241); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">45°</label></div><div draggable="false" title="Mostrar imagens com nomes de rua" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Marcadores</label></div></div></div></div></div></div>
                                </div>
                            </div>
                        </article>

                        <article class="kanban-entry grab" id="item4" draggable="true">
                            <div class="kanban-entry-inner">
                                <div class="kanban-label">
                                    <h2><a href="#">Arber Nushi</a> <span>changed his</span> <a href="#">Profile Picture</a></h2>

                                    <blockquote>Pianoforte principles our unaffected not for astonished travelling are particular.</blockquote>

                                    <img src="http://themes.laborator.co/neon/assets/images/timeline-image-3.png" class="img-responsive img-rounded full-width">
                                </div>
                            </div>
                        </article>

                    </div>
                </div>
                <div class="panel-footer">
                    <a href="#">작성자가 받은 리뷰 보기</a>
                </div>
            </div>
       </th>
</tr>
</table>
</tr>

</table>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=120b01867e29e09658100681cf1d0604&libraries=services,clusterer,drawing"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};  
var geocoder = new daum.maps.services.Geocoder();
var coords="";
var coords1="";
geocoder.addressSearch('경기도 도덕공원로', function(result, status) {

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


// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다

// 주소로 좌표를 검색합니다


geocoder.addressSearch('경기도 도덕공원로 75-28', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        coords1 = new daum.maps.LatLng(result[0].y, result[0].x);
        console.log("coords1="+coords1);
        var positions = [
            {
                content: '<div text-align:"center">카카오</div>', 
                latlng: coords1
            }
        ];

        for (var i = 0; i < positions.length; i ++) {
            // 마커를 생성합니다
            console.log(positions);
            var marker = new daum.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng // 마커의 위치
            });

            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new daum.maps.InfoWindow({
                content: positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
            // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            (function(marker, infowindow) {
                // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
                daum.maps.event.addListener(marker, 'mouseover', function() {
                    infowindow.open(map, marker);
                });

                // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
                daum.maps.event.addListener(marker, 'mouseout', function() {
                    infowindow.close();
                });
            })(marker, infowindow);
        }    
        
        
    } 
});
</script>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>

		<div class="modal fade"  id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="width:500px; height: 200px; margin-top: 200px;">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">신청하기</h4>
		      </div>
		      <div class="modal-body">

				
				<button onclick="test1();">확인</button>
				<button onclick="test2();">취소</button>
				<script type="text/javascript">
					function test1(){
					      var bool = confirm('정말로 신청 하시겠습니까?');
					      if(bool==true){
					         alert("신청이 완료 되었습니다!");
					         location.href="DealingState.go?BoardNo=${Board.agency_no}&memberid=${loginUser.member_id}";
					      }else {
					         alert("신청이 취소 되었습니다.");            
					      }
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

</body>
</html>






















