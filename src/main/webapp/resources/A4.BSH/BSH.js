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
				$(this).prop('checked', true);
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
		
		$("#bshsearch").click(function() {
			var searchstr = 'bshsearch.go';
			searchstr+='?bcate='+$('#bcate').val();
			searchstr+='&mcate='+$('#mcate').val();
			searchstr+='&scate='+$('#scate').val();
			searchstr+='&loc='+$('#loc').val();
			searchstr+='&state='+$('#state').val();
			
			searchstr+='&group1=';
			if($('#group1-1').prop('checked')){
				searchstr+=$('#group1-1').val();
			}else if($('#group1-2').prop('checked')){
				searchstr+=$('#group1-2').val();
			}
			
			searchstr+='&group2=';
			if($('#group2-1').prop('checked')){
				searchstr+=$('#group2-1').val();
			}else if($('#group2-2').prop('checked')){
				searchstr+=$('#group2-2').val();
			}
			
			searchstr+='&group3=';
			if($('#group3-1').prop('checked')){
				searchstr+=$('#group3-1').val();
			}else if($('#group3-2').prop('checked')){
				searchstr+=$('#group3-2').val();
			}else if($('#group3-3').prop('checked')){
				searchstr+=$('#group3-3').val();
			}else if($('#group3-4').prop('checked')){
				searchstr+=$('#group3-4').val();
			}
			
			/*searchstr+='&group4=';
			if($('#group4-1').prop('checked')){
				searchstr+=$('#group4-1').val();
			}else if($('#group4-2').prop('checked')){
				searchstr+=$('#group4-2').val();
			}*/

			searchstr+='&min='+$('#min').val();
			searchstr+='&max='+$('#max').val();
			searchstr+='&searchtext='+$('#searchtext').val();
			searchstr+='&page='+$('#page').val();
			
			if($('#bcate').val() == ""){
				if($('#mcate').val() == ""){
					if($('#scate').val() == ""){
						alert("카테고리를 선택해주세요");
						if($('#min').val()>$('#max').val()){
							alert('최대,최소 금액을 확인해주세요');
						}
					}else{
						if($('#min').val()>$('#max').val()){
							alert('최대,최소 금액을 확인해주세요');
						}else{
							location.href=searchstr;
						}
					}
				}else{
					if($('#min').val()>$('#max').val()){
						alert('최대,최소 금액을 확인해주세요');
					}else{
						location.href=searchstr;
					}
				}
			}else{
				if($('#min').val()>$('#max').val()){
					alert('최대,최소 금액을 확인해주세요');
				}else{
					location.href=searchstr;
				}
			}
			
		})
		
		$("#bcate").change(function(){
			switch($("#bcate").val()){
			case "":
				$(".midspace").hide();
				$(".smallspace").hide();
				$("#midspace").show();
				
				break;
			
			
			case "생활":
				$(".midspace").hide();
				$("#midspace").show();
				$("#홈").show();
				$("#푸드").show();
				$("#뷰티").show();
				$("#스포츠").show();
					
				break;
			case "여행":
				$(".midspace").hide();
				$("#midspace").show();

				$("#국내").show();
				$("#해외").show();
				
				break;
			case "음악":
				$(".midspace").hide();
				$("#midspace").show();

				$("#악기").show();
				$("#보컬").show();
				$("#댄스").show();
				$("#작곡").show();
	
				break;
			case "게임":
				$(".midspace").hide();
				$("#midspace").show();

				$("#PC").show();
				$("#콘솔").show();
				$("#모바일").show();
				$("#게임기타").show();
	
				break;
			case "렌탈":
				$(".midspace").hide();
				$("#midspace").show();

				$("#렌트").show();
	
				break;
			case "대행":
				$(".midspace").hide();
				$("#midspace").show();

				$("#1인").show();
				$("#다인").show();
	
				break;
			case "프리랜서":
				$(".midspace").hide();
				$("#midspace").show();

				$("#프로그래머").show();
				$("#디자이너").show();
				$("#작가").show();
				$("#번역").show();
				
				break;
			case "반려동물":
				$(".midspace").hide();
				$("#midspace").show();

				$("#강아지").show();
				$("#고양이").show();
				$("#반려동물기타").show();
	
				break;
			
			}
		});	
		
		
		$("#mcate").change(function(){
			switch($("#mcate").val()){
			case "":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				break;
				
			case "홈":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#파티").show();
				$("#인테리어").show();
				$("#청소").show();
				$("#수리").show();
				$("#증/개축").show();

				
				break;
			case "푸드":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#한식").show();
				$("#중식").show();
				$("#양식").show();
				$("#디저트").show();
				$("#푸드-기타").show();

				
				break;
			case "뷰티":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#헤어디자인").show();
				$("#메이크업").show();
				$("#패션").show();
				$("#뷰티-기타").show();

				break;
			case "스포츠":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#실내스포츠").show();
				$("#실외스포츠").show();
				$("#항공레저").show();
				$("#수상레저").show();
				$("#지상레저").show();
				$("#스포츠-기타").show();

				break;
			case "국내":
				
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#국내-가이드").show();
				$("#국내-운전기사").show();
				$("#국내-플래너").show();

				
				break;
			case "해외":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#해외-가이드").show();
				$("#해외-운전기사").show();
				$("#해외-통역").show();
				$("#해외-플래너").show();

				break;
			case "악기":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#현악기").show();
				$("#관악기").show();
				$("#타악기").show();
				$("#디제잉").show();
				$("#악기-기타").show();

				break;
			case "보컬":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#보컬-오페라").show();
				$("#보컬-뮤지컬").show();
				$("#보컬-판소리").show();
				$("#보컬-ROCK").show();
				$("#보컬-RnB").show();
				$("#보컬-힙합").show();
				$("#보컬-기타").show();

				break;
			case "댄스":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#현대무용").show();
				$("#고전무용").show();
				$("#한국무용").show();
				$("#발레").show();
				$("#방송댄스").show();
				$("#댄스-기타").show();
				break;
			case "작곡":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#작곡-발라드").show();
				$("#작곡-RnB").show();
				$("#작곡-댄스가요").show();
				$("#작곡-트로트").show();
				$("#작곡-록").show();
				$("#작곡-힙합").show();
				$("#작곡-기타").show();
				break;
			case "PC":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#PC-액션").show();
				$("#PC-RPG").show();
				$("#PC-FPS").show();
				$("#PC-AOS").show();
				$("#PC-아케이드").show();
				$("#PC-레이싱").show();
				$("#PC-스포츠").show();
				$("#PC-시뮬레이션").show();
				$("#PC-기타").show();
				break;
			case "콘솔":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#콘솔-액션").show();
				$("#콘솔-RPG").show();
				$("#콘솔-FPS").show();
				$("#콘솔-AOS").show();
				$("#콘솔-아케이드").show();
				$("#콘솔-레이싱").show();
				$("#콘솔-스포츠").show();
				$("#콘솔-시뮬레이션").show();
				$("#콘솔-기타").show();
				break;
			case "모바일":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#모바일-액션").show();
				$("#모바일-RPG").show();
				$("#모바일-FPS").show();
				$("#모바일-AOS").show();
				$("#모바일-아케이드").show();
				$("#모바일-레이싱").show();
				$("#모바일-스포츠").show();
				$("#모바일-시뮬레이션").show();
				$("#모바일-기타").show();
				break;
			case "게임기타":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#기타-액션").show();
				$("#기타-RPG").show();
				$("#기타-FPS").show();
				$("#기타-AOS").show();
				$("#기타-아케이드").show();
				$("#기타-레이싱").show();
				$("#기타-스포츠").show();
				$("#기타-시뮬레이션").show();
				$("#기타장르").show();
				break;
			case "렌트":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#주거용품").show();
				$("#생활용품").show();
				$("#스포츠용품").show();
				break;
			case "1인":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#애인대행").show();
				$("#친구대행").show();
				break;
			case "다인":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#하객대행").show();
				$("#방청객대행").show();
				$("#엑스트라대행").show();
				break;
			case "프로그래머":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#C").show();
				$("#C++").show();
				$("#C#").show();
				$("#Java").show();
				$("#PHP").show();
				$("#Node").show();
				$("#프로그램-기타").show();
				break;
			case "디자이너":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#포토샾").show();
				$("#일러스트레이트").show();
				$("#디자인").show();
				$("#디자이너-기타").show();
				break;
			case "작가":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#소설가").show();
				$("#만화가").show();
				$("#스토리작가").show();
				$("#방송작가").show();
				break;
			case "번역":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#영어").show();
				$("#중국어").show();
				$("#일본어").show();
				$("#러시아어").show();
				$("#프랑스어").show();
				$("#독일어").show();
				$("#외국어-기타").show();
				break;
			case "강아지":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#강아지-미용").show();
				$("#강아지-펫시터").show();
				$("#강아지-행동교정").show();
				$("#강아지-진료").show();
				break;
			case "고양이":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#고양이-미용").show();
				$("#고양이-펫시터").show();
				$("#고양이-행동교정").show();
				$("#고양이-진료").show();
				break;
			case "반려동물기타":
				$(".smallspace").hide();
				$("#smallspace").show();
				
				$("#기타동물-미용").show();
				$("#기타동물-펫시터").show();
				$("#기타동물-행동교정").show();
				$("#기타동물-진료").show();
				break;
			}
		});
		
		
		
});