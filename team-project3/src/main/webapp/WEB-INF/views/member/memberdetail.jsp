<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  
 <head>
    <meta charset="utf-8">
    <title>회원 상세 보기</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/pages/reports.css" rel="stylesheet">
    <style type="text/css">
    	.stats-box-all-info{
    		font-size: 15px;
    	}
    	ul.mylist, ol.mylist {
		    list-style: none;
		    margin: 0px;
		    padding: 0px;
		    max-width: 350px;
		    width: 100%;
		}
		
		ul.mylist li, ol.mylist li {
		    padding: 5px 0px 5px 5px;
		    margin-bottom: 5px;
		    border-bottom: 1px solid #efefef;
		    font-size: 12px;
		}
    </style>
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
	      
	      	<div class="info-box">
               <div class="row-fluid stats-box" style="margin: 10px 0px;">
                 
                 <div class="span4">
                    <div class="stats-box-all-info">				
                    	<img class="control-label" src="/team-project3/resources/assets/img/user.png"/>&emsp;&emsp;이름 : ${ member.memName }
						<div class="controls">
							<p>${ member.age }세 / ${ member.memBrith }</p>
						</div>				
					</div>
                    
                  </div>
                  
                  <div class="span4">
                    <div class="stats-box-all-info"><i class="icon-thumbs-up"  style="color:#F30"></i> 성별 : ${ member.memGender }</div>
                    <div class="stats-box-all-info"><i class="icon-map-marker"></i> 주소 : ${ member.memAddress }</div>
                  </div>
                  
                  <div class="span4">
                  <div class="stats-box-all-info"><i class="icon-phone"></i> 전화번호 : ${ member.memPhone }</div>
                    <div class="stats-box-all-info"><i class="icon-envelope-alt"></i> 이메일 : ${ member.memEail }</div>
                 </div>
             </div>
         </div>
         </div> 
         </div>           	
	  	  <!-- /row -->
	
	      <div class="row">
	      	
	      	<div class="span4">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>개인 정보</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="height:300px;">
							
							<ul class="mylist">
						        <li><span>회원 번호</span> &emsp;&emsp;&emsp;&emsp;${ member.memberNo }</li>
						        <li><span>첫 등록일</span> &emsp;&emsp;&emsp;&emsp;${ member.memVisitDate }</li>
						        <li><span>담당자</span> &emsp;&emsp;&emsp;&emsp;${ loginuser.cenId }</li>
						        <li><span>락커번호</span> &emsp;&emsp;&emsp;&emsp;ㅇㅇㅇㅇ</li>
						        <li><span>바코드번호</span> &emsp;&emsp;&emsp;&emsp;ㅇㅇㅇㅇ</li>
						    </ul>
						
						<br>
						<h3>메모</h3>
						<hr>
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span4 -->
	      	
	      	
	      	<div class="span4">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>입장 관리</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="overflow-y: scroll; height:300px;">
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
			      		
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span4 -->
		    
		    <div class="span4">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>이용권 목록</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="overflow-y: scroll; height:300px;">
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
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span4 -->
	      	
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
    

<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/excanvas.min.js"></script>
<script src="/team-project3/resources/assets/js/chart.min.js" type="text/javascript"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>

<script>

	</script>


  </body>

</html>

