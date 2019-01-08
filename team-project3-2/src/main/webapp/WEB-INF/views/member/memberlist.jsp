<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>고객 관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/signin.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">

<style type="text/css">
.error { color: red; }
.overlay {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
	z-index: 1;
}

.span3 .overlay2 {
	transition: .5s ease;
	position: absolute;
	opacity: 0;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}

.span3:hover .overlay {
	opacity: 1;
}

.span3:hover .widget-content {
	background-color: #BDBDBD;
	opacity: 0.7;
}

.span3 .text {
	color: black;
	font-size: 40px;
	padding: 16px 32px;
}
</style>

</head>
<body>

<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="memberlist" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="top: 30%; z-index: -100;">
  <div class="modal-dialog">
  <div class="modal-content">
  <div class="modal-header" style="background-color: #00ba8b;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title" style="color: white;">회원 등록</h3>
  </div>
    <div class="content clearfix">
		
		<form id="membersignupform" enctype="multipart/form-data">			
			<input type="hidden" name="centerNo" value="${ loginuser.centerNo }">
			<div class="form-horizontal">
			
			<img src="/team-project3/resources/assets/img/user.png"/>
						
				<p>Create your free account:</p>
				<div class="control-group">
					<label class="control-label" for="file">첨부파일</label>
					<div class="controls">
						<input type="file" name="attach"/>
					</div>
				</div>
				
				<fieldset>
				<div class="control-group">											
					<label class="control-label" for="memName">*회원명</label>
					<div class="controls">
						<input type="text" name="memName" id="memName" placeholder="이름 입력"/>
						
						<label class="radio inline">
                            <input type="radio" name="memGender" value="남" checked="checked"/> 남성
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memGender" value="여"/> 여성
                       </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memPhone">*휴대전화번호</label>
					<div class="controls">
						<input type="text" id="phone1" class="span1 m-wrap"/>
						<input type="text" id="phone2" class="span1 m-wrap"/>
						<input type="text" id="phone3" class="span1 m-wrap"/>
						<label class="checkbox inline">
                           <input type="checkbox" checked="checked"> SNS 수신 동의
                        </label>
                        <input type="hidden" name="memPhone" id="memPhone"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memRoute">*유입 상태</label>
					<div class="controls">
						<label class="radio inline">
                            <input type="radio" name="memRoute" value="방문" checked="checked"/> 방문
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memRoute" value="전화"/> 전화
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memRoute" value="온라인"/> 온라인
                       </label>
                       
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memVisitDate">*방문일</label>
					<div class="controls">
						<input type="date" name="memVisitDate" id="memVisitDate"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<hr>
				
				<div class="control-group">											
					<label class="control-label" for="memBrith">생년월일</label>
					<div class="controls">
						<input type="date" name="memBrith" id="memBrith"/>
						<input type="text" name="age" id="age" class="span1 m-wrap" placeholder="나이">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memAddress">주소</label>
					<div class="controls">
						<input type="text" id="sample6_postcode" class="span2 m-wrap" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" class="btn" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" class="span3 m-wrap" placeholder="주소"><br>
						<input type="text" id="sample6_detailAddress" class="span2 m-wrap" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" class="span2 m-wrap" placeholder="참고항목">
						
						<!-- <input type="text" id="address1" class="span3 m-wrap" placeholder="주소를 입력하세요">
						<input type="text" id="address2" class="span3 m-wrap" placeholder="상세주소 입력"> -->
						<input type="hidden" name="memAddress" id="memAddress"/>
						
						<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
						<script>
						    function sample6_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var addr = ''; // 주소 변수
						                var extraAddr = ''; // 참고항목 변수
						
						                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						                    addr = data.roadAddress;
						                } else { // 사용자가 지번 주소를 선택했을 경우(J)
						                    addr = data.jibunAddress;
						                }
						
						                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						                if(data.userSelectedType === 'R'){
						                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    // 건물명이 있고, 공동주택일 경우 추가한다.
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                    if(extraAddr !== ''){
						                        extraAddr = ' (' + extraAddr + ')';
						                    }
						                    // 조합된 참고항목을 해당 필드에 넣는다.
						                    document.getElementById("sample6_extraAddress").value = extraAddr;
						                
						                } else {
						                    document.getElementById("sample6_extraAddress").value = '';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample6_postcode').value = data.zonecode;
						                document.getElementById("sample6_address").value = addr;
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById("sample6_detailAddress").focus();
						                
						                document.getElementById("memAddress").value = data.zonecode+" "+addr+','+extraAddr;
						            }
						        }).open();
						    }
						</script>
						
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			
				<div class="control-group">											
					<label class="control-label" for="memEmail">이메일</label>
					<div class="controls">
						<input type="text" name="memEmail" id="memEmail" value="" class="span3 m-wrap">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			</fieldset>
			</div>
			
		</form>		
		
		<div class="modal-footer form-actions">
				
				<button class="btn btn-default" data-dismiss="modal">닫기</button>
				<button id="signup" class="btn btn-primary" data-dismiss="modal">잠재고객 등록</button>
				<button id="signupsell" class="btn btn-default" data-dismiss="modal">등록후 상품 판매</button>
				
			</div> <!-- .actions -->
	</div> <!-- /content -->
	</div>
	</div>
  </div>
  <!-- end Modal -->


<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        
        <div class="span12">
                  
                  <div class="widget-content">
						
					<div class="tabbable">
						<ul class="nav nav-tabs">
						  <li><a href="#allmembers" data-toggle="tab">전체 회원(${ countno })</a></li>
						  <li><a href="#nopaymembers" data-toggle="tab">미결제 회원(${ countno2 })</a></li>
						  <li class="active"><a href="#uesmembers" data-toggle="tab">이용 회원(${ countno3 })</a></li>
						  <li><a href="#finishmembers" data-toggle="tab">만료 회원(${ countno4 })</a></li>
						  <li><a href="#finish3days" data-toggle="tab">만료 3일전(${ countno5 })</a></li>
						  <li><a href="#finish7days" data-toggle="tab">만료 7일전(${ countno6 })</a></li>
						  <li><a href="#refundmembers" data-toggle="tab">환불()</a></li>
						  <li><a href="#stopmembers" data-toggle="tab">중지 회원()</a></li>
						</ul>
						
						<br>
						
							<div class="tab-content">
								<div class="tab-pane" id="allmembers">		
								<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member" items="${ members }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member.memName }</h4>
													    <p> ${ member.age }세/ ${ member.memGender } / ${ member.memPhone}</p>
													    <p>등록일 : ${ member.memVisitDate }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member.memVisitDate }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }allmembers">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="nopaymembers">
									<form id="edit-profile2" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword2">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount2" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno2 }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck2"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete2" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member2" items="${ members2 }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member2.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member2.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member2.memName }</h4>
													    <p> ${ member2.age }세/ ${ member2.memGender } / ${ member2.memPhone}</p>
													    <p>등록일 : ${ member2.memVisitDate }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member2.memVisitDate }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member2.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member2.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member2.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member2.memberNo }nopaymembers">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane active" id="uesmembers">
									<form id="edit-profile3" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword3">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount3" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno3 }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck3"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete3" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member3" items="${ members3 }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member3.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member3.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member3.memName }</h4>
													    <p> ${ member3.age }세/ ${ member3.memGender } / ${ member3.memPhone}</p>
													    <p>등록일 : ${ member3.memVisitDate }</p>
													    <p>상품   : ${ member3.purchaseVo.purName }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member3.purchaseVo.purDatefrom }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member3.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member3.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member3.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member3.memberNo }uesmembers">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="finishmembers">
									<form id="edit-profile4" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword4">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount4" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno4 }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck4"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete4" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member4" items="${ members4 }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member4.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member4.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member4.memName }</h4>
													    <p> ${ member4.age }세/ ${ member4.memGender } / ${ member4.memPhone}</p>
													    <p>등록일 : ${ member4.memVisitDate }</p>	
											      		<p>상품   : ${ member4.purchaseVo.purName }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member4.purchaseVo.purDatefrom }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member4.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member4.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member4.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member4.memberNo }finishmembers">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="finish3days">
									<form id="edit-profile5" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword5">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount5" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno5 }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck5"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete5" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member5" items="${ members5 }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member5.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member5.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member5.memName }</h4>
													    <p> ${ member5.age }세/ ${ member5.memGender } / ${ member5.memPhone}</p>
													    <p>상품   : ${ member5.purchaseVo.purName }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member5.purchaseVo.purDatefrom }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member5.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member5.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member5.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member5.memberNo }finish3days">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="finish7days">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword6">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount6" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno6 }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck6"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete6" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member6" items="${ members6 }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member6.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member6.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member6.memName }</h4>
													    <p> ${ member6.age }세/ ${ member6.memGender } / ${ member6.memPhone}</p>
													    <p>상품   : ${ member6.purchaseVo.purName }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member6.purchaseVo.purDatefrom }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member6.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member6.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member6.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member6.memberNo }finish7days">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>

								<div class="tab-pane" id="refundmembers">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword8">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount8" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck8"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete8" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member" items="${ members }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member.memName }</h4>
													    <p> ${ member.age }세/ ${ member.memGender } / ${ member.memPhone}</p>
													    <p>등록일 : ${ member.memVisitDate }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member.memVisitDate }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }refundmembers">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="stopmembers">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword" id="keyword9">
											<button class="btn" type="button"><i class="icon-search"></i></button>
											<!-- <a class="btn btn-small" href="#"><i class="icon-search"></i></a> -->
										</div>
									</fieldset>
									
									<fieldset>
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
										
										<select name="search_expire" data-function="search" style="width: auto;">
										<option >검색조건 선택</option>
										<option value="search_service_expire">이용권 만료일 검색</option>
										<option value="search_locker_expire">락커 만료일 검색</option>
										<option value="search_visit_expire">방문 만료일 검색</option>
										</select>
									</fieldset>
									
									<hr>
									
									<fieldset>
									
									<div class="control-group" style="margin: 0px;">
									      		<h3 id="membercount9" class="control-label" style="margin: 10px; width: 65%; text-align: left;">${ countno }명의 회원 중 0명이 선택되었습니다.</h3>
									      		<div class="controls">
										      		<input type="checkbox" id ="allcheck9"> 전체 선택
										      		<a href="#" class="btn btn-primary" style="margin: 10px">SMS 보내기</a>
										      		<!-- <button class="btn btn-primary" style="margin: 10px">SMS 보내기</button> -->
										      		<!-- <button id="memberdelete" class="btn btn-danger">회원 삭제</button> -->
										      		<a id="memberdelete9" class="btn btn-danger">회원 삭제</a>
										      	</div>
									      	</div>
									      	<br>
									
											<c:forEach var="member" items="${ members }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" name="memberNo" value="${ member.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  
													  <c:forEach var="attach" items="${ member.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">${ member.memName }</h4>
													    <p> ${ member.age }세/ ${ member.memGender } / ${ member.memPhone}</p>
													    <p>등록일 : ${ member.memVisitDate }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member.memVisitDate }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
									      		<div class="overlay">
														<label class="checkbox inline">
								                           <input type="checkbox" class="membercheck" data-memberno="${ member.memberNo }"> 회원선택
								                        </label>
								                        <div class="inline">
															<a style="margin: 10px;" href="/team-project3/purchase/purSelect.action?memberno=${ member.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-primary"><i class="icon-shopping-cart"></i><span>상품판매</span> </a>
															<a href="/team-project3/member/memberdetail.action?memberno=${ member.memberNo }" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }stopmembers">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
							</div>
						  
						  
						</div>	
					</div> <!-- /widget-content -->
                  
         </div>
        
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
<div class="extra">
  <div class="extra-inner">
    <div class="container">
      <div class="row">
                    <div class="span3">
                        <h4>
                            About Free Admin Template</h4>
                        <ul>
                            <li><a href="javascript:;">EGrappler.com</a></li>
                            <li><a href="javascript:;">Web Development Resources</a></li>
                            <li><a href="javascript:;">Responsive HTML5 Portfolio Templates</a></li>
                            <li><a href="javascript:;">Free Resources and Scripts</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Support</h4>
                        <ul>
                            <li><a href="javascript:;">Frequently Asked Questions</a></li>
                            <li><a href="javascript:;">Ask a Question</a></li>
                            <li><a href="javascript:;">Video Tutorial</a></li>
                            <li><a href="javascript:;">Feedback</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Something Legal</h4>
                        <ul>
                            <li><a href="javascript:;">Read License</a></li>
                            <li><a href="javascript:;">Terms of Use</a></li>
                            <li><a href="javascript:;">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Open Source jQuery Plugins</h4>
                        <ul>
                            <li><a href="">Open Source jQuery Plugins</a></li>
                            <li><a href="">HTML5 Responsive Tempaltes</a></li>
                            <li><a href="">Free Contact Form Plugin</a></li>
                            <li><a href="">Flat UI PSD</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /extra-inner --> 
</div>
<!-- /extra -->
<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>. </div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script> 
<script src="/team-project3/resources/assets/js/excanvas.min.js"></script> 
<script src="/team-project3/resources/assets/js/chart.min.js" type="text/javascript"></script> 
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>
  
<script type="text/javascript">

$(function() {
	
	// 마지막에 입력 시 입력되게 한다.
    $("#phone3").change(function(){
    	var phone = $('#phone1').val()+'-'+$('#phone2').val()+'-'+$(this).val();
        $('#memPhone').val(phone);
    });

    /* $("#address1").change(function(){
    	var address = $(this).val();
        $('#memAddress').val(address);
    });
	
    $("#address2").change(function(){
    	var address = $('#address1').val();
    	var address2 = $(this).val();
    	
    	if(address2.length != 0){
    		address = address + '(' + $(this).val() + ')';
    	}
    	
        $('#memAddress').val(address);
    }); */
    
    
    $("#sample6_extraAddress").change(function(){
    	var address = $('#sample6_postcode').val()+' '+$('#sample6_address').val()+','+$(this).val();
        $('#memAddress').val(address);
    });
	
    $("#sample6_detailAddress").change(function(){
    	var address = $('#sample6_postcode').val()+' '+$('#sample6_address').val();
    	var address2 = $(this).val();
    	
    	if(address2.length != 0){
    		address = address+', '+$(this).val();
    		$('#memAddress').val(address+$('#sample6_extraAddress').val());
    	}else{
    		$('#memAddress').val(address+','+$('#sample6_extraAddress').val());
    	}
    });
	
	$('#signup').on('click', function(event) {
		var content = $('#age').val();
		var num = 0;
		if(content.length == 0){
			$('#age').val(num);
		}
		
		//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
		//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
		
		var data = $('#membersignupform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
		
		$.ajax({
			"url": "membersignup.action",
			"type": "POST",
			"data": data,
			"success": function(data, status, xhr) {
				alert('회원을 등록했습니다.');
					
				location.href="/team-project3/member/memberlist.action"
			},
			"error": function(xhr, status, err) {
				alert('회원 등록 실패');
			}
		});
	}); 
	
	$('#signupsell').on('click', function(event) {
		var content = $('#age').val();
		var num = 0;
		if(content.length == 0){
			$('#age').val(num);
		}	
		
			//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
			//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
			
			var data = $('#membersignupform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
			
			$.ajax({
				"url": "membersignup.action",
				"type": "POST",
				"data": data,
				"success": function(data, status, xhr) {
					alert('회원을 등록했습니다.');
					location.href="/team-project3/purchase/purSelect.action?memberno="+data+"&centerno=${ loginuser.centerNo }";
				},
				"error": function(xhr, status, err) {
					alert('회원 등록 실패');
				}
			});
		}); 
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	$(document).on('mousedown', function() {
	  // Code here
	});
	
	$("#keyword").on('keyup', function() {
			var k = $(this).val();
			$('#allmembers').find(".span3").hide();
			var temp = $('#allmembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});

		var count = 0;
		$('#allmembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count = count + 1;
				var message = '${ countno }명의 회원 중 ' + count + '명이 선택되었습니다.';
				$('#membercount').text(message);
				$('#member' + memberno + "allmembers").css('opacity', '1');
			} else {
				count = count - 1;
				var message = '${ countno }명의 회원 중 ' + count + '명이 선택되었습니다.';
				$('#membercount').text(message);
				$('#member' + memberno + "allmembers").css('opacity', '0');
			}
		});

		$('#allcheck').on('click', function(event) {
			if ($(this).prop('checked')) {
				count = ${ countno };
				var message = '${ countno }명의 회원 중 ' + count + '명이 선택되었습니다.';
				$('#membercount').text(message);
				$('#allmembers').find('.overlay2').css('opacity', '1');
				$('#allmembers').find('.membercheck').prop('checked', true);
			} else {
				count = 0;
				var message = '${ countno }명의 회원 중 ' + count + '명이 선택되었습니다.';
				$('#membercount').text(message);
				$('#allmembers').find('.overlay2').css('opacity', '0');
				$('#allmembers').find('.membercheck').prop('checked', false);
			}
		});

		$('#memberdelete')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#allmembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		////////////////////////////////////////////////////////////////////////
		$("#keyword2").on('keyup', function() {
			var k = $(this).val();
			$('#nopaymembers').find(".span3").hide();
			var temp = $('#nopaymembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count1 = 0;
		$('#nopaymembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count1 = count1 + 1;
				var message = '${ countno }명의 회원 중 ' + count1 + '명이 선택되었습니다.';
				$('#membercount2').text(message);
				$('#member' + memberno + "nopaymembers").css('opacity', '1');
			} else {
				count1 = count1 - 1;
				var message = '${ countno }명의 회원 중 ' + count1 + '명이 선택되었습니다.';
				$('#membercount2').text(message);
				$('#member' + memberno + "nopaymembers").css('opacity', '0');
			}
		});
		$('#allcheck2').on('click', function(event) {
			if ($(this).prop('checked')) {
				count1 = ${countno2};
				var message = '${ countno }명의 회원 중 ' + count1 + '명이 선택되었습니다.';
				$('#membercount2').text(message);
				$('#nopaymembers').find('.overlay2').css('opacity', '1');
				$('#nopaymembers').find('.membercheck').prop('checked', true);
			} else {
				count1 = 0;
				var message = '${ countno }명의 회원 중 ' + count1 + '명이 선택되었습니다.';
				$('#membercount2').text(message);
				$('#nopaymembers').find('.overlay2').css('opacity', '0');
				$('#nopaymembers').find('.membercheck').prop('checked', false);
			}
		});

		$('#memberdelete2')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#nopaymembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		///////////////////////////////////////////////////////////////////////////////
		$("#keyword3").on('keyup', function() {
			var k = $(this).val();
			$('#uesmembers').find(".span3").hide();
			var temp = $('#uesmembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count2 = 0;
		$('#uesmembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count2 = count2 + 1;
				var message = '${ countno }명의 회원 중 ' + count2 + '명이 선택되었습니다.';
				$('#membercount3').text(message);
				$('#member' + memberno + "uesmembers").css('opacity', '1');
			} else {
				count2 = count2 - 1;
				var message = '${ countno }명의 회원 중 ' + count2 + '명이 선택되었습니다.';
				$('#membercount3').text(message);
				$('#member' + memberno + "uesmembers").css('opacity', '0');
			}
		});
		$('#allcheck3').on('click', function(event) {
			if ($(this).prop('checked')) {
				count2 = ${ countno3 };
				var message = '${ countno }명의 회원 중 ' + count2 + '명이 선택되었습니다.';
				$('#membercount3').text(message);
				$('#uesmembers').find('.overlay2').css('opacity', '1');
				$('#uesmembers').find('.membercheck').prop('checked', true);
			} else {
				count2 = 0;
				var message = '${ countno }명의 회원 중 ' + count2 + '명이 선택되었습니다.';
				$('#membercount3').text(message);
				$('#uesmembers').find('.overlay2').css('opacity', '0');
				$('#uesmembers').find('.membercheck').prop('checked', false);
			}
		});

		$('#memberdelete3')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#uesmembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		//////////////////////////////////////////////////////////////////////////////////
		$("#keyword4").on('keyup', function() {
			var k = $(this).val();
			$('#finishmembers').find(".span3").hide();
			var temp = $('#finishmembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count3 = 0;
		$('#finishmembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count3 = count3 + 1;
				var message = '${ countno }명의 회원 중 ' + count3 + '명이 선택되었습니다.';
				$('#membercount4').text(message);
				$('#member' + memberno + "finishmembers").css('opacity', '1');
			} else {
				count3 = count3 - 1;
				var message = '${ countno }명의 회원 중 ' + count3 + '명이 선택되었습니다.';
				$('#membercount4').text(message);
				$('#member' + memberno + "finishmembers").css('opacity', '0');
			}
		});
		$('#allcheck4').on(
				'click',
				function(event) {
					if ($(this).prop('checked')) {
						count3 = ${countno4};
						var message = '${ countno }명의 회원 중 ' + count3
								+ '명이 선택되었습니다.';
						$('#membercount4').text(message);
						$('#finishmembers').find('.overlay2').css('opacity',
								'1');
						$('#finishmembers').find('.membercheck').prop(
								'checked', true);
					} else {
						count3 = 0;
						var message = '${ countno }명의 회원 중 ' + count3
								+ '명이 선택되었습니다.';
						$('#membercount4').text(message);
						$('#finishmembers').find('.overlay2').css('opacity',
								'0');
						$('#finishmembers').find('.membercheck').prop(
								'checked', false);
					}
				});

		$('#memberdelete4')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#finishmembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		//////////////////////////////////////////////////////////////////////////////////
		$("#keyword5").on('keyup', function() {
			var k = $(this).val();
			$('#finish3days').find(".span3").hide();
			var temp = $('#finish3days').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count4 = 0;
		$('#finish3days').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count4 = count4 + 1;
				var message = '${ countno }명의 회원 중 ' + count4 + '명이 선택되었습니다.';
				$('#membercount5').text(message);
				$('#member' + memberno + "finish3days").css('opacity', '1');
			} else {
				count4 = count4 - 1;
				var message = '${ countno }명의 회원 중 ' + count4 + '명이 선택되었습니다.';
				$('#membercount5').text(message);
				$('#member' + memberno + "finish3days").css('opacity', '0');
			}
		});
		$('#allcheck5').on('click', function(event) {
			if ($(this).prop('checked')) {
				count4 = ${countno5};
				var message = '${ countno }명의 회원 중 ' + count4 + '명이 선택되었습니다.';
				$('#membercount5').text(message);
				$('#finish3days').find('.overlay2').css('opacity', '1');
				$('#finish3days').find('.membercheck').prop('checked', true);
			} else {
				count4 = 0;
				var message = '${ countno }명의 회원 중 ' + count4 + '명이 선택되었습니다.';
				$('#membercount5').text(message);
				$('#finish3days').find('.overlay2').css('opacity', '0');
				$('#finish3days').find('.membercheck').prop('checked', false);
			}
		});

		$('#memberdelete5')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#finish3days').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		//////////////////////////////////////////////////////////////////////////////////
		$("#keyword6").on('keyup', function() {
			var k = $(this).val();
			$('#finish7days').find(".span3").hide();
			var temp = $('#finish7days').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count5 = 0;
		$('#finish7days').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count5 = count5 + 1;
				var message = '${ countno }명의 회원 중 ' + count5 + '명이 선택되었습니다.';
				$('#membercount6').text(message);
				$('#member' + memberno + 'finish7days').css('opacity', '1');
			} else {
				count5 = count5 - 1;
				var message = '${ countno }명의 회원 중 ' + count5 + '명이 선택되었습니다.';
				$('#membercount6').text(message);
				$('#member' + memberno + 'finish7days').css('opacity', '0');
			}
		});
		$('#allcheck6').on('click', function(event) {
			if ($(this).prop('checked')) {
				count5 = ${countno6};
				var message = '${ countno }명의 회원 중 ' + count5 + '명이 선택되었습니다.';
				$('#membercount6').text(message);
				$('#finish7days').find('.overlay2').css('opacity', '1');
				$('#finish7days').find('.membercheck').prop('checked', true);
			} else {
				count5 = 0;
				var message = '${ countno }명의 회원 중 ' + count5 + '명이 선택되었습니다.';
				$('#membercount6').text(message);
				$('#finish7days').find('.overlay2').css('opacity', '0');
				$('#finish7days').find('.membercheck').prop('checked', false);
			}
		});

		$('#memberdelete6')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#finish7days').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		//////////////////////////////////////////////////////////////////////////////////
		$("#keyword7").on('keyup', function() {
			var k = $(this).val();
			$('#defaultmembers').find(".span3").hide();
			var temp = $('#defaultmembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count6 = 0;
		$('#defaultmembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count6 = count6 + 1;
				var message = '${ countno }명의 회원 중 ' + count6 + '명이 선택되었습니다.';
				$('#membercount7').text(message);
				$('#member' + memberno + 'defaultmembers').css('opacity', '1');
			} else {
				count6 = count6 - 1;
				var message = '${ countno }명의 회원 중 ' + count6 + '명이 선택되었습니다.';
				$('#membercount7').text(message);
				$('#member' + memberno + 'defaultmembers').css('opacity', '0');
			}
		});
		$('#allcheck7').on(
				'click',
				function(event) {
					if ($(this).prop('checked')) {
						count6 = $
						{
							countno
						}
						;
						var message = '${ countno }명의 회원 중 ' + count6
								+ '명이 선택되었습니다.';
						$('#membercount7').text(message);
						$('#defaultmembers').find('.overlay2').css('opacity',
								'1');
						$('#defaultmembers').find('.membercheck').prop(
								'checked', true);
					} else {
						count6 = 0;
						var message = '${ countno }명의 회원 중 ' + count6
								+ '명이 선택되었습니다.';
						$('#membercount7').text(message);
						$('#defaultmembers').find('.overlay2').css('opacity',
								'0');
						$('#defaultmembers').find('.membercheck').prop(
								'checked', false);
					}
				});

		$('#memberdelete7')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#defaultmembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		//////////////////////////////////////////////////////////////////////////////////
		$("#keyword8").on('keyup', function() {
			var k = $(this).val();
			$('#refundmembers').find(".span3").hide();
			var temp = $('#refundmembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count7 = 0;
		$('#refundmembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count7 = count7 + 1;
				var message = '${ countno }명의 회원 중 ' + count7 + '명이 선택되었습니다.';
				$('#membercount8').text(message);
				$('#member' + memberno + 'refundmembers').css('opacity', '1');
			} else {
				count7 = count7 - 1;
				var message = '${ countno }명의 회원 중 ' + count7 + '명이 선택되었습니다.';
				$('#membercount8').text(message);
				$('#member' + memberno + 'refundmembers').css('opacity', '0');
			}
		});
		$('#allcheck8').on(
				'click',
				function(event) {
					if ($(this).prop('checked')) {
						count7 = $
						{
							countno
						}
						;
						var message = '${ countno }명의 회원 중 ' + count7
								+ '명이 선택되었습니다.';
						$('#membercount8').text(message);
						$('#refundmembers').find('.overlay2').css('opacity',
								'1');
						$('#refundmembers').find('.membercheck').prop(
								'checked', true);
					} else {
						count7 = 0;
						var message = '${ countno }명의 회원 중 ' + count7
								+ '명이 선택되었습니다.';
						$('#membercount8').text(message);
						$('#refundmembers').find('.overlay2').css('opacity',
								'0');
						$('#refundmembers').find('.membercheck').prop(
								'checked', false);
					}
				});

		$('#memberdelete8')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#refundmembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
		//////////////////////////////////////////////////////////////////////////////////
		$("#keyword9").on('keyup', function() {
			var k = $(this).val();
			$('#stopmembers').find(".span3").hide();
			var temp = $('#stopmembers').find("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		});
		
		var count8 = 0;
		$('#stopmembers').on('click', '.membercheck', function(event) {
			var memberno = $(this).attr('data-memberno');
			if ($(this).prop('checked')) {
				count8 = count8 + 1;
				var message = '${ countno }명의 회원 중 ' + count8 + '명이 선택되었습니다.';
				$('#membercount9').text(message);
				$('#member' + memberno + 'stopmembers').css('opacity', '1');
			} else {
				count8 = count8 - 1;
				var message = '${ countno }명의 회원 중 ' + count8 + '명이 선택되었습니다.';
				$('#membercount9').text(message);
				$('#member' + memberno + 'stopmembers').css('opacity', '0');
			}
		});
		$('#allcheck9').on('click', function(event) {
			if ($(this).prop('checked')) {
				count8 = $
				{
					countno
				}
				;
				var message = '${ countno }명의 회원 중 ' + count8 + '명이 선택되었습니다.';
				$('#membercount9').text(message);
				$('#stopmembers').find('.overlay2').css('opacity', '1');
				$('#stopmembers').find('.membercheck').prop('checked', true);
			} else {
				count8 = 0;
				var message = '${ countno }명의 회원 중 ' + count8 + '명이 선택되었습니다.';
				$('#membercount9').text(message);
				$('#stopmembers').find('.overlay2').css('opacity', '0');
				$('#stopmembers').find('.membercheck').prop('checked', false);
			}
		});

		$('#memberdelete9')
				.on(
						'click',
						function(event) {
							var memberArray = new Array();
							$('#stopmembers').find('.membercheck').each(
									function() {
										if ($(this).is(':checked')) {
											memberArray.push($(this).attr(
													'data-memberno'));
										}
									});

							if (memberArray.length == 0) {
								alert("선택된 회원이 없습니다.");
							} else {
								alert(memberArray);
								//alert("삭제할 회원이 있다!!.");
								if (confirm("삭제하시겠습니까?") == true) { //확인
									$
											.ajax({
												"url" : "memberdelete.action",
												"type" : "POST",
												"data" : {
													0 : 0,
													memberArray : memberArray
												},
												"success" : function(data,
														status, xhr) {
													if (data === "success") {
														alert('회원을 삭제했습니다.');
													} else {
														alert('회원 삭제 실패');
													}

													location.href = "/team-project3/member/memberlist.action"
												},
												"error" : function(xhr, status,
														err) {
													alert('회원 등록 실패');
												}
											});

									memberArray = new Array();
								} else { //취소
									location.reload(true);
								}
							}
						});
	});
</script>

</body>
</html>

