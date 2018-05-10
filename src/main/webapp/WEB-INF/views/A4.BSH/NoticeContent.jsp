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
	});
</script>

</head>
<body>
	<div class="container" style="padding-bottom: 20px;">
		<div class="sidebar" style="background: blue; width: 20%; height: 100%; float: left;">
			<!-- 카테고리 -->
			sidebar
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
			<hr>
			<h3>
				대 카테고리
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
				<h4>중 카테고리</h4>
				<h5>소 카테고리</h5>
				<h5>소 카테고리</h5>
			</h3>
		</div>

		<div class="center" style="width: 80%; height: 100%; float: left;">
			<!-- 컨테이너 -->
			<div class="search" style="background: yellow; width: 100%;height:300px;">
				search<br>
				&nbsp;카테고리별 검색&nbsp;
				<select class="selectbox" id="대카테고리">
					<option value="대카테고리" selected="selected">대카테고리</option>
				</select>
				<select class="selectbox" id="중카테고리">
					<option value="중카테고리" selected="selected">중카테고리</option>
				</select>
				<select class="selectbox" id="소카테고리">
					<option value="소카테고리" selected="selected">소카테고리</option>
				</select>
				&nbsp;지역별 검색&nbsp;
				<select class="selectbox" id="지역">
					<option value="지역" selected="selected">지역</option>
				</select>
				&nbsp;글상태
				<select class="selectbox" id="글상태">
					<option value="글상태" selected="selected">글상태</option>
				</select>
				<br>
				&nbsp;<label><input type="checkbox" name="group1" id="시작날짜" value="시작날짜">시작날짜</label>
				&nbsp;<label class="checkboxlabel" style="border-right: 1px solid gray; padding-right: 10px;"><input type="checkbox" name="group1" id="등록날짜" value="등록날짜">등록날짜</label>
				&nbsp;<label><input type="checkbox" name="group2" id="시급" value="시급">시급</label>
				&nbsp;<label class="checkboxlabel" style="border-right: 1px solid gray; padding-right: 10px;"><input type="checkbox" name="group2" id="일급" value="일급">일급</label>
				&nbsp;<label>최소금액&nbsp;&nbsp;<input type="text" class="textbox" id="최소금액" placeholder="최소금액"></label>
				&nbsp;<label>최대금액&nbsp;&nbsp;<input type="text" class="textbox" id="최대금액" placeholder="최대금액"></label>
				<br>
				
				
			</div>
			<div class="maincontent" style="background: pink; width: 100%;height:400px;">
				maincontent
			</div>
		</div>
	</div>


</body>
</html>