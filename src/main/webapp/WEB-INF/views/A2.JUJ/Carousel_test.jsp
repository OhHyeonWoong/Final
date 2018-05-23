<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	
		<!-- ------------------------------------------- -->			
		<script type="text/javascript">
			$(document).ready( function() {
				var clickEvent = false;
				$('#').on('click', '.nav a', function() {
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
				    
					    
		<div class="container">			    
			<div style="width: 100%; float: none; height: 2000px; padding-top: 45px;">
				
				<!--카로셀 시작 -->
			    <div id="ukjae_petCarousel" class="carousel slide" data-ride="carousel">
			      <!-- Wrapper for slides -->
			      <div class="carousel-inner">
			      
			        <div class="item active">
			        
			            <div class="row" style="width: 100%; height: 30px; padding-left: 40px;">
			                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb60 text-center" style="margin-bottom: 0;">
			                        <h2 style="margin-top: 0;">동  물  공  감</h2>
			             		</div>
			            </div>
			            
			            <div class="row"  align="center" style="padding-left: 50px;" >
			                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
			                    <div class="tutor-block" style="height: 270px; padding-top: 30px;">
			                        <div class="tutor-img" style="height: auto;">
			                            <img src="/goodluck/resources/common/img/pet/동물공감1.jpg" style="width:160px; border-radius:20px;">
			                        </div>
			                        <div class="tutor-content" style="padding-bottom: 30px; margin-top: 20px;">
											"강아지에게도 한창 귀여울 <br>나이가 있다."
			                        </div>
			                    </div>
			                 </div>
			                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
			                    <div class="tutor-block"  style="height: 270px; padding-top:30px;">
			                        <div class="tutor-img" style="height: auto;">
			                            <img src="/goodluck/resources/common/img/pet/동물공감2.jpg" style="width:160px; border-radius:20px;">
			                        </div>
			                        <div class="tutor-content"  style="padding-bottom: 30px; margin-top: 20px;">
											"러시아와 우크라이나 싸움에<br>고래등 터졌다."
			                        </div>
			                    </div>
			                 </div>
			                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
			                    <div class="tutor-block"  style="height: 270px; padding-top:30px;">
			                        <div class="tutor-img"  style="height: auto;">
			                            <img src="/goodluck/resources/common/img/pet/동물공감3.jpg" style="width:160px;  border-radius:20px;">
			                        </div>
			                        <div class="tutor-content"  style="padding-bottom: 30px; margin-top: 20px;">
											"이제는 볼수없는해병이를..<br>
											 잊지 말아주세요.."
			                        </div>
			                    </div>
			                 </div>
			                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30" style="width: 260px;">
			                    <div class="tutor-block"  style="height: 270px; padding-top:30px;">
			                        <div class="tutor-img"  style="height: auto;">
			                            <img src="/goodluck/resources/common/img/pet/동물공감4.jpg" style="width:160px; border-radius:20px;">
			                        </div>
			                        <div class="tutor-content"  style="padding-bottom: 30px; margin-top: 20px;">
											"러블리러블리 아기와 반려동물의<br>므흣한 콜라보"		
			                        </div>
			                    </div>
			                 </div>
				    	 </div>		
				    	 	
			        </div><!-- End Item -->
			 
			        <div class="item">
			
			
			
			        </div><!-- End Item -->
			        
			        <div class="item">
			
			
			
			        </div><!-- End Item -->
			        
			        <div class="item">
			
			
			
			        </div><!-- End Item -->
			                
			      </div><!-- End Carousel Inner -->
			
			
			    	<ul class="nav nav-pills nav-justified">
			          <li data-target="#ukjae_petCarousel" data-slide-to="0" class="mall active"><a  href="#"><small>one list</small></a></li>
			          <li data-target="#ukjae_petCarousel" data-slide-to="1" class="mall"><a href="#"><small>two list</small></a></li>
			          <li data-target="#ukjae_petCarousel" data-slide-to="2" class="mall"><a href="#"><small>three list</small></a></li>
			          <li data-target="#ukjae_petCarousel" data-slide-to="3" class="mall"><a href="#"><small>four list</small></a></li>
			        </ul>
	
			    </div><!-- End Carousel -->			
	
			
			</div>
			<!-- ------------------------------------------- -->	
		</div>
	
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>