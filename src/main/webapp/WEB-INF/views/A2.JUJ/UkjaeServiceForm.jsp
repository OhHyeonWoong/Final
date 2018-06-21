<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>서비스 등록 페이지</title>
	
	<style type="text/css">
	.text-danger strong {
	    		color: #9f181c;
			}
			.receipt-main {
				background: #ffffff none repeat scroll 0 0;
				border-bottom: 12px solid #333333;
				border-top: 12px solid #9f181c;
				margin-top: 50px;
				margin-bottom: 50px;
				padding: 40px 30px !important;
				position: relative;
				box-shadow: 0 1px 21px #acacac;
				color: #333333;
				font-family: open sans;
			}
			.receipt-main p {
				color: #333333;
				font-family: open sans;
				line-height: 1.42857;
			}
			.receipt-footer h1 {
				font-size: 15px;
				font-weight: 400 !important;
				margin: 0 !important;
			}
			.receipt-main::after {
				background: #414143 none repeat scroll 0 0;
				content: "";
				height: 5px;
				left: 0;
				position: absolute;
				right: 0;
				top: -13px;
			}
			.receipt-main thead {
				background: #414143 none repeat scroll 0 0;
			}
			.receipt-main thead th {
				color:#fff;
			}
	
	
			.receipt-main td {
				padding: 9px 20px !important;
			}
			.receipt-main th {
				padding: 13px 20px !important;
			}
			.receipt-main td {
				font-size: 13px;
				font-weight: initial !important;
			}
			.receipt-main td p:last-child {
				margin: 0;
				padding: 0;
			}	
			.receipt-main td h2 {
				font-size: 20px;
				font-weight: 900;
				margin: 0;
				text-transform: uppercase;
			}
			.receipt-header-mid .receipt-left h1 {
				font-weight: 100;
				margin: 34px 0 0;
				text-align: right;
				text-transform: uppercase;
			}
			.receipt-header-mid {
				margin: 24px 0;
				overflow: hidden;
			}
			
			#container {
				background-color: #dcdcdc;
			}	
	</style>



	<!-- 주소 입력을 위한 스크립트 로딩 영역입니다. -->
	</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(function(){
	detailCount=1;
});

function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }    
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample4_roadAddress').value = fullRoadAddr;
            
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>



	<div class="container" align="center">
		<form action="wookServiceAdd.go" method="post">
		<h2> 서비스 등록 </h2>
	
		<div class="row">
			
	        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="margin-top: 10px;">
	            <div class="row">
	    			<div class="receipt-header">
						<div class="col-xs-6 col-sm-6 col-md-6">

						</div>

					</div>
	            </div>
				   
				<div class="row">
							<div align="center">
								<input type="hidden" value="${loginUser.member_id}" name="loginUserId">
								<p style="border: 1px dotted gray; padding: 0; width: 330px !important;" align="center">
								<b><font size="3">서비스 유형선택</font></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<b>구해요</b>&nbsp;&nbsp;<input type="radio" name="ukwritetype" value="1">&nbsp;&nbsp; &nbsp;&nbsp;
								<b>제공해요</b>&nbsp;&nbsp;<input type="radio" name="ukwritetype" value="2"> 
								</p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">								
								<p><b>제목</b>&nbsp;&nbsp; <input type="text" style="width: 250px;" name="servicetitle" id="ServiceTitle"> </p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">
								<p><b>분류</b>&nbsp;&nbsp;
									<select class="uk_bigSort" id="uk_bigSort">						
										<option> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- </option>
										<option value="1">생활</option>
										<option value="2">여행</option>										
										<option value="3">음악</option>
										<option value="4">게임</option>
										<option value="5">렌탈</option>										
										<option value="6">대행</option>										
										<option value="7">프리랜서</option>										
										<option value="8">반려동물</option>
									</select>
									
									<select class="uk_midSort" id="uk_midSort">
										<option> &nbsp;&nbsp;-- </option>								
									</select>
									
									<select class="uk_smallSort" id="uk_smallSort" name="selectCate">
										<option> &nbsp;&nbsp;-- </option>	
									</select>
								  
								</p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">
								<p align="center">
									<label for="username" style="margin-top: 5px;">주소입력</label>
									<br>
									<input type="text" id="sample4_postcode" placeholder="우편번호" style="width: 85px !important; padding-left: 12px;" ><br><br>
									<span class="input-group-btn">					
									<a class="btn btn-default" onclick="sample4_execDaumPostcode()"><i class = "fa fa-search"></i> 우편번호 검색</a>
									</span>
									<br>
									<input type="text" name="selectserviceArea" class="form-control" id="sample4_roadAddress" name="member_address1" placeholder="도로명주소입니다" readonly="readonly" style="width:270px; margin: 0;">
									<span id="guide" style="color:#999"></span>
								</p>
								<!-- 주소 입력 관련 코드 종료 -->
								
							    <hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">
								<p>
								<b>시작일</b>&nbsp;&nbsp;
								<!-- <input type="text" name="carstartdate" id="datepicker1" readonly style="width: 50px;" placeholder="start"/>  -->
								<input type="date" name="startDate" value="시작일" style="height: 23px;"> 
								</p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">								
								<p>
								<b>종료일</b>&nbsp;&nbsp;
								<!-- <input type="text" name="carenddate" id="datepicker2" readonly style="width: 50px;" placeholder="end"/> -->								 
								<input type="date" name="endDate" value="시작일" style="height: 23px;">
								</p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">								
								<p> 
									<b>희망급여 </b>&nbsp;&nbsp;
									<select class="uk_servicePay" name="servicePaytype">
										<option>&nbsp;&nbsp;--</option>
										<option value="1">일급</option>
										<option value="2">시급</option>	
									</select>
									&nbsp; / &nbsp;<input type="text" style="width: 80px;" name="userinputPayamount">&nbsp;원 
								</p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">								
								
								<p align="center">
									<c:forEach var="useing" items="${userGiveItem}">

									<c:if test="${ useing.ITEMNAME eq '제목 색상변경권'}">
										<b>[보유 아이템]</b><b>Title에 적용될 색상을 선택하세요</b>
										<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 40%;">	
										<table>
											<tr align="center">
								 				<Td><p style="width: 30px; height: 20px; background-color: red;" /><Br>빨</td><Td style="padding: 0; width: 20px !important;"><input type="radio" name="title_color" value="#FF0000"></Td>
												<Td><p style="width: 30px; height: 20px; background-color: blue;" /><Br>파</td><Td style="padding: 0; width: 20px !important;"><input type="radio" name="title_color" value="#0100FF"></Td>
												<Td><p style="width: 30px; height: 20px; background-color: green;" /><Br>초</td><Td style="padding: 0; width: 20px !important;"><input type="radio" name="title_color" value="#009300"></Td>
											</tr>
											<tr  align="center">
												<Td><p style="width: 30px; height: 20px; background-color: yellow;" /><Br>노</td><Td style="padding: 0; width: 20px !important;"><input type="radio" name="title_color" value="#EDD200"></Td>
												<Td><p style="width: 30px; height: 20px; background-color: pink;" /><Br>핑</td><Td style="padding: 0; width: 20px !important;"><input type="radio" name="title_color" value="#DBB4B4"></Td>
												<Td><p style="width: 30px; height: 20px; background-color: orange;" /><Br>오</td><Td style="padding: 0; width: 20px !important;"><input type="radio" name="title_color" value="#FFBB00"></Td>
											</tr>
											<tr><td colspan="6"></td></tr>
											<tr align="center">
												<Td style="padding: 0;" colspan="6"><b>적용안함</b><input type="radio" name="title_color" value="2" style="margin-left: 10px;"></Td>
											</tr>
										</table>
										<br>
									</c:if>
									
									<c:if test="${ useing.ITEMNAME eq '제목 크기변경권'}">
										<b>[보유 아이템]</b>
										<b>Title에 크기변경 아이템을 선택하세요</b>
										<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 65%;">	
										<table>
											<tr align="center">
								 				<Td style="padding: 2px;"><font size="4">가</font></td><Td><input type="radio" name="title_size" value="4"></Td>
												<Td style="padding: 2px;"><font size="5">가</font></td><Td><input type="radio" name="title_size" value="5"></Td>
												<Td style="padding: 2px;"><font size="6">가</font></td><Td><input type="radio" name="title_size" value="6"></Td>
											</tr>
											<tr align="center">  
												<Td style="padding: 0;" colspan="6"><b>적용안함</b><input type="radio" name="title_size" value="2" style="margin-left: 10px;"></Td>
											</tr>													
										</table>
										<br>										
									</c:if>
									
									<c:if test="${ useing.ITEMNAME eq '제목 굵기강조권'}">
										<b>[보유 아이템]</b><b>Title에 굵기강조 아이템을 사용하시겠습니까?</b>
										<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 65%;">	
										<table>
											<!-- 0이면 굵기지정 적용X / 1이면 굵기지정적용O -->
											<tr align="center"><td>Yes&nbsp;<input type="radio" name="title_bold" value="1"></td><td>No&nbsp;<input type="radio" name="title_bold" value="2"></td></tr>
										</table>
										<br>
									</c:if>
									
									<c:if test="${ useing.ITEMNAME eq '게시글 프리미엄'}">
										<b>[보유 아이템]</b><b>게시글 프리미엄 등록을 하시겠습니까?</b>
										<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 65%;">	
										<table>
											<tr align="center"><td>Yes&nbsp;<input type="radio" name="title_premium" value="1"></td><td>No&nbsp;<input type="radio" name="title_premium" value="2"></td></tr>
										</table>	
										<br>
									</c:if>
									
									
									</c:forEach>
									
									<c:if test="${ userGiveItem eq null}">
										보유중인 아이템이 없다면 적용된 아이템이없습니다.
									</c:if>	
								</p>
								<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">								
							</div><br>


	            </div>
				
	            <div>
	                <table class="table table-bordered">
	                    <thead>
	                        <tr>
	                            <th colspan="2" align="center">서비스내용</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td class="col-md-9"><textarea rows="15" cols="73" style="resize: none;" name="writeContents"></textarea></td>
	                        </tr>
	                    </tbody>
	                </table>
					<hr style="clear: both; margin-top: 6px; margin-bottom: 6px; width: 90%;">
					<div class="form-group" align="center" style="padding-left: 30px;">					
						<label for="keyword" style="width:100px;">키워드</label>
						<div style="width: 100%; padding-left: 30px;" align="center" >
							<input type="text" name="keywordinput" class="form-control" style="width:150px; float:left">
							<input type="button" onclick="addDetail()" class="btn btn-primary center" value="키워드 추가" >						
						</div>	
						<div id="keyworddetail"></div>	
					</div>

	            </div>
	            <script type="text/javascript">
				
	            function addDetail(){
					
					var detailmax=3;
					if(detailmax>detailCount){
					$("#keyworddetail").append("<div id='"+detailCount+"'class='form-group'><br><label for='keyword' style='padding:auto; width:100px;'>키워드</label>	<div style='width: 100%; padding-left: 30px;'><input type='text'  name='keywordinput' class='form-control' style='width:150px; float:left'><input type='button' onclick='removeDetail(this)' id='"+detailCount+"' class='btn btn-primary center' value='정보삭제하기' style='margin-left:10px;'><input type='button'  onclick='addDetail()' class='btn btn-primary center' value='키워드 추가' style='margin-left:10px;'></div></div>");
					 detailCount++;
					 console.log(detailCount+"번째 키워드 추가완료");
					}else{
					 alert("기본 키워드 개수는 3개입니다");
					}
				} 	
	            function removeDetail(a){
	            	$("#"+a.id).remove();
	            	detailCount--;
	            	console.log(detailCount);
	            }	            
				</script>
	
	
	
	            
				
				<div class="row">
					<div class="receipt-header receipt-header-mid receipt-footer">
						<div class="col-xs-8 col-sm-8 col-md-8 text-left">
							<div class="receipt-right">
								<p><b>작성자 :</b> ${loginUser.member_id} </p>
							</div>
							
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4">
							<div class="receipt-left">
								<input type="submit" value="등록완료">&nbsp;
								<input type="button" value="등록취소" onclick="alllistreturn();">
								  
								<script type="text/javascript">
										$(function(){
											$('#uk_bigSort').change(function(){				
												/* var select = $('#uk_bigSort').val();
												if(select==1){
													alert("생활역영역 선택");
												}else if(select==2){
													alert("여행역영역 선택");													
												}else if(select==3){
													alert("음악역영역 선택");													
												}else if(select==4){
													alert("게임역영역 선택");													
												}else if(select==5){
													alert("렌탈역영역 선택");													
												}else if(select==6){
													alert("대행역영역 선택");													
												}else if(select==7){
													alert("프리랜서역영역 선택");													
												}else if(select==8){
													alert("반려동물역영역 선택");													
												} */

												$.ajax({
													url : "midcategorylist.go",
													type : "post",
													data :  { bigcatename : $('#uk_bigSort').val()
													},
													dataType : "json",
													success : function(data){
														var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
														var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈
														var sortvalues2 = "<option> &nbsp;-- </option>";
														$('#uk_smallSort').empty();
														$('#uk_smallSort').append(sortvalues2);
														
														$('.uk_midSort').empty();
														var sortvalues = "<option> &nbsp;-- </option>";
														
														for(var i in json.midlistfoword){
															sortvalues+="<option value="+json.midlistfoword[i].category_mid_code+">"+json.midlistfoword[i].category_mid_name+"</option>"
														}
														$('.uk_midSort').append(sortvalues);
													},
													error : function(a,b,c){
														console.log(a+","+b+","+c);
													}
												});												
											});
										});
										
										$(function(){
											$('#uk_midSort').change(function(){				
												var select = $('#uk_midSort').val();

												$.ajax({
													url : "smallcategorylist.go",
													type : "post",
													data :  { midcatename : $('#uk_midSort').val()
													},
													dataType : "json",
													success : function(data){
														var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
														var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
														$('.uk_smallSort').empty();
														var sortvalues = "<option> &nbsp;-- </option>";
														
														for(var i in json.smalllistfoword){
															sortvalues+="<option value="+json.smalllistfoword[i].category_small_code+">"+json.smalllistfoword[i].category_small_name+"</option>"
														}
														$('.uk_smallSort').append(sortvalues);
													},
													error : function(a,b,c){
														console.log(a+","+b+","+c);
													}
													
												});												
											});		
									    });	
								</script>

							</div>
						</div>
					</div>
	            </div>
				
	        </div>    
		</div>
		</form>
	</div>	
		
	
	

	  
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
