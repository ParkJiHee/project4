<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Dashboard - Bootstrap Admin Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="memberlist" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->


<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        
        <div class="span12">
                  
                  <div class="widget-content">
						
						
						
						<div class="tabbable">
						<ul class="nav nav-tabs">
						  <li><a href="#formcontrols" data-toggle="tab">전체 회원</a></li>
						  <li><a href="#jscontrols" data-toggle="tab">미결제 회원</a></li>
						  <li class="active"><a href="#formcontrols" data-toggle="tab">이용 회원</a></li>
						  <li><a href="#formcontrols" data-toggle="tab">만료 회원</a></li>
						  <li><a href="#formcontrols" data-toggle="tab">만료 3일전</a></li>
						  <li><a href="#formcontrols" data-toggle="tab">만료 7일전</a></li>
						  <li><a href="#formcontrols" data-toggle="tab">미납 회원</a></li>
						  <li><a href="#formcontrols" data-toggle="tab">환불</a></li>
						  <li><a href="#formcontrols" data-toggle="tab">중지 회원</a></li>
						</ul>
						
						<br>
						
							<div class="tab-content">
								<div class="tab-pane active" id="formcontrols">
								
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
										
										<div class="control-group">											
											<label class="control-label" for="username">Username</label>
											<div class="controls">
												<input type="text" class="span6 disabled" id="username" value="Example" disabled>
												<p class="help-block">Your username is for logging in and cannot be changed.</p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
											
										 <br />
										
			<div class="span3">
	      		
	      		<div class="widget">
	      			
	      			<div class="widget-content">
	      				
			      		<h1>3 Columns</h1>
			      		
			      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
			      		
		      		</div> <!-- /widget-content -->
		      		
	      		</div> <!-- /widget -->
	      		
      		</div> <!-- /span3 -->
      		 	
	      	
	      	<div id="target-4" class="span3">
	      		
	      		<div class="widget">
	      			
	      			<div class="widget-content">
	      				
			      		<h1>3 Columns</h1>
			      		
			      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
			      		
		      		</div> <!-- /widget-content -->
		      		
	      		</div> <!-- /widget -->
	      		
      		</div> <!-- /span3 -->
      		 	
	      	
	      	<div class="span3">
	      		
	      		<div class="widget">
	      			
	      			<div class="widget-content">
	      				
			      		<h1>3 Columns</h1>
			      		
			      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
			      		
		      		</div> <!-- /widget-content -->
		      		
	      		</div> <!-- /widget -->
	      		
      		</div> <!-- /span3 -->
      		 	
	      	
	      	<div class="span3">
	      		
	      		<div class="widget">
	      			
	      			<div class="widget-content">
	      				
			      		<h1>3 Columns</h1>
			      		
			      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
			      		
		      		</div> <!-- /widget-content -->
		      		
	      		</div> <!-- /widget -->
	      		
      		</div> <!-- /span3 -->
										
										
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="jscontrols">
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
<script language="javascript" type="text/javascript" src="/team-project3/resources/assets/js/full-calendar/fullcalendar.min.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script> 

</body>
</html>

