<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NoticeContent</title>
<!-- js따로 떼야댐 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//alert("aaa");
		$('input[type="checkbox"][name="group1"]').click(function(){
	        //클릭 이벤트 발생한 요소가 체크 상태인 경우
	        if ($(this).prop('checked')) {
	            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
	            $('input[type="checkbox"][name="group1"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		$('input[type="checkbox"][name="group2"]').click(function(){
	        //클릭 이벤트 발생한 요소가 체크 상태인 경우
	        if ($(this).prop('checked')) {
	            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
	            $('input[type="checkbox"][name="group2"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		$('input[type="checkbox"][name="group3"]').click(function(){
	        //클릭 이벤트 발생한 요소가 체크 상태인 경우
	        if ($(this).prop('checked')) {
	            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
	            $('input[type="checkbox"][name="group3"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
		
		$('input[type="checkbox"][name="group4"]').click(function(){
	        //클릭 이벤트 발생한 요소가 체크 상태인 경우
	        if ($(this).prop('checked')) {
	            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
	            $('input[type="checkbox"][name="group4"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
	});
</script>
<style type="text/css">
.notice_div_search {
	background: #f5f5f5;
	width: 100%;
	height: 120px;
	padding: 10px;
	border: 1px solid #e7e7e7;
}

.notice_div_search>form>table>tbody>tr>td {
	width: 12.5%;
}

.notice_div_search>form>table>tbody>tr>td>select {
	border: 1px solid #e7e7e7;
	width: 100%;
	color: gray;
}

.notice_div_search>form>table>tbody>tr>td>label {
	color: gray;
}

.notice_div_search>form>table>tbody>tr>td>button {
	background: white;
	border: 1px solid #e7e7e7;
	width: 100%;
	color: gray;
}

.notice_div_search>form>table>tbody>tr>td>input {
	border: 1px solid #e7e7e7;
	width: 100%;
	color: gray;
}

.checkbox_comm {
	cursor: pointer;
}

.td_start {
	padding-top: 5px;
	padding-left: 5px;
	border-top: 1px dashed #B8B8B8;
	border-bottom: 1px dashed #B8B8B8;
	border-left: 1px dashed #B8B8B8;
}

.td_mid {
	padding-top: 5px;
	border-top: 1px dashed #B8B8B8;
	border-bottom: 1px dashed #B8B8B8;
}

.td_end {
	padding-top: 5px;
	border-top: 1px dashed #B8B8B8;
	border-bottom: 1px dashed #B8B8B8;
	border-right: 1px dashed #B8B8B8;
}
</style>

</head>
<body>
	<div class="container">
		<div class="sidebar" style="background: blue; width: 20%; height: 100%; float: left;">
			<!-- 카테고리 -->
			sidebar
			<h3>
				대 카테고리</h3>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			
			<hr>
			<h3>
				대 카테고리</h3>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			
			<hr>
			<h3>
				대 카테고리</h3>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			
			<hr>
			<h3>
				대 카테고리</h3>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			
			<hr>
			<h3>
				대 카테고리</h3>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			
			<hr>
			<h3>
				대 카테고리</h3>
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

		<div class="center" style="width: 78%; height: 100%; float: left; margin-left:2%">
			<!-- 컨테이너 -->
			<div class="notice_div_prime" style="background: orange; width: 100%;height:300px;">
				<table style="border: 1px solid black;width: 100%;">
					<thead style="border: 1px solid black;">
						<tr>
							<th style="border: 1px solid black">번호</th>
							<th style="border: 1px solid black">종류</th>
							<th style="border: 1px solid black">제목</th>
							<th style="border: 1px solid black">지역</th>
							<th style="border: 1px solid black">구분</th>
							<th style="border: 1px solid black">금액</th>
							<th style="border: 1px solid black">등록날짜</th>
							<th style="border: 1px solid black">시작날짜</th>
							<th style="border: 1px solid black">상태</th>
						</tr>
						
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						
					</tbody>
				</table>
			</div>
			
			<div class="notice_div_search">
				<!-- search<br> -->
				<form>
					<table>
						<tr>
							<td class="td_start">
								<label>카테고리별 검색</label>
							</td>	
							<td class="td_mid">	
								<select name="대카테고리">
									<option value="대카테고리" selected="selected">대카테고리</option>
								</select>
							</td>	
							<td class="td_mid">	
								<select name="중카테고리">
									<option value="중카테고리" selected="selected">중카테고리</option>
								</select>
							</td>	
							<td class="td_end">	
								<select name="소카테고리">
									<option value="소카테고리" selected="selected">소카테고리</option>
								</select>
							</td>	
							<td class="td_start">
								<label>지역별 검색</label>
							</td>	
							<td class="td_end">	
								<select name="지역">
									<option value="지역" selected="selected">지역</option>
								</select>
							</td>
							<td class="td_start">
								<label>글상태</label>
							</td>	
							<td class="td_end">	
								<select name="글상태">
									<option value="글상태" selected="selected">글상태</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="td_start">
								<label class="checkbox_comm"><input type="checkbox" name="group1" value="시급">시급</label>
							</td>	
							<td class="td_end">
								<label class="checkbox_comm"><input type="checkbox" name="group1" value="일급">일급</label>	
							</td>
							<td class="td_start">			
								<label class="checkbox_comm"><input type="checkbox" name="group2" value="금액낮은순">금액낮은순</label>
							</td>	
							<td class="td_end">
								<label class="checkbox_comm"><input type="checkbox" name="group2" value="금액높은순">금액높은순</label>
							</td>
							<td class="td_start">	
								<label>최소금액</label>
							</td>	
							<td class="td_end">	
								<input type="text" class="textbox_comm" placeholder="최소금액">
							</td>
							<td class="td_start">
								<label>최대금액</label>
							</td>	
							<td class="td_end">	
								<input type="text" class="textbox_comm" placeholder="최대금액">
							</td>
						</tr>
						<tr>
							<td class="td_start">
								<label class="checkbox_comm"><input type="checkbox" name="group3" value="등록날짜순" checked="checked">등록날짜순</label>
							</td>	
							<td class="td_end">
								<label class="checkbox_comm"><input type="checkbox" name="group3" value="시작날짜순">시작날짜순</label>				
							</td>
							<td class="td_start">
								<label class="checkbox_comm"><input type="checkbox" name="group4" value="제공">제공</label>
							</td>	
							<td class="td_end">
								<label class="checkbox_comm"><input type="checkbox" name="group4" value="구인">구인</label>
							</td>
							<td class="td_start">
								<label>검색단어</label>
							</td>	
							<td  class="td_mid" colspan="2">	
								<input type="text" class="textbox_comm" placeholder="검색단어">
							</td>
							<td class="td_end">
								<button type="submit">
									<i class="glyphicon glyphicon-search"></i> Search
								</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="maincontent" style="background: pink; width: 100%;height:400px;">
				maincontent
			</div>
		</div>
	</div>


</body>
</html>