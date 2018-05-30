$(document).ready(function() {
	//alert("aaa");
	/* 체크박스 라디오버튼화 */
	$('input[type="checkbox"][name="group1"]').click(function() {
	//클릭 이벤트 발생한 요소가 체크 상태인 경우
		if ($(this).prop('checked')) {
		//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
			$('input[type="checkbox"][name="group1"]').prop('checked', false);
				$(this).prop('checked', true);
		}
	});
		$('input[type="checkbox"][name="group2"]').click(function() {
		if ($(this).prop('checked')) {
			$('input[type="checkbox"][name="group2"]').prop('checked', false);
				$(this).prop('checked', true);
		}
	});
		$('input[type="checkbox"][name="group3"]').click(function() {
		if ($(this).prop('checked')) {
			$('input[type="checkbox"][name="group3"]').prop('checked', false);
				$(this).prop('checked', true);
		}
	});
		$('input[type="checkbox"][name="group4"]').click(function() {
		if ($(this).prop('checked')) {
			$('input[type="checkbox"][name="group4"]').prop('checked', false);
		}
	});
		$(".cbtndropdown ").click(function() {
		var flagbg = true;
				
		var button = $(this).parent();
		
		//console.log("button.attr('id'):"+button.attr('id'));
		//console.log("button.next().attr('id'):"+button.next().attr('id'));
		//console.log("button.parent().next().attr('id'):"+button.parent().next().attr('id'));	
		
		if(button.next("li").is(":visible")){
			while(flagbg){
				if(!(button.next("li").attr("class") == 'mdcate' || button.next("li").attr("class") == 'smcate')){
					/* console.log("next is mdcate 또는 smcate 가 아님 현재"+button.attr("id")); */
					flagbg=false;
				}else{
					/* console.log(button.attr("id")); */
					button.next("li").slideUp();
					button = button.next("li");
					/* console.log("next했음 현재" +button.attr("id")); */
				}
			}				
		}else{
			while(flagbg){
				if(!(button.next("li").attr("class") == 'mdcate' || button.next("li").attr("class") == 'smcate')){
					/* console.log("next is mdcate 또는 smcate 가 아님 현재"+button.attr("id")); */
					flagbg=false;
				}else{
					/* 스몰카테고리면 - 미드카테고리 검색도 해야되서 주석처리함
					if(button.next("li").attr("class") == 'smcate'){
						 console.log("smcatepass"); 
						button = button.next("li");
						 console.log("next했음 현재" +button.attr("id")); 
					}else{
						 console.log(button.attr("id")); 
						button.next("li").slideDown();
						button = button.next("li");
						 console.log("next했음 현재" +button.attr("id")); 
					}
					*/
					button.next("li").slideDown();
					button = button.next("li");
				}
			}	
		}
	});
	
	/*	미드카테고리 눌럿을때 제이쿼리 동작 - 미드카테고리 검색도 해야되서 주석처리함
	$(".mdcate ").click(function() {
		var flagmd = true;
		
		var button = $(this);
		
		if(button.next("li").is(":visible")){
			while(flagmd){
				if(!(button.next("li").attr("class") == 'smcate')){
					 console.log("next is smcate 가 아님 현재"+button.attr("id")); 
					flagmd=false;
				}else{
					 console.log(button.attr("id")); 
					button.next("li").slideUp();
					button = button.next("li");
					 console.log("next했음 현재" +button.attr("id")); 
				}
			}
		}else{
			while(flagmd){
				if(!(button.next("li").attr("class") == 'smcate')){
					 console.log("next is smcate 가 아님 현재"+button.attr("id")); 
					flagmd=false;
				}else{
					 console.log(button.attr("id")); 
					button.next("li").slideDown();
					button = button.next("li");
					 console.log("next했음 현재" +button.attr("id")); 
				}
			}
		}
	});
	*/
	
	
});