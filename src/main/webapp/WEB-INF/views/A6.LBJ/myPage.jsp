<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!---------------------------------- Jeon Dong Gi ------------------------------->
<!-- 부트스트랩: common 폴더 내 부트스르랩 공용 파일 사용 -->
<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="/goodluck/resources/A3.JDK/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="/goodluck/resources/A3.JDK/css/style.css" media="screen" title="no title" charset="utf-8">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins)common 폴더 내 공용파일 사용 -->
<!-- <script	src="/rs/resources/common/js/jquery-3.3.1.min.js"></script> -->
<!-- <script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script> -->
<!-- 부트스트랩용 자바스크립트 파일 공용 폴더 내부  js 파일 사용-->
<!-- <script src="/rs/resources/common/bootstrap.min.js"></script> -->
<!---------------------------------- Jeon Dong Gi-------------------------------->
<!-- 주소 입력을 위한 스크립트 로딩 영역입니다. -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
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

<!-- byungjun -->
<link href="/goodluck/resources/A6.LBJ/css/lbj_sidebar.css" rel="stylesheet">
<!-- byungjun -->
<style type="text/css">
 	.lbjdiv{
 		margin-bottom:50px;
 	}
	.lbjh3{
		/* text-align:center;
		align:center; */
	}
	.lbjtable{
		/* width:800px; */
		text-align:center;
	}
	.lbjth{
		text-align:center;
	}
</style>
</head>
<body style="display:absolute; overflow:auto;">
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<script type="text/javascript" src="/goodluck/resources/A6.LBJ/js/lbj_sidebar.js"></script>
	<script type="text/javascript">
//////////////////////전역변수 부분/////////////////////////
//정규식 목록
//2. 비밀번호 정규식 : 6~16자리 영문/숫자/특수문자 포함
var pwpattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}/;
///////////////////////////////////////////////////////	
	$(function(){
			$('#allCheckBox1').on('click',function(){
				//모든 체크박스 체크
				if($(this).prop("checked")){
					$('input[type="checkbox"][name="chk1"]').prop('checked',true);
					$(this).prop("checked",true)
				}else{
					$('input[type="checkbox"][name="chk1"]').prop('checked',false);
					$(this).prop("checked",false)
				}
			});
			//파일 확장자 검사하는 부분
			
			$("#InputProfile").change(function(){
				var e= $("#InputProfile").val();
				
				var fileType = e.slice(e.lastIndexOf("."),e.length).toLowerCase();
		
				if(fileType ==".jpg"){
					fc=true;
				}else if(fileType ==".png"){
					fc=true;
				}else if(fileType ==".jpeg"){
					fc=true;
				}else if(fileType==null){
					fc=true;
				}else{
					fc=false;
					alert("jpg, png, jpeg 파일만 등록 가능합니다.");
				}
			});
			
			
			
		});
		function fnDeleteQna(){
			var checkBox1 = $('input[name="chk1"]:checked');
			var chkValue = new Array();
			for(var i=0;i<checkBox1.length;i++){
				chkValue[i] = checkBox1[i].value;
				console.log(chkValue[i]);
			}
			console.log("length = " + chkValue.length);
			
			$.ajax({
				url:"lbjDeleteQna.go",
				type:"post",
				data:{
					question_no: chkValue
				},
				success:function(data){
					alert(data);
					if(data == '게시글 삭제 성공!'){
						window.history.go(0);
					}
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
			/* var checkBox2 = $('input[name="chk1"]:checked').val();
			console.log(checkBox1);
			console.log(checkBox2); */
		}
		
		function fnQnaReload(page){
			console.log("fnQnaReload(page) = " + page);
			$.ajax({
				url:"lbjMyQna.go",
				dataType:"json",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					//$('#lbjQnaTable').empty();
					$('#lbjQnaTable').empty();
					/* $('#lbjQnaTable').removeClass("table table-striped lbjtable");
					$('#lbjQnaTable').addClass("table table-striped lbjtable"); */
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjQnaTable"><tr><td class="lbjth"><input type="checkbox" id="allCheckBox1">전체선택</td>'+
				'<td class="lbjth" colspan="3" style="text-align:left;"><a href="javascript:void(0);" class="btn btn-danger btn-xs" onclick="fnDeleteQna(); return false;"><span class="glyphicon glyphicon-remove"></span>삭제</a></td>'+
				'<td class="lbjth" style="text-align:right;"><a class="btn btn-info btn-xs" href="lbjqnawrite.go"><span class="glyphicon glyphicon-edit"></span>1:1 상담하기 > </a></td>'+
				'</tr><tr><th class="lbjth">선택</th><th class="lbjth">분야</th>'+
				'<th class="lbjth">제목</th><th class="lbjth">처리상황</th><th class="lbjth">등록일시</th></tr>';
				
					for(var i in json.qna){
						if(json.qna[i].question_answer_state == '답변완료'){
							html += "<tr><td><input type='checkbox' name='chk1' id='chkBox"+i+"' value="+json.qna[i].question_no+"></td>";
						}else{
							html += '<tr><td>X</td>';
						}
						htmlStr += "<td>"+ json.qna[i].question_category
						+"</td><td><a href='lbjqnadetail.go?question_writer="+json.qna[i].question_writer+"&question_no="+json.qna[i].question_no+"'>"+json.qna[i].question_title
					    +"</a></td><td>"+json.qna[i].question_answer_state+"</td><td>"+json.qna[i].question_date+"</td></tr>";
					}
					//페이징 처리//
					htmlStr += '<tr><td colspan="5"><div style="text-align:center;">'
					if(json.qna[0].qnaListCount > 6){
						if(json.qna[0].qnaCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload(1); return false;"> << </a>&nbsp;';
						}
						if(json.qna[0].qnaCurrentPage > json.qna[0].qnaStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+(json.qna[0].qnaCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						console.log("json.qna[0].qnaStartPage = " + json.qna[0].qnaStartPage);
						console.log("json.qna[0].qnaEndRow = " + json.qna[0].qnaEndRow);
						for(var i=json.qna[0].qnaStartPage;i<=json.qna[0].qnaEndFor;i++){
							if(i == json.qna[0].qnaCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.qna[0].qnaCurrentPage != json.qna[0].qnaEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+(json.qna[0].qnaCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.qna[0].qnaCurrentPage >= json.qna[0].qnaMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+json.qna[0].qnaMaxPage+'); return false;">>></a>';
						}
					}else{
						htmlStr += '<font color="red" size="4"><b>1</b></font>&nbsp';
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 끝//
					$('#lbjqnaDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
		
		function fnItemReload(page){
			console.log("fnItemReload(page) = " + page);
			$.ajax({
				url:"lbjMyItem.go",
				type:"post",
				dataType:"json",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#lbjItemTable').empty();
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjItemTable"><tr>'+
					'<th class="lbjth">아이템명</th><th class="lbjth">구매일</th><th class="lbjth">시작일</th>'+
					'<th class="lbjth">종료일</th><th class="lbjth">이용횟수</th></tr>';
					
					console.log("qna 페이징 처리");
					for(var i in json.item){
						htmlStr += '<tr><td>'+json.item[i].itemname+'</td>'+
						'<td>'+json.item[i].buy_date+'</td>'+
						'<td>'+json.item[i].start_date+'</td>'+
						'<td>'+json.item[i].end_date+'</td>'+
						'<td>'+json.item[i].final_status+'</td></tr>';
					}
					console.log("qna 페이징 처리");
					//console.log("json.item[0].itemListCount" + json.item[0].itemListCount);
					//페이징 처리//
					htmlStr += '<tr><td colspan="5"><div style="text-align:center;">'
					if(json.item[0].itemListCount > 6){
						if(json.item[0].qnaCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload(1);"> << </a>&nbsp;';
						}
						if(json.item[0].qnaCurrentPage > json.item[0].qnaStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+(json.item[0].qnaCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.item[0].qnaStartPage;i<=json.item[0].itemEndFor;i++){
							if(i == json.item[0].qnaCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.item[0].qnaCurrentPage != json.item[0].itemEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+(json.item[0].qnaCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.item[0].qnaCurrentPage >= json.item[0].itemMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+json.item[0].itemMaxPage+'); return false;">>></a>';
						}
					}else{
						htmlStr += '<font color="red" size="4"><b>1</b></font>&nbsp';
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 끝//
					$('#lbjitemDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
		
		//여기 수정해야됨
		function fnReportReload(page){
			console.log("fnReportReload(page) = " + page);
			$.ajax({
				url:"lbjMyReport.go",
				type:"post",
				dataType:"json",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#lbjReportTable').empty();
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjReportTable">'+
					'<tr><th colspan="4" class="lbjth" style="text-align:right;">'+
					'<a class="btn btn-info btn-xs" href="lbjGoReportWrite.go"><span class="glyphicon glyphicon-edit"></span>작성하기</a>'+
					'</th></tr><tr><th class="lbjth">글번호</th><th class="lbjth">제목</th><th class="lbjth">카테고리</th><th class="lbjth">작성일</th></tr>';
					
					console.log("report 페이징 처리 시작");
					for(var i in json.report){
						htmlStr += '<tr><td>'+json.report[i].report_no+'</td>'+
						"<td><a href='javascript:location.href='lbjGoReportDetail.go?report_no="+json.report[i].report_no+'">'+json.report[i].report_title+'</a></td>"';
						if(json.report[i].report_category == 1){
							htmlStr += "<td>불량이용객 신고</td>";
						}else if(json.report[i].report_category == 2){
							htmlStr += "<td>게시물신고</td>";
						}
						htmlStr += '<td>'+json.report[i].report_date+'</td></tr>';
					}
					console.log("report 페이징 처리 끝");
					//페이징 처리//
					htmlStr += '<tr><td colspan="5"><div style="text-align:center;">'
					if(json.report[0].reportListCount > 6){
						if(json.report[0].qnaCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnReportReload(1);"> << </a>&nbsp;';
						}
						if(json.report[0].qnaCurrentPage > json.report[0].qnaStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnReportReload('+(json.report[0].qnaCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.report[0].qnaStartPage;i<=json.report[0].reportEndFor;i++){
							if(i == json.report[0].qnaCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnReportReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.report[0].qnaCurrentPage != json.report[0].reportEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnReportReload('+(json.report[0].qnaCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.report[0].qnaCurrentPage >= json.report[0].reportMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnReportReload('+json.report[0].reportMaxPage+'); return false;">>></a>';
						}
					}else{
						htmlStr += '<font color="red" size="4"><b>1</b></font>&nbsp';
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 끝//
					$('#lbjReportDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
		
		//myBoard 페이징 처리
		function fnMyBoardReload(page){
			console.log("fnMyBoardReload(page) = " + page);
			$.ajax({
				url:"lbjMyBoard.go",
				type:"post",
				dataType:"json",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#lbjMyBoardTable').empty();
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjMyBoardTable">'+
						'<tr><th class="lbjth">종류</th><th class="lbjth">카테고리</th><th class="lbjth">제목</th>'+
						'<th class="lbjth">작성일</th><th class="lbjth" colspan="2">버튼</th></tr>';
					
					console.log("myBoard 리로딩 처리 시작");
					for(var i in json.myBoard){
						if(json.myBoard[i].agency_type == 1){
							htmlStr += '<tr><td>구합니다<font style="color:red;">(오너)</font></td>';
						}else{
							htmlStr += '<tr><td>해드립니다(일반 지원자)</td>'
						}
						htmlStr += '<td>'+json.myBoard[i].category_small_name+'</td>';
						htmlStr += '<td><a href="BoardDetail.go?BoardNo='+json.myBoard[i].agency_no+'">'+json.myBoard[i].agency_title+'</a></td>';
						htmlStr += '<td>'+json.myBoard[i].agency_enrolldate+'</td>';
						htmlStr += '<td><button class="btn btn-default" onclick="">수정</button></td>';
						htmlStr += '<td><button class="btn btn-danger" onclick="">삭제</button></td></tr>';
					}
					console.log("myBoard 리로딩 처리 끝");
					//페이징 처리 시작//
					console.log("myBoard 페이징 처리 시작");
					htmlStr += '<tr><td colspan="6"><div style="text-align:center;">'
					if(json.myBoard[0].myBoardListCount > 6){
						if(json.myBoard[0].myBoardCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardReload(1);"> << </a>&nbsp;';
						}
						if(json.myBoard[0].myBoardCurrentPage > json.myBoard[0].myBoardStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardReload('+(json.myBoard[0].myBoardCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.myBoard[0].myBoardStartPage;i<=json.myBoard[0].myBoardEndFor;i++){
							if(i == json.myBoard[0].myBoardCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						if(json.myBoard[0].myBoardCurrentPage != json.myBoard[0].myBoardEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardReload('+(json.myBoard[0].myBoardCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.myBoard[0].myBoardCurrentPage >= json.myBoard[0].myBoardMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardReload('+json.myBoard[0].myBoardMaxPage+'); return false;">>></a>';
						}
					}else{
						htmlStr += '<font color="red" size="4"><b>1</b></font>&nbsp';
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 the end//
					$('#lbjMyBoardDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});		
		}
		
		//내 신청내역
		function fnMyApplyBoardReload(page){
			console.log("fnMyApplyBoardReload(page) = " + page);
			$.ajax({
				url:"lbjMyApplyBoard.go",
				type:"post",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				dataType:"json",
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#lbjMyApplyBoardTable').empty();
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjMyApplyBoardTable">'+
					'<tr><th class="lbjth">종류</th><th class="lbjth">카테고리</th><th class="lbjth">제목</th>'+
					'<th class="lbjth">신청일</th></tr>';
					
					console.log("myApplyBoard 리로딩 처리 시작");
					for(var i in json.myApplyBoard){
						if(json.myApplyBoard[i].agency_type == 1){
							htmlStr += '<tr><td>구합니다';
							if(json.myApplyBoard[i].trade_applicant == $('#InputId').val() && json.myApplyBoard[i].trade_reservation != $('#InputId').val()){
								htmlStr += '<font style="color:black;">(일반 지원자)</font></td>';
							}else if(json.myApplyBoard[i].trade_applicant != $('#InputId').val() && json.myApplyBoard[i].trade_reservation == $('#InputId').val()){
								htmlStr += '<font style="color:blue;">(예비 지원자)</font></td>';
							}
						}else{
							htmlStr += '<tr><td>해드립니다<font style="color:red;">(오너)</font></td>'
						}
						htmlStr += '<td>'+json.myApplyBoard[i].category_small_name+'</td>';
						htmlStr += '<td><a href="DealingState1.go?BoardNo='+json.myApplyBoard[i].agency_no+'">'+json.myApplyBoard[i].agency_title+'</a></td>';
						if(json.myApplyBoard[i].trade_applicant == $('#InputId').val() && json.myApplyBoard[i].trade_reservation != $('#InputId').val()){
							htmlStr += '<td>'+json.myApplyBoard[i].trade_date+'</td></tr>';	
						}else if(json.myApplyBoard[i].trade_applicant != $('#InputId').val() && json.myApplyBoard[i].trade_reservation == $('#InputId').val()){
							htmlStr += '<td>'+json.myApplyBoard[i].trade_reservation_date+'</td></tr>';
						}
					}
					console.log("myApplyBoard 리로딩 처리 끝");
					//페이징 처리 시작//
					console.log("myBoard 페이징 처리 시작");
					htmlStr += '<tr><td colspan="4"><div style="text-align:center;">'
					if(json.myApplyBoard[0].myApplyBoardListCount > 6){
						if(json.myApplyBoard[0].myApplyBoardCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyApplyBoardReload(1);"> << </a>&nbsp;';
						}
						if(json.myApplyBoard[0].myApplyBoardCurrentPage > json.myApplyBoard[0].myApplyBoardStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyApplyBoardReload('+(json.myApplyBoard[0].myApplyBoardCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.myApplyBoard[0].myApplyBoardStartPage;i<=json.myApplyBoard[0].myApplyBoardEndFor;i++){
							if(i == json.myApplyBoard[0].myApplyBoardCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnMyApplyBoardReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						if(json.myApplyBoard[0].myApplyBoardCurrentPage != json.myApplyBoard[0].myApplyBoardEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyApplyBoardReload('+(json.myApplyBoard[0].myApplyBoardCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.myApplyBoard[0].myApplyBoardCurrentPage >= json.myApplyBoard[0].myApplyBoardMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyApplyBoardReload('+json.myApplyBoard[0].myApplyBoardMaxPage+'); return false;">>></a>';
						}
					}else{
						htmlStr += '<font color="red" size="4"><b>1</b></font>&nbsp';
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 the end//
					$('#lbjMyApplyBoardDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
		}
		
		function fnBoardHistoryReload(page){
			console.log("fnBoardHistoryReload(page) = " + page);
			$.ajax({
				url:"lbjMyBoardHistory.go",
				type:"post",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				dataType:"json",
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#lbjMyBoardHistoryTable').empty();
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjMyBoardHistoryTable">'+
					'<tr><th class="lbjth">상태</th><th class="lbjth">분류</th><th class="lbjth">글제목</th>'+
					'<th class="lbjth">거래대상</th><th class="lbjth">지급방식: 금액</th><th class="lbjth">종료일</th></tr>';
					
					console.log("myBoardHistory 리로딩 처리 시작");
					for(var i in json.myBoardHistory){
						if(json.myBoardHistory[i].agencylog_finalstatus == 1){
							htmlStr += '<tr><td>정상완료</td>';
						}else if(json.myBoardHistory[i].agencylog_finalstatus == 2){
							htmlStr += '<tr><td>거래불발</td>';
						}else if(json.myBoardHistory[i].agencylog_finalstatus == 3){
							htmlStr += '<tr><td>대기상태로 종료</td>';
						}
						if(json.myBoardHistory[i].agency_type == 1){
							htmlStr += '<td>구합니다<font style="color:red;">(오너)</font></td>';
						}else if(json.myBoardHistory[i].agency_type == 2){
							htmlStr += '<td>해드립니다<font style="color:black;">(일반 지원자)</font></td>';
						}
						htmlStr += '<td>'+json.myBoardHistory[i].agency_title+'</td>';
						htmlStr += '<td>'+json.myBoardHistory[i].trade_applicant+'</td>';
						if(json.myBoardHistory[i].agency_paytype == 1){
							htmlStr += '<td>일급: <font style="color:red;">'+json.myBoardHistory[i].agency_pay+'</font></td>';
						}else if(json.myBoardHistory[i].agency_paytype == 2){
							htmlStr += '<td>시급: <font style="color:red;">'+json.myBoardHistory[i].agency_pay+'</font></td>';
						}
						htmlStr += '<td>'+json.myBoardHistory[i].agencylog_date+'</td></tr>';
					}
					console.log("myBoardHistory 리로딩 처리 끝");
					//페이징 처리 시작//
					console.log("myBoardHistory 페이징 처리 시작");
					htmlStr += '<tr><td colspan="6"><div style="text-align:center;">'
					if(json.myBoardHistory[0].myBoardHistoryListCount > 6){
						if(json.myBoardHistory[0].myBoardHistoryCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardHistoryReload(1);"> << </a>&nbsp;';
						}
						if(json.myBoardHistory[0].myBoardHistoryCurrentPage > json.myBoardHistory[0].myBoardHistoryStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardHistoryReload('+(json.myBoardHistory[0].myBoardHistoryCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.myBoardHistory[0].myBoardHistoryStartPage;i<=json.myBoardHistory[0].myBoardHistoryEndFor;i++){
							if(i == json.myBoardHistory[0].myBoardHistoryCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardHistoryReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						if(json.myBoardHistory[0].myBoardHistoryCurrentPage != json.myBoardHistory[0].myBoardHistoryEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardHistoryReload('+(json.myBoardHistory[0].myBoardHistoryCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.myBoardHistory[0].myBoardHistoryCurrentPage >= json.myBoardHistory[0].myBoardHistoryMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnMyBoardHistoryReload('+json.myBoardHistory[0].myBoardHistoryMaxPage+'); return false;">>></a>';
						}
					}else{
						htmlStr += '<font color="red" size="4"><b>1</b></font>&nbsp';
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 the end//
					$('#lbjMyBoardHistoryDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
		}
		
		function fnMyWriteCandidateReload(page){
			
		}
		
		//검사 결과가 모두 일치하면 true로 리턴
		var flag = false;
		//이메일 인증번호 저장용 변수
		var confirmNum = 0;
		//인증번호 확인버튼이 눌렸는지 여부 체크하는 변수
		var clickCheck = false;
		//이메일 발송 메소드
		function fnMemberGoEmail(){
			var email = $('#member_email').val();
			$.ajax({
				url:"updateEmailSending.go",
				type:"post",
				data:{
					//이메일 날리기
					member_email: email
				},
				dataType:"json",
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					if(json.confirmResult[0].message == '발송성공'){
						confirmNum = json.confirmResult[0].confirmNum;
					}
					alert(json.confirmResult[0].message);
					console.log("json.confirmResult = " + confirmNum);
					
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
		}
		//인증번호 체크하는 코드
		function fnConfirmNumCheck(){
			var certify = $('#certify').val();
			if(confirmNum == certify){
				alert("인증번호가 일치합니다.");
				clickCheck = true;
			}else{
				alert("인증번호가 일치하지 않습니다.");
				clickCheck = false;
			}
		}
		//
		function pwdValidation(){
			//비밀번호 일치 여부 
			var pass1 = $('#InputPassword1').val();
			var pass2 = $('#InputPassword2').val();
			if(pwpattern.test(pass1)==false){
				alert("비밀번호 양식에 일치하지 않습니다. 다시 입력해주세요!!");
				$('#InputPassword1').focus();
			}
			if(pass1 == pass2){
				flag = true;
				$("#pwdSame").text("비밀번호가 일치하는 번호 입니다.").css("color","green");
			}else{
				$("#pwdSame").text("비밀번호가 일치하지 않습니다. 일치하는 비밀번호를 적어주세요").css("color","red");
				$("#password1").focus();
				flag = false;
		}
		
		/* var fc=true;//파일 이름 체크 부분 전역변수(바뀌지 않았다는 말은 파일을 첨부하지 않았다는 말이 되므로 기본값은 true로 잡아두어야 함.)
		function fileTypeCheck(files){
			
		
		} */
		
		//회원정보 수정 전(submit 전)에 값 체크해서 보냄+ 정규식 적용(동기)
		function fnValidationCheck(){
		//필요 부분 정규식 추가합니다.
		//1. 마이페이지에서 수정 가능한 부분은 비밀번호 이메일 주소 전화번호 정규식이 필요한 부분은 이메일 비밀번호 2개 입니다.
		//console.log("flag = " + flag);
		//2. 파일 확장자 명을 검사하는 부분 추가합니다.
		if(flag != true){
			alert("누락된 정보가 없나 확인해보세요.");
			return false;
			}else if(fc=false){
				alert("파일 확장자가 올바르지 않습니다. 확인해주세요");
				return false;
			}else{
				return true;
			}
		}
		
		function fnMemberOut(){
			//회원 탈퇴용 함수
			var member_id = $('#InputId').val();
			var flag = confirm("정말로 탈퇴 하시겠습니까?");
			if(flag){
				$.ajax({
					url:"lbjMemberOut.go",
					type:"post",
					data:{
						member_id: member_id
					},
					success:function(data){
						alert(data);
						if(data == '회원 탈퇴 성공'){
							location.href = "home.go";
						}
					},
					error:function(a,b,c){
						alert("a = " + a + " , b = " + b + " , c = " + c);
					}
				});
			}else{
				alert("취소되었습니다.");
			}
		}
		}
		
		function fnMyBoardUpdate(no){
			location.href='wookServiceAlter.go?agency_no='+no+'&member_id=${loginUser.member_id}';
		}
		
	</script>
	<c:choose>
		<c:when test="${loginUser eq null}">
			<script type="text/javascript">
				location.href="home.go";
			</script>
		</c:when>
		<c:otherwise>
		
		<div class="container" id="lbjMyPageUp">
		<div style="width: 20%; float: left; height: 100%;">
			<%@ include file = "/WEB-INF/views/A6.LBJ/sideBar.jsp" %>
		</div>
		<div style="width: 76%; margin-left: 4%; float: left; height: 100%;">
			<h2 style="text-align:left;">마이페이지</h2>
			<hr>
			<!---------------- 전동기 수정 부분 : 나의 정보 -------------------------------------->
		 	<div>
		 	    <!-- 병준이 추가, 이상하시면 지우세요 동기형 -->
		 		<h3 class="lbjh3" id="lbjMyPage" style="">내 정보보기</h3>
		 		<!-- 벼어어어어어어어어어어주누누누누누이이이 -->
				<div class="login_form" >
				<!--   -->
				<div class="col-md-6 col-md-offset-3" style="float:none; align:center;">
					<!-- 폼시작 -->
					<form role="form" action="lbjUpdateMember.go" method="post" enctype="multipart/form-data" 
					  onsubmit="return fnValidationCheck();">
					  	<input type="hidden" name="member_regident_number" value="${loginUser.member_regident_number}">
						<div class="form-group">
							<label for="userid">프로필 사진</label>
							<div style="width : 200px; height : 200px; margin: 0 auto;">
							<img src="/goodluck/resources/uploadProfiles/${loginUser.member_renamephoto}" name ="profile_img" alt="profile_img" style="width:200px; height :200px;"/>
							</div><br>
							<input type="file" name="member_profile" class="form-control" id="InputProfile" style="width: 100%; margin: 0 auto;" accept="image/gif, image/jpeg, image/png, image/jpg" >
							<input type="hidden" name="member_profile1" value="${loginUser.member_renamephoto}">
						</div>
						<div class="form-group">
							<label for="userid">아이디</label>
							<div class="form-group">
							<input type="text" name="member_id" class="form-control" id="InputId" placeholder="아이디" 
								readonly="readonly" value="${loginUser.member_id}">
							</div>
						</div>
						<div class="form-group">
							<label for="username">이름</label> <input type="text"
								class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해 주세요" required="required" 
								readonly="readonly" value="${loginUser.member_name}">
						</div>
						<div class="form-group">
							<label for="InputPassword1">비밀번호</label> 
							<input type="password" class="form-control" 
							id="InputPassword1" name="member_pw"  placeholder="6~16자리 영문/숫자/적어도 한자리의 특수문자"
						required="required" value="${loginUser.member_pw}" onchange="pwdValidation();">
						</div>
						<div class="form-group">
							<label for="InputPassword2">비밀번호 확인</label> <input type="password"
								class="form-control" id="InputPassword2" placeholder="6~16자리 영문/숫자/적어도 한자리의 특수문자" 
								required="required" onchange="pwdValidation();">
							<p id ="pwdSame" class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
						</div>
						<div class="form-group">
							<label for="username">주민등록번호</label><br> 
							<table>
							<tr>
							<td><input type="text" class="form-control" readonly="readonly" 
							value="${fn:substring(loginUser.member_regident_number,0,6)}"></td>
							<td>-</td>
							<td><input type="text" class="form-control" readonly="readonly" 
							value="${fn:substring(loginUser.member_regident_number,6,7)}******"></td>
							</tr>	
							</table>
						</div>
						<!-- 주소 부분 수정합니다. -->
				<div class="form-group">
                     <label for="username">본래 주소</label><br> 
                     <input type="text" class="form-control" id="member_address" name="former_member_address" 
                     placeholder="주소를 입력해 주세요." required="required" value="${loginUser.member_address}" readonly="readonly" >
                  </div>
				<div class="form-group">
					<label for="username">주소</label>
					<br>
					<input type="text" class="form-control" name="postCard" id="sample4_postcode" placeholder="우편번호" style="float:left; width:250px;" readonly="readonly">
					<span class="input-group-btn">					
					<a class="btn btn-default" onclick="sample4_execDaumPostcode()" style="float:right;">
					<i class = "fa fa-search"></i> 우편번호 검색</a></span>
					<br><br>
					<input type="text" class="form-control" id="sample4_roadAddress" name="member_address1" 
					placeholder="도로명주소입니다" readonly="readonly" ><br><br>
					<input type="text" class="form-control" id="address" name="member_address2" 
					placeholder="상세주소" >
					<span id="guide" style="color:#999"></span>
				</div>
				<!-- 전화번호 영역 -->
				<div class="form-group">
							<label for="username">전화번호</label><br> 
							<input type="text" class="form-control" id="member_phone" name="member_phone" 
							placeholder="전화번호를 입력해주세요." required="required" value="${loginUser.member_phone}">
						</div>
						
						<div class="form-group">
							<label for="useremail">이메일</label>
							<div class="input-group">
							<input type="text" class="form-control" id="member_email" name="member_email" placeholder="이메일" 
							readonly="readonly" value="${loginUser.member_email}" style="width: 400px">
							</div>
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-info">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" class="btn btn-danger" value="탈퇴" onclick="fnMemberOut();">
						</div>
					</form>
					<!--폼끝 -->
					</div>
				</div>
			</div>
	<!-----------------------------------전동기 수정 부분 ------------------------------------------------->
			<hr>
			<h3 class="lbjh3" id="lbjnowreservationInfo">내가 올린 글</h3>
			<div class="lbjdiv" id="lbjMyBoardDiv">		
				<table class="table table-striped lbjtable" id="lbjMyBoardTable">
					<tr><th class="lbjth">종류</th><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">작성일</th><th class="lbjth" colspan="2">버튼</th></tr>
					<c:forEach items="${lbjMyBoard}" var="board">
						<tr>
							<td>
								<c:if test="${board.agency_type eq 1}">
									구합니다<font style="color:red;">(오너)</font>
								</c:if>
								<c:if test="${board.agency_type eq 2}">
									해드립니다(일반 지원자)
								</c:if>
							</td>
							<td>${board.category_small_name}</td>
							<td><a href="BoardDetail.go?BoardNo=${board.agency_no}">${board.agency_title}</a></td>
							<td>${board.agency_enrolldate}</td>
							<td><button class="btn btn-default" onclick="fnMyBoardUpdate(${board.agency_no});">수정</button></td>
							<td><button class="btn btn-danger" onclick="">삭제</button></td>
						</tr>
					</c:forEach>
					<!-- 페이징 처리 가즈아 -->
					<c:if test="${boardPage.myBoardListCount <= 6}">
						<tr>
							<td colspan="6">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<c:if test="${boardPage.myBoardListCount > 6}">
						<tr>
							<td colspan="6">
							<div style="text-align:center;">
								<c:if test="${qnaPage.qnaCurrentPage <= 1}">
									<< &nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage >= 2}">
									<a href="javascript:void(0);" onclick="fnMyBoardReload(1); return false;"> << </a>
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
									<a href="javascript:void(0);" onclick="fnMyBoardReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
									< &nbsp;
								</c:if>
								<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
								<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${qnaPage.endFor}" step="1">
									<c:if test="${i eq qnaPage.qnaCurrentPage}">
										<font color="red" size="4"><b>${i}</b></font>&nbsp;
									</c:if>
									<c:if test="${i != qnaPage.qnaCurrentPage}">
										<a href="javascript:void(0);" onclick="fnMyBoardReload(${i}); return false;">${i}</a>&nbsp;
									</c:if>
								</c:forEach>
								
								<c:if test="${qnaPage.qnaCurrentPage != boardPage.myBoardEndRow}">
									<a href="javascript:void(0);" onclick="fnMyBoardReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage eq boardPage.myBoardEndRow}">
									> &nbsp;
								</c:if>
								
								<c:if test="${qnaPage.qnaCurrentPage >= boardPage.myBoardMaxPage}">
									>> &nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage < boardPage.myBoardMaxPage}">
									<a href="javascript:void(0);" onclick="fnMyBoardReload(${boardPage.myBoardMaxPage}); return false;">>></a>
								</c:if>
							</div>
							</td>
						</tr>
					</c:if>
					<!-- 페이징 처리 끝내즈아 -->
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjYesCandidate">신청자가 생긴 내 글</h3>
			<div class="lbjdiv" id="lbjYesCandidateDiv">		
				<table class="table table-striped lbjtable" id="lbjYesCandidateTable">
					<tr><th class="lbjth">종류</th><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">작성일</th><th class="lbjth">신청자</th></tr>
					<c:forEach items="${lbjMyWriteCandidate}" var="writeCandidate">
						<tr>
							<td>
								<c:if test="${writeCandidate.agency_type eq 1}">
									구합니다<font style="color:red;">(오너)</font>
								</c:if>
								<c:if test="${writeCandidate.agency_type eq 2}">
									해드립니다(일반 지원자)
								</c:if>
							</td>
							<td>${writeCandidate.category_small_name}</td>
							<td><a href="DealingState1.go?BoardNo=${writeCandidate.agency_no}">${writeCandidate.agency_title}</a></td>
							<td>${writeCandidate.agency_enrolldate}</td>
							<td>
								<c:if test="${writeCandidate.trade_applicant != null && writeCandidate.trade_reservation eq null}">
									<font style="color:blue;">${writeCandidate.trade_applicant}</font>
								</c:if>
								<c:if test="${writeCandidate.trade_reservation != null && writeCandidate.trade_applicant eq null}">
									<font style="color:blue;">${writeCandidate.trade_reservation}</font>
								</c:if>							
							</td>
						</tr>
					</c:forEach>
					<!-- 페이징 처리 가즈아 -->
					<c:if test="${writeCandidatePage.myWriteCandidateListCount <= 6}">
						<tr>
							<td colspan="6">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<c:if test="${writeCandidatePage.myWriteCandidateListCount > 6}">
						<tr>
							<td colspan="6">
							<div style="text-align:center;">
								<c:if test="${qnaPage.qnaCurrentPage <= 1}">
									<< &nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage >= 2}">
									<a href="javascript:void(0);" onclick="fnMyWriteCandidateReload(1); return false;"> << </a>
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
									<a href="javascript:void(0);" onclick="fnMyWriteCandidateReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
									< &nbsp;
								</c:if>
								<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
								<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${qnaPage.endFor}" step="1">
									<c:if test="${i eq qnaPage.qnaCurrentPage}">
										<font color="red" size="4"><b>${i}</b></font>&nbsp;
									</c:if>
									<c:if test="${i != qnaPage.qnaCurrentPage}">
										<a href="javascript:void(0);" onclick="fnMyWriteCandidateReload(${i}); return false;">${i}</a>&nbsp;
									</c:if>
								</c:forEach>
								
								<c:if test="${qnaPage.qnaCurrentPage != writeCandidatePage.myWriteCandidateEndRow}">
									<a href="javascript:void(0);" onclick="fnMyWriteCandidateReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage eq writeCandidatePage.myWriteCandidateEndRow}">
									> &nbsp;
								</c:if>
								
								<c:if test="${qnaPage.qnaCurrentPage >= writeCandidatePage.myWriteCandidateMaxPage}">
									>> &nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage < writeCandidatePage.myWriteCandidateMaxPage}">
									<a href="javascript:void(0);" onclick="fnMyWriteCandidateReload(${writeCandidatePage.myWriteCandidateMaxPage}); return false;">>></a>
								</c:if>
							</div>
							</td>
						</tr>
					</c:if>
					<!-- 페이징 처리 끝내즈아 -->
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjpreservationInfo">내 신청내역</h3>
			<div class="lbjdiv" id="lbjMyApplyBoardDiv">
				<table class="table table-striped lbjtable" id="lbjMyApplyBoardTable">
					<tr><th class="lbjth">종류</th><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">신청일</th></tr>
					<c:forEach items="${lbjMyApplyBoard}" var="applyBoard">
						<tr>
							<td>
								<c:if test="${applyBoard.agency_type eq 1}">
									구합니다
									<c:if test="${applyBoard.trade_applicant eq loginUser.member_id && applyBoard.trade_reservation != loginUser.member_id}">
										<font style="color:black;">(일반 지원자)</font>
									</c:if>
									<c:if test="${applyBoard.trade_applicant != loginUser.member_id && applyBoard.trade_reservation eq loginUser.member_id}">
										<font style="color:blue;">(예비 지원자)</font>
									</c:if>
								</c:if>
								<c:if test="${applyBoard.agency_type eq 2}">
									해드립니다<font style="color:red;">(오너)</font>
								</c:if>
							</td>
							<td>${applyBoard.category_small_name}</td>
							<td><a href="DealingState1.go?BoardNo=${applyBoard.agency_no}">${applyBoard.agency_title}</a></td>
							<td>
								<c:if test="${applyBoard.trade_applicant eq loginUser.member_id && applyBoard.trade_reservation != loginUser.member_id}">
									${applyBoard.trade_date}
								</c:if>
								<c:if test="${applyBoard.trade_applicant != loginUser.member_id && applyBoard.trade_reservation eq loginUser.member_id}">
									${applyBoard.trade_reservation_date}
								</c:if>
							</td>
						</tr>
					</c:forEach>
					<!-- 페이징 처리 시작 -->
					<c:if test="${applyBoardPage.myApplyBoardListCount <= 6}">
						<tr>
							<td colspan="4">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<c:if test="${applyBoardPage.myApplyBoardListCount > 6}">
						<tr>
							<td colspan="4">
							<div style="text-align:center;">
								<c:if test="${qnaPage.qnaCurrentPage <= 1}">
									<< &nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage >= 2}">
									<a href="javascript:void(0);" onclick="fnMyApplyBoardReload(1); return false;"> << </a>
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
									<a href="javascript:void(0);" onclick="fnMyApplyBoardReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
									< &nbsp;
								</c:if>
								<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
								<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${applyBoardPage.myApplyBoardEndRow}" step="1">
									<c:if test="${i eq qnaPage.qnaCurrentPage}">
										<font color="red" size="4"><b>${i}</b></font>&nbsp;
									</c:if>
									<c:if test="${i != qnaPage.qnaCurrentPage}">
										<a href="javascript:void(0);" onclick="fnMyApplyBoardReload(${i}); return false;">${i}</a>&nbsp;
									</c:if>
								</c:forEach>
								
								<c:if test="${qnaPage.qnaCurrentPage != applyBoardPage.myApplyBoardEndRow}">
									<a href="javascript:void(0);" onclick="fnMyApplyBoardReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage eq applyBoardPage.myApplyBoardEndRow}">
									> &nbsp;
								</c:if>
								
								<c:if test="${qnaPage.qnaCurrentPage >= applyBoardPage.myApplyBoardMaxPage}">
									>> &nbsp;
								</c:if>
								<c:if test="${qnaPage.qnaCurrentPage < applyBoardPage.myApplyBoardMaxPage}">
									<a href="javascript:void(0);" onclick="fnMyApplyBoardReload(${applyBoardPage.myApplyBoardMaxPage}); return false;">>></a>
								</c:if>
							</div>
							</td>
						</tr>
					</c:if>
					<!-- 페이징 처리 끝 -->
				</table>
			</div>
			<hr>
			<!-- 새로 추가 -->
			<h3 class="lbjh3" id="lbjSiteUserHistory">내 이용 History</h3>
			<div class="lbjdiv" id="lbjMyBoardHistoryDiv">
				<table class="table table-striped lbjtable" id="lbjMyBoardHistoryTable">
					<tr><th class="lbjth">상태</th><th class="lbjth">분류</th><th class="lbjth">글제목</th><th class="lbjth">거래대상</th><th class="lbjth">지급방식: 금액</th><th class="lbjth">종료일</th></tr>
					<c:forEach items="${lbjMyBoardHistory}" var="myBoardHistory">
						<tr>
							<td>
								<c:if test="${myBoardHistory.agencylog_finalstatus eq 1}">
									정상완료
								</c:if>
								<c:if test="${myBoardHistory.agencylog_finalstatus eq 2}">
									거래불발
								</c:if>
								<c:if test="${myBoardHistory.agencylog_finalstatus eq 3}">
									대기상태로 종료
								</c:if>
							</td>
							<td>
								<c:if test="${myBoardHistory.agency_type eq 1}">
									구합니다<font style="color:red;">(오너)</font>
								</c:if>
								<c:if test="${myBoardHistory.agency_type eq 2}">
									해드립니다<font style="color:black;">(일반 지원자)</font>
								</c:if>
							</td>
							<td>${myBoardHistory.agency_title}</td>
							<td>${myBoardHistory.trade_applicant}</td>
							<td>
								<c:if test="${myBoardHistory.agency_paytype eq 1}">
									일급: <font style="color:red;">${myBoardHistory.agency_pay}</font>
								</c:if>
								<c:if test="${myBoardHistory.agency_paytype eq 2}">
									시급: <font style="color:red;">${myBoardHistory.agency_pay}</font>
								</c:if>
							</td>
							<td>${myBoardHistory.agencylog_date}</td>
						</tr>
					</c:forEach>
					<c:if test="${boardHistoryPage.myBoardHistoryListCount > 6}">
						<tr>
							<td colspan="6">
								<div style="text-align:center;">
									<c:if test="${qnaPage.qnaCurrentPage <= 1}">
										<< &nbsp;
									</c:if>
									<c:if test="${qnaPage.qnaCurrentPage >= 2}">
										<a href="javascript:void(0);" onclick="fnBoardHistoryReload(1); return false;"> << </a>
									</c:if>
									<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
										<a href="javascript:void(0);" onclick="fnBoardHistoryReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
									</c:if>
									<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
										< &nbsp;
									</c:if>
									<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
									<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${boardHistoryPage.myBoardHistoryEndRow}" step="1">	
										<c:if test="${i eq qnaPage.qnaCurrentPage}">
											<font color="red" size="4"><b>${i}</b></font>&nbsp;
										</c:if>
										<c:if test="${i != qnaPage.qnaCurrentPage}">
											<a href="javascript:void(0);" onclick="fnBoardHistoryReload(${i}); return false;">${i}</a>&nbsp;
										</c:if>
									</c:forEach>
									
									<c:if test="${qnaPage.qnaCurrentPage != boardHistoryPage.myBoardHistoryEndRow}">
										<a href="javascript:void(0);" onclick="fnBoardHistoryReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
									</c:if>
									<c:if test="${qnaPage.qnaCurrentPage eq boardHistoryPage.myBoardHistoryEndRow}">
										> &nbsp;
									</c:if>
									
									<c:if test="${qnaPage.qnaCurrentPage >= boardHistoryPage.myBoardHistoryMaxPage}">
										>> &nbsp;
									</c:if>
									<c:if test="${qnaPage.qnaCurrentPage < boardHistoryPage.myBoardHistoryMaxPage}">
										<a href="javascript:void(0);" onclick="fnBoardHistoryReload(${boardHistoryPage.myBoardHistoryMaxPage}); return false;">>></a>
									</c:if>
								</div>
							</td>
						</tr>
					</c:if>
					<c:if test="${boardHistoryPage.myBoardHistoryListCount <= 6}">
						<tr>
							<td colspan="6"><font color="red" size="4"><b>1</b></font>&nbsp;</td>
						</tr>
					</c:if>
					<!-- 컬럼6개 -->
					<!-- <tr><td>매칭완료</td><td>강아지 출장미용 합니다 연락주세요</td><td>2018/04/12</td></tr>
					<tr><td>거절</td><td>인테리어 합니다</td><td>2018/05/15</td></tr> -->
				</table>
			</div>
			<!-- 새로 추가  끝 -->
			<hr>
			<h3 class="lbjh3" id="lbjQnA">나의 QnA</h3>
			<div class="lbjdiv" id="lbjqnaDiv">
				<table class="table table-striped lbjtable" id="lbjQnaTable">
					<tr>
						<td class="lbjth">
							<input type="checkbox" id="allCheckBox1">전체선택
						</td>
						<td class="lbjth" colspan="3" style="text-align:left;">
							<a href="javascript:void(0);" class="btn btn-danger btn-xs" onclick="fnDeleteQna(); return false;"><span class="glyphicon glyphicon-remove"></span>삭제</a>
						</td>
						<td class="lbjth" style="text-align:right;">
							<a class='btn btn-info btn-xs' href="lbjqnawrite.go"><span class="glyphicon glyphicon-edit"></span>1:1 상담하기 > </a>
						</td>
					</tr>
					<tr>
						<th class="lbjth">선택</th>
						<th class="lbjth">분야</th>
						<th class="lbjth">제목</th>
						<th class="lbjth">처리상황</th>
						<th class="lbjth">등록일시</th>
					</tr>
					<c:forEach var="qna" items="${lbjMyQna}" varStatus="status">
						<tr>
							<td>
								<c:if test="${qna.question_answer_state == '답변완료'}">
									<input type="checkbox" name="chk1" id="chkBox${status.count}" value="${qna.question_no}">
								</c:if>
								<c:if test="${qna.question_answer_state != '답변완료'}">
									X
								</c:if>
							</td>
							<td>${qna.question_category}</td>
							<td><a href="lbjqnadetail.go?question_writer=${qna.question_writer}&question_no=${qna.question_no}">${qna.question_title}</a></td>
							<td>${qna.question_answer_state}</td>
							<td>${qna.question_date}</td>
						</tr>
					</c:forEach>
					<!-- QnA 페이징 처리를 해봅시다. -->
					<c:if test="${qnaPage.qnaListCount > 6}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${qnaPage.qnaCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnQnaReload(1); return false;"> << </a>
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${qnaPage.qnaEndRow}" step="1">
								<c:if test="${i eq qnaPage.qnaCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != qnaPage.qnaCurrentPage}">
									<a href="javascript:void(0);" onclick="fnQnaReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${qnaPage.qnaCurrentPage != qnaPage.qnaEndRow}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage eq qnaPage.qnaEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${qnaPage.qnaCurrentPage >= qnaPage.qnaMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage < qnaPage.qnaMaxPage}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaMaxPage}); return false;">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${qnaPage.qnaListCount <= 6}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- QnA 페이징 처리 End -->
					<!-- 페이징 처리 -->
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjmyReport">내가 쓴 신고글 보기</h3>
			<div class="lbjdiv" id="lbjReportDiv">
				<table class="table table-striped lbjtable" id="lbjReportTable">
					<tr>
						<th colspan="4" class="lbjth" style="text-align:right;">
							<a class='btn btn-info btn-xs' href="lbjGoReportWrite.go"><span class="glyphicon glyphicon-edit"></span>작성하기</a>
						</th>
					</tr>
					<tr><th class="lbjth">글번호</th><th class="lbjth">제목</th><th class="lbjth">카테고리</th><th class="lbjth">작성일</th></tr>
					<c:forEach var="report" items="${lbjMyReport}">
					<tr>
						<td>${report.report_no}</td>
						<td><a href="javascript:location.href='lbjGoReportDetail.go?report_no=${report.report_no}'">${report.report_title}</a></td>
						<td>
							<c:if test="${report.report_category eq 1}">
								불량이용객 신고
							</c:if>
							<c:if test="${report.report_category eq 2}">
								게시물 신고
							</c:if>
						</td>
						<td>${report.report_date}</td>
					</tr>
					</c:forEach>
					<!-- Report 페이징 처리를 해봅시다. -->
					<c:if test="${reportPage.reportListCount > 6}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${qnaPage.qnaCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnReportReload(1); return false;"> << </a>
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
								<a href="javascript:void(0);" onclick="fnReportReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${reportPage.reportEndRow}" step="1">
								<c:if test="${i eq qnaPage.qnaCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != qnaPage.qnaCurrentPage}">
									<a href="javascript:void(0);" onclick="fnReportReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${qnaPage.qnaCurrentPage != reportPage.reportEndRow}">
								<a href="javascript:void(0);" onclick="fnReportReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage eq reportPage.reportEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${qnaPage.qnaCurrentPage >= reportPage.reportMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage < reportPage.reportMaxPage}">
								<a href="javascript:void(0);" onclick="fnReportReload(${reportPage.reportMaxPage}); return false;">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${reportPage.reportListCount <= 6}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- Report 페이징 처리 End -->
					<!-- 페이징 처리 -->
					</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjmyItem">내가 사용한 아이템 내역 보기</h3>
			<div class="lbjdiv" id="lbjitemDiv">
				<table class="table table-striped lbjtable" id="lbjItemTable">
					<tr><th class="lbjth">아이템명</th><th class="lbjth">구매일</th><th class="lbjth">시작일</th><th class="lbjth">종료일</th><th class="lbjth">이용횟수</th></tr>
					<c:forEach var="item" items="${lbjMyItem}" varStatus="status">
						<tr>
							<td>${item.itemname}</td>
							<td>${item.buy_date}</td>
							<td>${item.start_date}</td>
							<td>${item.end_date}</td>
							<td>${item.final_status}</td>
						</tr>
					</c:forEach>
					<!-- <tr><td>글씨크기늘리기</td><td>2017/11/10</td><td>2017/12/31</td><td>2018/03/02</td><td>2</td></tr>
					<tr><td>배경색주기</td><td>2017/03/09</td><td>2017/03/11</td><td>2018/06/11</td><td>3</td></tr>
					<tr><td>폰트바꾸기</td><td>2017/02/10</td><td>2017/04/01</td><td>2018/06/30</td><td>1</td></tr>
				 -->
				 <!-- item 페이징 처리 -->
				<c:if test="${itemPage.itemListCount > 6}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${qnaPage.qnaCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnItemReload(1);"> << </a>
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
								<a href="javascript:void(0);" onclick="fnItemReload(${qnaPage.qnaCurrentPage-1});"> < </a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${itemPage.itemEndRow}" step="1">
								<c:if test="${i eq qnaPage.qnaCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != qnaPage.qnaCurrentPage}">
									<a href="javascript:void(0);" onclick="fnItemReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${qnaPage.qnaCurrentPage != itemPage.itemEndRow}">
								<a href="javascript:void(0);" onclick="fnItemReload(${qnaPage.qnaCurrentPage+1});">></a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage eq itemPage.itemEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${qnaPage.qnaCurrentPage >= itemPage.itemMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage < itemPage.itemMaxPage}">
								<a href="javascript:void(0);" onclick="fnItemReload(${itemPage.itemMaxPage});">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${itemPage.itemListCount <= 6}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- item 페이징 처리 End -->
				 </table>
			</div>
		</div>
	</div>
	<%-- <%@ include file = "/WEB-INF/views/A6.LBJ/login.jsp" %> --%>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
		</c:otherwise>
	</c:choose>
	
</body>
</html>