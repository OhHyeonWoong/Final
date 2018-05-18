<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
<script src="/goodluck/resources/common/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
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
<title>아이템 상세보기</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>


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
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>
                            ~~님<br>
                            보유 캐시 : xxxx원
               </a>
                 </h4>
                    </div>
                   	 <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                             	<tr>
                                    <td>
                                       <form action="">
                                        <input type="text" name="itemname" placeholder="아이템검색">
                                        <input type="submit" value="검섹">
                                        </form>
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
      		 <div class="panel panel-default">
        	    <div class="panel-heading">
                 <table style="width: 100%; height: 100%">
                 <tr>
                 <th style="width: 20%; height: 90%; background: red; padding: 10px;">
		
				<img src="/goodluck/resources/common/img/Logo1.png" style="width: 80px; height:70px; background: red">
				</th>
                 <th style="width: 78%;">
                 상품명: ....<br>
        	가격: ....<br>
        	기간:....<br>				
                 </th>
                 </tr>
                 </table>
        	     </div>
                <div class="panel-body">
                <ul>
                <li>상세설명1</li>
                <li>상세설명2</li>
                <li>상세설명3</li>
                <li>청약 철회 관련  바로가기</li>
                </ul>    
				

                </div>
                <div class="panel-footer">
                    <div class="pull-right">
                      <button>구매하기</button>
                      <button>뒤로가기</button>
                    </div>
                    <div class="clearfix"></div>
                </div>
    		</div>
        
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