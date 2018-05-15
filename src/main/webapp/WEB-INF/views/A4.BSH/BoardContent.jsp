<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BoardContent</title>
<!-- js따로 떼야댐 -->
<script type="text/javascript"
	src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
	
	
<script type="text/javascript">
	$(document).ready(function() {
		//alert("aaa");
		
		/* 체크박스 라디오버튼화 */
		$('input[type="checkbox"][name="group1"]').click(function(){
	        //클릭 이벤트 발생한 요소가 체크 상태인 경우
	        if ($(this).prop('checked')) {
	            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
	            $('input[type="checkbox"][name="group1"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		$('input[type="checkbox"][name="group2"]').click(function(){
	        if ($(this).prop('checked')) {
	            $('input[type="checkbox"][name="group2"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		$('input[type="checkbox"][name="group3"]').click(function(){
	        if ($(this).prop('checked')) {
	            $('input[type="checkbox"][name="group3"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		$('input[type="checkbox"][name="group4"]').click(function(){
	        if ($(this).prop('checked')) {
	            $('input[type="checkbox"][name="group4"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		/* 디비에서 가져와서 그정보를 어떻게 구현하지.. 여기부터*/
		$("#생활").click(function(){
			if($("#생활").next("h4").is(":visible")){
				$("#음식").slideUp();
				$("#AB").slideUp();
				$("#한식").slideUp();
				$("#중식").slideUp();
				$("#양식").slideUp();
				$("#ABA").slideUp();
				$("#ABB").slideUp();
				
			}else{
				$("#음식").slideDown();
				$("#AB").slideDown();
			}
		});
		
		$("#음식").click(function(){
			if($("#음식").next("h5").is(":visible")){
				$("#한식").slideUp();
				$("#중식").slideUp();
				$("#양식").slideUp();
			}else{
				$("#한식").slideDown();
				$("#중식").slideDown();
				$("#양식").slideDown();
			}
		});
		
		$("#AB").click(function(){
			if($("#AB").next("h5").is(":visible")){
				$("#ABA").slideUp();
				$("#ABB").slideUp();
			}else{
				$("#ABA").slideDown();
				$("#ABB").slideDown();
			}
		});
		
		/* 여기까지를 알고리즘으로 짜야댐 */
		
	});
	
</script>

<link href="/goodluck/resources/A4.BSH/BSH.css" rel="stylesheet">

<style type="text/css">

</style>

</head>
<body>
	<div class="container">
		<div class="bsh_sidebar">
			<!-- 카테고리 -->
			sidebar
			
			<!-- <script type="text/javascript">
			function getBoard(){
				var board = ${"#"}
				
			}
			
			</script> -->
			<form action="bshtest.go" method="get">
				<input type="submit" value="aaa">
			</form>
			
			<h3 class="big" id="생활">생활</h3>
			<h4 class="middle" id="음식" style="display: none;">음식</h4>
			<h5 class="small" id="한식" style="display: none;">한식</h5>
			<h5 class="small" id="중식" style="display: none;">중식</h5>
			<h5 class="small" id="양식" style="display: none;">양식</h5>
			<h4 class="middle" id="AB" style="display: none;">AB</h4>
			<h5 class="small" id="ABA" style="display: none;">ABA</h5>
			<h5 class="small" id="ABB" style="display: none;">ABB</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

			<hr>
			<h3>대 카테고리</h3>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>
			<h4>중 카테고리</h4>
			<h5>소 카테고리</h5>
			<h5>소 카테고리</h5>

		</div>

		<div class="bsh_center">
			<!-- 컨테이너 -->
			<div class="board_div_prime">
				<h2>프리미엄 글 입니다</h2>
				<table style="border: 1px solid black; width: 100%;">
					<thead style="border: 1px solid black;">
						<tr>
							<th style="border: 1px solid black; width: 5%;">종류</th>
							<th style="border: 1px solid black; width: 50%;">제목</th>
							<th style="border: 1px solid black; width: 5%;">지역</th>
							<th style="border: 1px solid black; width: 5%;">구분</th>
							<th style="border: 1px solid black; width: 10%;">금액</th>
							<th style="border: 1px solid black; width: 10%;">등록날짜</th>
							<th style="border: 1px solid black; width: 10%;">시작날짜</th>
							<th style="border: 1px solid black; width: 5%;">상태</th>
						</tr>

					</thead>
					<tbody>
						<%
							for (int i = 0; i < 10; i++) {
						%>
						<tr>
							<%
								for (int j = 0; j < 8; j++) {
							%>
							<td><%=i%>,<%=j%></td>
							<%
								}
							%>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

				<span class="bsh_span_button">
					<button>&lt;&lt;</button>
					<button>&lt;</button> 1 2 3 4 5 6 7 8 9 0
					<button>&gt;</button>
					<button>&gt;&gt;</button>
				</span>

			</div>

			<div class="board_div_search">
				<!-- search<br> -->
				<form>
					<table>
						<tr>
							<td class="td_start"><label>카테고리별 검색</label></td>
							<td class="td_mid"><select name="대카테고리">
									<option value="대카테고리" selected="selected">대카테고리</option>
							</select></td>
							<td class="td_mid"><select name="중카테고리">
									<option value="중카테고리" selected="selected">중카테고리</option>
							</select></td>
							<td class="td_end"><select name="소카테고리">
									<option value="소카테고리" selected="selected">소카테고리</option>
							</select></td>
							<td class="td_start"><label>지역별 검색</label></td>
							<td class="td_end"><select name="지역">
									<option value="지역" selected="selected">지역</option>
							</select></td>
							<td class="td_start"><label>글상태</label></td>
							<td class="td_end"><select name="글상태">
									<option value="글상태" selected="selected">글상태</option>
							</select></td>
						</tr>
						<tr>
							<td class="td_start"><label class="checkbox_comm"><input
									type="checkbox" name="group1" value="시급">시급</label></td>
							<td class="td_end"><label class="checkbox_comm"><input
									type="checkbox" name="group1" value="일급">일급</label></td>
							<td class="td_start"><label class="checkbox_comm"><input
									type="checkbox" name="group2" value="금액낮은순">금액낮은순</label></td>
							<td class="td_end"><label class="checkbox_comm"><input
									type="checkbox" name="group2" value="금액높은순">금액높은순</label></td>
							<td class="td_start"><label>최소금액</label></td>
							<td class="td_end"><input type="text" class="textbox_comm"
								placeholder="최소금액"></td>
							<td class="td_start"><label>최대금액</label></td>
							<td class="td_end"><input type="text" class="textbox_comm"
								placeholder="최대금액"></td>
						</tr>
						<tr>
							<td class="td_start"><label class="checkbox_comm"><input
									type="checkbox" name="group3" value="등록날짜순" checked="checked">등록날짜순</label>
							</td>
							<td class="td_end"><label class="checkbox_comm"><input
									type="checkbox" name="group3" value="시작날짜순">시작날짜순</label></td>
							<td class="td_start"><label class="checkbox_comm"><input
									type="checkbox" name="group4" value="제공">제공</label></td>
							<td class="td_end"><label class="checkbox_comm"><input
									type="checkbox" name="group4" value="구인">구인</label></td>
							<td class="td_start"><label>검색단어</label></td>
							<td class="td_mid" colspan="2"><input type="text"
								class="textbox_comm" placeholder="검색단어"></td>
							<td class="td_end">
								<button type="submit">
									<i class="glyphicon glyphicon-search"></i> Search
								</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="board_div_maincontent">
				<table style="border: 1px solid black; width: 100%;">
					<thead style="border: 1px solid black;">
						<tr>
							<th style="border: 1px solid black; width: 5%;">종류</th>
							<th style="border: 1px solid black; width: 50%;">제목</th>
							<th style="border: 1px solid black; width: 5%;">지역</th>
							<th style="border: 1px solid black; width: 5%;">구분</th>
							<th style="border: 1px solid black; width: 10%;">금액</th>
							<th style="border: 1px solid black; width: 10%;">등록날짜</th>
							<th style="border: 1px solid black; width: 10%;">시작날짜</th>
							<th style="border: 1px solid black; width: 5%;">상태</th>
						</tr>

					</thead>
					<tbody>
						<%
							for (int i = 0; i < 20; i++) {
						%>
						<tr>
							<%
								for (int j = 0; j < 8; j++) {
							%>
							<td><%=i%>,<%=j%></td>
							<%
								}
							%>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<span class="bsh_span_button">
					<button>&lt;&lt;</button>
					<button>&lt;</button> 1 2 3 4 5 6 7 8 9 0
					<button>&gt;</button>
					<button>&gt;&gt;</button>
				</span>
			</div>

		</div>
	</div>


</body>
</html>