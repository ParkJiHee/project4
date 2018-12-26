<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Account Upgrade - Bootstrap Admin Template</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
    
    
    <link href="/team-project3/resources/assets/css/pages/plans.css" rel="stylesheet"> 

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

  </head>

<body>


<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<!-- <div class="subnavbar">

	<div class="subnavbar-inner">
	
		<div class="container">

			<ul class="mainnav">
			
				<li>
					<a href="index.jsp">
						<i class="icon-dashboard"></i>
						<span>Dashboard</span>
					</a>	    				
				</li>
				
				
				
				<li>
					<a href="reports.jsp">
						<i class="icon-list-alt"></i>
						<span>Reports</span>
					</a>    				
				</li>
				
				<li>					
					<a href="guidely.jsp">
						<i class="icon-facetime-video"></i>
						<span>App Tour</span>
					</a>  									
				</li>
                
                
                <li>					
					<a href="charts.jsp">
						<i class="icon-bar-chart"></i>
						<span>Charts</span>
					</a>  									
				</li>
                
                
                <li>					
					<a href="shortcodes.jsp">
						<i class="icon-code"></i>
						<span>Shortcodes</span>
					</a>  									
				</li>
				
				<li class="active dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>Drops</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                    	<li><a href="icons.jsp">Icons</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
                        <li><a href="pricing.jsp">Pricing Plans</a></li>
                        <li><a href="login.jsp">Login</a></li>
						<li><a href="signup.jsp">Signup</a></li>
						<li><a href="error.jsp">404</a></li>
                    </ul>    				
				</li>
			
			</ul>

		</div> /container
	
	</div> /subnavbar-inner

</div> /subnavbar -->
    
    
<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-th-large"></i>
						<h3>상품관리</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						
						<div class="pricing-plans plans-3">
							
						<div class="plan-container">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		1개월 이용권	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
					                	<span class="term">25만원</span>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	        
						        
						        
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">상세</a>
									<a href="javascript:;" class="btn">삭제</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					    
					    
					    <div class="plan-container">
					        <div class="plan green">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		Flex Package	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
					                	$5<span class="term">Per Agent</span>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	          
						        
						        <div class="plan-features">
									<ul>					
										<li><strong>Perfect</strong> for mid size companies with round the clock support </li>
										<li>Flexible package</li>
										<li>Email & Chat support</li>
										<li>Multimedia support</li>
									</ul>
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">Signup Now</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					    <div class="plan-container">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		Virtual Agent	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
					                	$30<span class="term">Per Month</span>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	       
						        
						        <div class="plan-features">
									<ul>
										<li><strong>Perfect</strong> for big companies with round the clock support and knwledge base.</li>
										<li>Easy to setup and use</li>
										<li>Mobile agent and multimedia support</li>
										<li>Universal inbox and cases</li>
									</ul>
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">Signup Now</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
							
					    </div> <!-- /plan-container -->
				
				
					</div> <!-- /pricing-plans -->
						
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->					
				
		    </div> <!-- /span12 -->     	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    


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
                </div> <!-- /row -->

		</div> <!-- /container -->

	</div> <!-- /extra-inner -->

</div> <!-- /extra -->


    
    
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				&copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->
    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>

<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>

  </body>

</html>

