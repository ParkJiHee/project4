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
                            <input type="radio" name="memGender" value="m" checked="checked"/> 남성
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memGender" value="w"/> 여성
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
						<input type="text" id="address1" class="span3 m-wrap" placeholder="주소를 입력하세요">
						<input type="text" id="address2" class="span3 m-wrap" placeholder="상세주소 입력">
						<input type="hidden" name="memAddress" id="memAddress"/>
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
						  <li class="active"><a href="#allmembers" data-toggle="tab">전체 회원(${ countno })</a></li>
						  <li><a href="#nopaymembers" data-toggle="tab">미결제 회원</a></li>
						  <li><a href="#uesmembers" data-toggle="tab">이용 회원</a></li>
						  <li><a href="#finishmembers" data-toggle="tab">만료 회원</a></li>
						  <li><a href="#finish3days" data-toggle="tab">만료 3일전</a></li>
						  <li><a href="#finish7days" data-toggle="tab">만료 7일전</a></li>
						  <li><a href="#defaultmembers" data-toggle="tab">미납 회원</a></li>
						  <li><a href="#refundmembers" data-toggle="tab">환불</a></li>
						  <li><a href="#stopmembers" data-toggle="tab">중지 회원</a></li>
						</ul>
						
						<br>
						
							<div class="tab-content">
								<div class="tab-pane active" id="allmembers">		
								<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
									
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
												
												<div class="overlay2" id="member${ member.memberNo }">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="nopaymembers">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="uesmembers">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="finishmembers">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="finish3days">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
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
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
													<div class = text><i class="icon-ok-circle"></i></div>
												</div>
												
								      		</div> <!-- /widget -->
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="defaultmembers">
									<form id="edit-profile" class="form-horizontal">	
									<fieldset class="nav pull-right">
										<div class="input-append">
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
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
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
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
											<input type="text" name="search" placeholder="Search by Keyword">
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
									
									<fieldset id = memberlistcheck>
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
															<a href="/team-project3/member/memberdetail.action" class="btn btn-success"><i class="icon-search"></i><span>상세보기</span> </a>
														</div>
												</div>
												
												<div class="overlay2" id="member${ member.memberNo }">
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

    $("#address1").change(function(){
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
	
	var count = 0;
	$('#memberlistcheck').on('click','.membercheck', function(event){
		var memberno = $(this).attr('data-memberno');
		if($(this).prop('checked')){
			count = count + 1;
			var message = '${ countno }명의 회원 중 '+count+'명이 선택되었습니다.';
			$('#membercount').text(message);
			$('#member'+memberno).css('opacity','1');
		}else{
			count = count - 1;
			var message = '${ countno }명의 회원 중 '+count+'명이 선택되었습니다.';
			$('#membercount').text(message);
			$('#member'+memberno).css('opacity','0');
		}
	});
	
	$('#allcheck').on('click',function(event){
		if($(this).prop('checked')){
			count = ${ countno };
			var message = '${ countno }명의 회원 중 '+count+'명이 선택되었습니다.';
			$('#membercount').text(message);
			$('.overlay2').css('opacity','1');
			$('.membercheck').prop('checked', true);
		}else{
			count = 0;
			var message = '${ countno }명의 회원 중 '+count+'명이 선택되었습니다.';
			$('#membercount').text(message);
			$('.overlay2').css('opacity','0');
			$('.membercheck').prop('checked', false);
		}
	});
	
	$('#memberdelete').on('click',function(event){
		var memberArray = new Array();
		$('.membercheck').each(function(){
			if($(this).is(':checked')){
				memberArray.push($(this).attr('data-memberno'));
			}
		});
		
		if(memberArray.length == 0){
			alert("선택된 회원이 없습니다.");
		}else{
			alert(memberArray);
			//alert("삭제할 회원이 있다!!.");
			if(confirm("삭제하시겠습니까?")==true){ //확인
				$.ajax({
					"url": "memberdelete.action",
					"type": "POST",
					"data": {0:0, memberArray:memberArray},
					"success": function(data, status, xhr) {
						if (data === "success") {
							alert('회원을 삭제했습니다.');
						} else {
							alert('회원 삭제 실패');
						}
						
						location.href="/team-project3/member/memberlist.action"
					},
					"error": function(xhr, status, err) {
						alert('회원 등록 실패');
					}
				});
				
				memberArray = new Array();
			}else{ //취소
				location.reload(true);
			}
		}
	});
	
});
</script>

</body>
</html>

