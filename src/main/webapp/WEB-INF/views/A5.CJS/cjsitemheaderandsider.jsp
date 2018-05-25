<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
                  </tr> <tr>
                               <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="cjsitemmellhome.go">아이템몰 메인가기</a>
                                    </td>
                                </tr>
                         <tr>
                               <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="cjsnewitem.go">최신 아이템보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="cjspopitem.go">인기 아이템보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-file text-info"></span><a href="cjsspenditme.go">소모품 보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="cjsperioditme.go">기간제 보기</a>
                                        
                                    </td>
                                </tr>
                                  <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="cjsimticonitem.go">이모티콘 보기</a>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="cjsprovision.go" onclick='window.open(this.href, "팝업이름","옵션");return false;' target="blank">
                                        청약철회보기</a>
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
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
         
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
         
         
         
            <h3>1</h3>
           
        
        
        
        
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
          <li data-target="#myCarousel" data-slide-to="0" class="mall active"><a  href="#"><small>이달의 랜덤박스</small></a></li>
          <li data-target="#myCarousel" data-slide-to="1" class="mall"><a href="#"><small>이달의 최신 아이템!</small></a></li>
          <li data-target="#myCarousel" data-slide-to="2" class="mall"><a href="#"><small>이달의 패키지 상품</small></a></li>
          <li data-target="#myCarousel" data-slide-to="3" class="mall"><a href="#"><small>이달의 인기 아이템</small></a></li>
        </ul>
    </div><!-- End Carousel -->


 