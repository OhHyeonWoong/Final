<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BoardContent</title>
<!-- js따로 떼야댐 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/goodluck/resources/A4.BSH/BSH.js"></script>	
	
<script type="text/javascript">
/* 여기에 스크립트 입력 */
	

</script>

<link href="/goodluck/resources/A4.BSH/BSH.css" rel="stylesheet">

<style type="text/css">
/* 여기에  스타일 입력 */	

</style>

</head>
<body>
	<div class="container">
		<div class="bsh_sidebar">
			<!-- 카테고리 -->
			<!-- sidebar -->
			<br>
			<ul>
			<c:forEach var="str" items="${strlist }">	
				<c:forEach var="bigcategory" items="${bigcategorylist }">
					<c:set var="category" value="${bigcategory.category_big_name }"/>
					<c:choose>
						<c:when test="${category eq str }">
							<li class="bgcate" id="id${str }"><a href="bshtest.go?link2_no=${str }&page=1">${str }</a>
								<input class="cbtndropdown" type="image" src="/goodluck/resources/A4.BSH/btndropdown.png" style="height:10px; float: right;margin: 8px;border: 1px solid #6799FF; border-radius: 2px;">
							</li>
						</c:when>
						<c:otherwise>
						
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:forEach var="midcategory" items="${midcategorylist }">
					<c:set var="category" value="${midcategory.category_mid_name }"/>
					<c:choose>
						<c:when test="${category eq str }">
							<li class="mdcate" id="id${str }"><a href="bshtest.go?link2_no=${str }&page=1">${str }</a></li>
						</c:when>
						<c:otherwise>
							
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:forEach var="smallcategory" items="${smallcategorylist }">
					<c:set var="category" value="${smallcategory.category_small_name }"/>
					<c:choose>
						<c:when test="${category eq str }">
							<li class="smcate" id="id${str }" ><a href="bshtest.go?link2_no=${str }&page=1">${str }</a></li>
						</c:when>
						<c:otherwise>
							
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:forEach>
			</ul>
			
			
		</div>

		<div class="bsh_center">
			<input type="hidden" id="catename" value="link2name"> 
			<input type="hidden" id="catetype" value="link2type"> 
			<input type="hidden" id="listcount" value="agencycount"> 
			<input type="hidden" id="pagenum" value="pageNum"> 
			<!-- 컨테이너 -->
			<div class="board_div_prime">
				<h2>프리미엄 글 입니다</h2><br>
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
					<button>&lt;</button> 
						1 2 3 4 5 6 7 8 9 0
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
							<td class="td_mid">
								<select id="bcate" name="bcate">
										<option value="" selected="selected">선택하세요</option>
									<c:forEach var="bigcategory" items="${bigcategorylist }">
										<option value="${bigcategory.category_big_name}">${bigcategory.category_big_name}</option>
									</c:forEach>
								</select>
							</td>
							<td class="td_mid">
								<select id="mcate" name="mcate">
									<option value="" selected="selected">선택하세요</option>
								</select>
							</td>
							<td class="td_end">
								<select id="scate" name="scate">
									<option value="" selected="selected">선택하세요</option>
								</select>
							</td>
							<td class="td_start"><label>지역별 검색</label></td>
							<td class="td_end">
								<select id="loc" name="loc">
									<option value="" selected="selected">지역</option>
								</select>
							</td>
							<td class="td_start"><label>글상태</label></td>
							<td class="td_end">
								<select id="state" name="state">
									<option value="정상" selected="selected">정상</option>
									<option value="예약가능">예약가능</option>
									<option value="예약불가">예약불가</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="td_start"><label class="checkbox_comm"><input type="checkbox" id="group1-1" name="group1" value="시급">시급</label></td>
							<td class="td_end"><label class="checkbox_comm"><input type="checkbox" id="group1-2" name="group1" value="일급">일급</label></td>
							<td class="td_start"><label class="checkbox_comm"><input type="checkbox" id="group2-1" name="group2" value="금액낮은순">금액낮은순</label></td>
							<td class="td_end"><label class="checkbox_comm"><input type="checkbox" id="group2-2" name="group2" value="금액높은순">금액높은순</label></td>
							<td class="td_start"><label>최소금액</label></td>
							<td class="td_end"><input id="min" type="text" class="textbox_comm" value="" placeholder="최소금액"></td>
							<td class="td_start"><label>최대금액</label></td>
							<td class="td_end"><input id="max" type="text" class="textbox_comm" value="" placeholder="최대금액"></td>
						</tr>
						<tr>
							<td class="td_start"><label class="checkbox_comm"><input type="checkbox" id="group3-1" name="group3" value="등록날짜순" checked="checked">등록날짜순</label>
							</td>
							<td class="td_end"><label class="checkbox_comm"><input type="checkbox" id="group3-2" name="group3" value="시작날짜순">시작날짜순</label></td>
							<td class="td_start"><label class="checkbox_comm"><input type="checkbox" id="group4-1" name="group4" value="제공">제공</label></td>
							<td class="td_end"><label class="checkbox_comm"><input type="checkbox" id="group4-2" name="group4" value="구인">구인</label></td>
							<td class="td_start"><label>검색단어</label></td>
							<td class="td_mid" colspan="2"><input type="text" id="searchtext" class="textbox_comm" placeholder="검색단어"></td>
							<td class="td_end">
								<input type="hidden" id="page" name="page" value="1">
								<input id="bshsearch" type="button" value="Search">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<script type="text/javascript">
			$(document).ready(function() {
				function boardsearch(){
					var searchstr = "?대카테고리="+$("#대카테고리").val()+"&중카테고리="+$("#중카테고리").val()
							+"&소카테고리="+$("#소카테고리").val()+"&지역="+$("#지역").val()+"&글상태="+$("#글상태").val()
							+"&group1="+$("#group1").val()+"&group2="+$("#group2").val()+"&group3="+$("#group3").val()
							+"&group4="+$("#group4").val()+"&최소금액="+$("#최소금액").val()+"&최대금액="+$("#최대금액").val()
							+"&검색단어="+$("#검색단어").val();
					location.href("bshsearch.go"+searchstr);  
				}
			})
			</script>
			<div class="board_div_maincontent">
				<%-- <h2>${board.link2_no }</h2><br>
				
				<table style="border: 1px solid black; width: 100%;">
					<thead style="border: 1px solid black;">
						<tr>
							<th style="border: 1px solid black; width: 5%;">종류</th>
							<th style="border: 1px solid black; width: 45%;">제목</th>
							<th style="border: 1px solid black; width: 5%;">지역</th>
							<th style="border: 1px solid black; width: 5%;">구분</th>
							<th style="border: 1px solid black; width: 10%;">금액</th>
							<th style="border: 1px solid black; width: 10%;">등록날짜</th>
							<th style="border: 1px solid black; width: 10%;">시작날짜</th>
							<th style="border: 1px solid black; width: 10%;">상태</th>
						</tr>

					</thead>
					<tbody>						
						<c:forEach var="board" items="${boardlist }">
							<tr>
							<td>
							<c:set var="tf" value="${board.agency_type }"/>
							<c:if test="${tf eq '1' }">
								구인
							</c:if>
							<c:if test="${tf eq '2' }">
								제공
							</c:if>
							</td>
							<td>
							<a href="BoardDetail.go?BoardNo=${board.agency_no }">${board.agency_title }</a>
							</td>
							<td>
							${board.agency_loc }
							</td>
							<td>
							<c:set var="tf" value="${board.agency_paytype }"/>
							<c:if test="${tf eq '1' }">
								일급
							</c:if>
							<c:if test="${tf eq '2' }">
								시급
							</c:if>
							${board.agency_paytype }
							</td>
							<td>
							${board.agency_pay }
							</td>
							<td>
							${board.agency_startdate }
							</td>
							<td>
							${board.agency_enrolldate }
							</td>
							<td>
							<c:set var="tf" value="${board.agency_paytype }"/>
							<c:if test="${tf eq '1' }">
								정상
							</c:if>
							<c:if test="${tf eq '2' }">
								예약가능
							</c:if>
							<c:if test="${tf eq '3' }">
								예약불가
							</c:if>
							<c:if test="${tf eq '4' }">
								숨김
							</c:if>
							${board.agency_status }
							</td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<span class="bsh_span_button">
					<button onclick="location.href='bshtest.go?link2_no=${board.link2_no }&page=1'">&lt;&lt;</button>
					<c:set var="currentpage" value="${pageNum }"/>
					<c:if test="${currentpage eq '1'}">
						<button>&lt;</button>
					</c:if>
					
					<c:if test="${currentpage != '1'}">
						<button onclick="location.href='bshtest.go?link2_no=${board.link2_no }&page=${currentpage-1 }'">&lt;</button>
					</c:if>
					
					<c:if test="${currentpage <=5}">
						<c:forEach var="count" begin="1" end="9" step="1">	
						
							<c:if test="${count eq currentpage}">
								<c:if test="${count <= agencycount}">
									&nbsp;<a style="color: red;" href="bshtest.go?link2_no=${board.link2_no }&page=${count }">${count }</a>&nbsp;	
								</c:if>	
							</c:if>	
									
							<c:if test="${count != currentpage}">
								<c:if test="${count <= agencycount}">
									&nbsp;<a href="bshtest.go?link2_no=${board.link2_no }&page=${count }">${count }</a>&nbsp;	
								</c:if>	
							</c:if>	
											
						</c:forEach>	
					</c:if>
					
					<c:if test="${currentpage >5}">
						<c:forEach var="count" begin="${currentpage-4}" end="${currentpage+4}" step="1">		
							
							<c:if test="${count eq currentpage}">
								<c:if test="${count <= agencycount}">
									&nbsp;<a style="color: red;" href="bshtest.go?link2_no=${board.link2_no }&page=${count }">${count }</a>&nbsp;	
								</c:if>	
							</c:if>
							
							<c:if test="${count != currentpage}">
								<c:if test="${count <= agencycount}">
									&nbsp;<a href="bshtest.go?link2_no=${board.link2_no }&page=${count }">${count }</a>&nbsp;	
								</c:if>	
							</c:if>
													
						</c:forEach>
					</c:if>
						
					<c:if test="${currentpage eq agencycount}">
						<button>&gt;</button>
					</c:if>
					
					<c:if test="${currentpage != agencycount}">
						<button onclick="location.href='bshtest.go?link2_no=${board.link2_no }&page=${currentpage+1 }'">&gt;</button>
					</c:if>
					
					<button onclick="location.href='bshtest.go?link2_no=${board.link2_no }&page=${agencycount }'">&gt;&gt;</button>
				</span> --%>
			</div>
	
		</div>
	</div>

</body>
</html>