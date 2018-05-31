<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>회원 가입 창</title>
<!-- 전동기 부트스트랩 영역입니다. -->
<!-- 제이쿼리 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 링크 -->
<style type="text/css" src="/goodluck/resources/common/css/bootstrap.min.css"></style>
<!-- 부트스트랩 스크립트 -->
<script type="text/javascript" src="/goodluck/resources/common/js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="resources/common/js/bootstrap.min.js"></script>   
<!-- 전동기 부트스트랩 영역입니다. -->

<!-- 개별 페이지 스타일 영역입니다. -->
<style type="text/css">

</style>
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

<!-- 자바스크립트 영역입니다. -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
///////////////////////////////////////////////////////////////////////////
var submition = false; //->true로 바뀔 시 form 전송
var emailConfirmed = false;//->이메일 인증 받으면 true
var idConfirmed = false;// -> 아이디 인증을 받아야 true
var termsConfirmed= false// -> 약관 동의 했을 때 true
///////////////////////////////////////////////////////////////////////////

/* 비밀번호 확인 창 */
function pwdchecking(){	
	if($("#password1").val()=="" && $("#password2").val()==""){
		$("#pwdSame").text("비밀번호 확인을 위해 다시한번 입력 해 주세요").css("color","#737373");
		submition=false;
	}else if($("#password1").val()!=$("#password2").val()){
 		$("#pwdSame").text("비밀번호가 일치하지 않습니다. 다시 작성해주세요!").css("color","red");
 		submition=false;
 	}else{
 		$("#pwdSame").text("비밀번호가 일치하는 번호 입니다.").css("color","green");
 		submition = false;
 	}
 }
 
function idConfirmation(){
	$.ajax({
		url: "jdkIdConfirmation.go",
		data: {id: $('#member_id').val()},
		type:"POST",
		success:
			function(result){
			if(result=='true'){
			idConfirmed=true;
			alert("사용하실 수 있는 아이디 입니다");
			}else if(result='false'){
			idConfirmed=false;
			alert("사용하실 수 없는 아이디 입니다. 다른 아이디를 사용해 주세요");
			}
		},
		error: function(){
			alert("아이디 인증 실패!!");
		}		
	});
}
//이메일 인증 하는 ajax
var emailReg="";

 function emailConfirmation(){
	if($("#member_email").val()== ""){
		alert("이메일을 입력해주세요!!");
		$("#member_email").focus();
	} else {
	 $.ajax({
		url: "emailConfirm.go",
		data: {member_email: $('#member_email').val()},
		type:"POST",
		success:
			function(data){
			alert("이메일이 발송 되었습니다. 하단 인증번호 인증을 해주세요!!");
			emailReg=data;
		},
		error: function(){
			alert("이메일 ajax 에러");
		}	
	
	});
	}
} 

 function emailNumCheck(){
	if(emailReg==$("#certify").val()){
		emailConfirmed = true;
		alert("인증 번호가 확인 되었습니다.");
	}else{
		alert("인증번호가 맞지 않습니다. 다시 확인해 주세요!!"+emailConfirmed);
		$("#member_email").focus();
		emailConfirmed = false;
	}
 }
 
 
////////////////////////////////////////////////////////////////////////////////////////////
/* 정규식 적용 */
/* 회원가입 버튼을 눌렀을 때 발생하는 메소드(정규식 포함)*/
// 현재 정규식이 필요한 항목은 다음과 같다.
// 아이디, 패스워드, 이메일, 전화 번호, 주민등록번호
// 그리고 3가지 조건이 추가로 필요하다
// 1. 비밀번호 확인 부분이 다를 경우 false
// 2. 아이디를 중복 검사하지 않았을 경우 false
// 3. 이메일 인증을 받고 인증코드를 작성하지 않았을 경우 false
// 4. 정규식 항목 통과하지 못했을 경우 false


function signIn(){
//정규식 목록
//1.아이디 정규식 : 4 ~ 20 자리 영(대, 소), 숫자 / 첫글자는 숫자 사용 불가
var idpattern = /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/;
// 2. 비밀번호 정규식 : 6~16자리 영문/숫자/특수문자 포함
var pwpattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}/;
// 3. 이메일 정규식 : @ 포함하지 않으면 에러
var emailpattern = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/
var ssidnum1pattern = ;
var ssidnum2pattern;


	
	
	return submition;
}
</script>

</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<div class="container" >
		<div class="login_form" >
			<h3 style="text-align : center;">회원가입</h3>
		<div class="col-md-6 col-md-offset-3">
<!-- 회원가입 폼 시작 -->
			<form role="form" enctype="multipart/form-data" method="post" action="return signIn();">
				<div class="form-group">
					<label for="userid">프로필 사진</label>
					<div style="width : 130px; height : auto; margin: 0 auto;">
					<img src="/goodluck/resources/A3.JDK/images/base_profile.png" name ="profile_img" style="width : 130px; height : auto;">
					</div>
					<br>
					<input type="file" name="member_profile" class="form-control" id="inputProfile" style="width: 300px; margin: 0 auto;">
				</div>
				
				<div class="form-group">
					<label for="userid">아이디</label>
					<div class="input-group">
					<!-- 아이디 -->
					<input type="text" id="member_id" name="member_id" class="form-control" placeholder="4 ~ 20 자리 영(대, 소), 숫자 / 첫글자는 숫자 사용 불가" required="required">
					<span class="input-group-btn"><a href="javascript: idConfirmation();" class="btn btn-default" style="">
					<i class = "fa fa-search"></i> 중복검사</a></span>
					</div>
				</div>
				
				<div class="form-group">
					<label for="username">이름</label> 
					<input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해 주세요" required="required">
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> 
					<input type="password" class="form-control" id="password1" name="member_pw"  placeholder="6~16자리 영문,숫자,특수문자 포함" required="required" onchange="pwdchecking()">				</div>
				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label> 
					<input type="password" class="form-control" id="password2" placeholder="비밀번호를 다시 입력해주세요" required="required" onchange="pwdchecking()">
					<p id="pwdSame" class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
				</div>
				<div class="form-group">
					<label for="username">주민등록번호</label><br> 
					<table>
					<tr>
					<td><input type="number" class="form-control" required="required" placeholder="주민등록번호 앞 6자리"></td>
					<td>-</td>
					<td><input type="number" class="form-control" required="required" style="width: 35px; float:left;" maxlength="1">●●●●●●</td>
					</tr>	
					</table>
				</div>

				<!-- 주소 입력 관련 코드들 -->
				<div class="form-group">
					<label for="username">주소</label>
					<br>
					<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호" style="float:left; width:400px;" disabled>
					<span class="input-group-btn">					
					<a class="btn btn-default" onclick="sample4_execDaumPostcode()" style="float:right;">
					<i class = "fa fa-search"></i> 우편번호 검색</a></span>
					<br><br>
					
					<input type="text" class="form-control" id="sample4_roadAddress" name="address" placeholder="도로명주소" disabled><br><br>
					<input type="text" class="form-control" id="address" placeholder="상세주소" >
					<span id="guide" style="color:#999"></span>
				</div>
				<!-- 주소 입력 관련 코드 종료 -->
				<div class="form-group">
					<label for="username">전화번호</label><br> 
					<input type="text" class="form-control" id="member_phone" name="member_phone" placeholder="전화번호를 입력해주세요." required="required">
				</div>
				<div class="form-group">
					<label for="useremail">이메일</label>
					<div class="input-group">
						<input type="email" class="form-control" id="member_email" name ="member_email"  placeholder="이메일을 입력해주세요 ex)example@example.com" required="required">
						<!--email 인증 요청--> 
						<span class="input-group-btn"><a href="javascript: emailConfirmation();" class="btn btn-default"><i class="fa fa-envelope"></i>인증요청</a></span>
					</div>
				</div>
				<div class="form-group">
					<label for="username">인증번호 입력</label>
					<div class="input-group">
					<!-- 인증번호 보관 값 -->
					<input type="text" class="form-control" id="certify" placeholder="인증번호" required="required">
					<!-- 인증번호 요청시 번호 입력확인 -->
					<span class="input-group-btn"><a href="javascript:emailNumCheck();" class="btn btn-default"><i class="fa fa-envelope"></i>인증번호 입력</a></span>
					</div>
				</div>
				<div class="form-group text-center">
					<div class="input-group">
						 <input id="agree" type="checkbox" autocomplete="on"> 
						<a href="location.href=''" data-toggle="modal" data-target="#termsOfService">이용약관</a> 에 동의 합니다.
					</div>
				</div>
					<br><br>	
				<div class="form-group text-center">
					<button type="submit" class="btn btn-default">회원가입</button>
					<button type="button" class="btn btn-default">가입취소</button>
				</div>
			</form>
<!-- 회원가입 폼 종료 -->
				</div>
			</div>
		</div>

<!-- 회원약관 모달창 인클루드 -->
<%@ include file="/WEB-INF/views/A3.JDK/termsOfService.jsp" %>
<!-- 회원약관 모달창 인클루드 -->
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>