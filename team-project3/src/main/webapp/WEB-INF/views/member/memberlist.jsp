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
</style>

</head>
<body>

<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="memberlist" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="top: 30%;">
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
						<input type="text" name="age" id="age" class="span1 m-wrap" placeholder="나이 입력">
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
					<label class="control-label" for="memEail">이메일</label>
					<div class="controls">
						<input type="text" name="memEail" id="memEail" class="span3 m-wrap">
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
						  <li class="active"><a href="#allmembers" data-toggle="tab">전체 회원</a></li>
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
									
									<fieldset>
											<c:forEach var="member" items="${ members }">
										<div class="span3">
								      		
								      		<div class="widget">
							
								      			<div class="widget-content">
								      			<input type="hidden" id="memberNo" value="${ member.memberNo }"/>
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
									      		
								      		</div> <!-- /widget -->
								      		
							      		</div> <!-- /span3 -->
										</c:forEach>
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="nopaymembers">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
										                                          
											<div class="control-group">
												<label class="control-label">Alerts</label>
												<div class="controls">
													 <div class="alert">
                                              <button type="button" class="close" data-dismiss="alert">&times;</button>
                                              <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                            </div>
                                            
                                            
                                                <div class="alert alert-success">
                                                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                  <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                                </div>
                                            
                                                     
                                                     <div class="alert alert-info">
                                              <button type="button" class="close" data-dismiss="alert">&times;</button>
                                              <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                            </div>
                                            		 
                                                     
                                                     
                                                     	
                                            
                                            
                                            		 
                                                     <div class="alert alert-block">
                                                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                      <h4>Warning!</h4>
                                                      Best check yo self, you're not...
                                                    </div>
												</div> <!-- /controls -->	
                                                
                                                
                                                
                                                
                                                
											</div> <!-- /control-group -->
                                            
                                            
                                            
                                            
                                            <div class="control-group">
												<label class="control-label">Progress Bar</label>
												<div class="controls">
													 <div class="progress">
                                                      <div class="bar" style="width: 60%;"></div>
                                                    </div>
                                                    
                                                    
                                                    <div class="progress progress-striped">
                                                      <div class="bar" style="width: 20%;"></div>
                                                    </div>
                                                    
                                                    
                                                    <div class="progress progress-striped active">
                                                      <div class="bar" style="width: 40%;"></div>
                                                    </div>
												</div> <!-- /controls -->	
											</div> <!-- /control-group -->
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            <div class="control-group">
												<label class="control-label">Accordion</label>
												<div class="controls">
                                                
													 <div class="accordion" id="accordion2">
                                                      <div class="accordion-group">
                                                        <div class="accordion-heading">
                                                          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                                            Collapsible Group Item #1
                                                          </a>
                                                        </div>
                                                        <div id="collapseOne" class="accordion-body collapse in">
                                                          <div class="accordion-inner">
                                                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="accordion-group">
                                                        <div class="accordion-heading">
                                                          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                                            Collapsible Group Item #2
                                                          </a>
                                                        </div>
                                                        <div id="collapseTwo" class="accordion-body collapse">
                                                          <div class="accordion-inner">
                                                            Anim pariatur cliche...
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
												</div> <!-- /controls -->	
											</div> <!-- /control-group -->
                                            
                                            
                                            
                                            
                                            
                                            
                                            <div class="control-group">
												<label class="control-label">Progress Bar</label>
												<div class="controls">
													 <!-- Button to trigger modal -->
                                                    <a href="#myModal" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
                                                     
                                                    <!-- Modal -->
                                                    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                        <h3 id="myModalLabel">Thank you for visiting EGrappler.com</h3>
                                                      </div>
                                                      <div class="modal-body">
                                                        <p>One fine body…</p>
                                                      </div>
                                                      <div class="modal-footer">
                                                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                                        <button class="btn btn-primary">Save changes</button>
                                                      </div>
                                                    </div>
												</div> <!-- /controls -->	
											</div> <!-- /control-group -->
                                            
                                         





                                            
                                            
                                            
                                            
                                            
                                          
                                            
                                            
                                            
                                            
                                             <div class="control-group">
												<label class="control-label">Social Buttons</label>
												<div class="controls">
													 <button class="btn btn-facebook-alt"><i class="icon-facebook-sign"></i> Facebook</button>
                                                    <button class="btn btn-twitter-alt"><i class="icon-twitter-sign"></i> Twitter</button>
                                                    <button class="btn btn-google-alt"><i class="icon-google-plus-sign"></i> Google+</button>
                                                    <button class="btn btn-linkedin-alt"><i class="icon-linkedin-sign"></i> Linked In</button>
                                                    <button class="btn btn-pinterest-alt"><i class="icon-pinterest-sign"></i> Pinterest</button>
                                                    <button class="btn btn-github-alt"><i class="icon-github-sign"></i> Github</button>
												</div> <!-- /controls -->	
											</div> <!-- /control-group -->
											
											<br />
											
											<div class="form-actions">
												<button type="submit" class="btn btn-primary">Save</button> <button class="btn">Cancel</button>
                                                <button class="btn btn-info">Info</button>
                                                <button class="btn btn-danger">Danger</button>
                                                <button class="btn btn-warning">Warning</button>
                                                <button class="btn btn-invert">Invert</button>
                                                <button class="btn btn-success">Success</button>
											</div>
										</fieldset>
									</form>
								</div>
								
								<div class="tab-pane" id="uesmembers">
									<form id="edit-profile3" class="form-horizontal">	
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
									
									<c:forEach var="member" items="${ members }">
									<fieldset>
											
										<div class="span3">
								      		
								      		<div class="widget">
								      			
								      			<div class="widget-content">
								      			<input type="hidden" id="memberNo" value="${ member.memberNo }"/>
								      			<div class="media">
													  <div class="media-left">
													  <c:forEach var="attach" items="${ member.attachments }">
													    <img src="/team-project3/resources//member-upload/${ attach.savedFileName }" alt="" 
													    onerror="this.src = '/team-project3/resources/assets/img/user.png'"
													    class="media-object" style="width:60px">
													  </c:forEach>
													  </div>
													  <div class="media-body">
													    <h4 class="media-heading">3 Columns</h4>
													    <p> ${ member.age }세/ ${ member.memGender } / ${ member.memPhone}</p>
													    <p>등록일 : ${ member.memVisitDate }</p>	
											      		<p>만료일 : <fmt:formatDate value="${ member.memVisitDate }" pattern="yyyy년 MM월 dd일"/>
		                								</p>
											      		
													  </div>
												</div>
									      		</div> <!-- /widget-content -->
									      		
								      		</div> <!-- /widget -->
								      		
							      		</div> <!-- /span3 -->
										
									</fieldset>
								</c:forEach>
								</form>
								</div>
								
								<div class="tab-pane" id="finishmembers">
								</div>
								
								<div class="tab-pane" id="finish3days">
								</div>
								
								<div class="tab-pane" id="finish7days">
								</div>
								
								<div class="tab-pane" id="defaultmembers">
								</div>
								
								<div class="tab-pane" id="refundmembers">
								</div>
								
								<div class="tab-pane" id="stopmembers">
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
		
		//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
		//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
		
		var data = $('#membersignupform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
		
		$.ajax({
			"url": "membersignup.action",
			"type": "POST",
			"data": data,
			"success": function(data, status, xhr) {
				if (data === "success") {
					alert('회원을 등록했습니다.');
				} else {
					alert('회원 등록 실패');
				}
				
				location.href="/team-project3/member/memberlist.action"
			},
			"error": function(xhr, status, err) {
				alert('회원 등록 실패');
			}
		});
	}); 
	
	$('#signupsell').on('click', function(event) {
			
			//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
			//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
			
			var data = $('#membersignupform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
			
			$.ajax({
				"url": "membersignup.action",
				"type": "POST",
				"data": data,
				"success": function(data, status, xhr) {
					if (data === "success") {
						alert('회원을 등록했습니다.');
					} else {
						alert('회원 등록 실패');
					}
					
					var memberNo = parseInt($('#memberNo').val());
					location.href="/team-project3/purchase/purSelect.action?memberno="+(memberNo+1);
				},
				"error": function(xhr, status, err) {
					alert('회원 등록 실패');
				}
			});
		}); 
	
});
</script>

</body>
</html>

